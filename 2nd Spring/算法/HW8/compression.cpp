#pragma pack(1)
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <cmath> 

using namespace std;

typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;
typedef unsigned long long ull;
typedef unsigned char uchar;

struct pixelInfo
{
	uchar b, g, r;
};
struct headerInfo
{
	ushort type;
	uint size;
	ushort reserved1;
	ushort reserved2;
	uint offbits;
	uint size2;
	uint width;
	uint height;
	ushort planes;
	ushort bitcount;
	uint compression;
	uint offbits2;
	uint pPerMeter1;
	uint pPerMeter2;
	uint colornums;
	uint colorimportant;
};

int h, w;
pixelInfo *pic;
headerInfo head;

bool readPic(FILE *fp)
{
	if(fp == NULL) return false;
	
	fread(&head, 1, sizeof (headerInfo), fp);
	
	if(head.type != 0x4d42) return false;
	if(head.bitcount != 24) return false;
	
	h = head.height;
	w = head.width;
	pic = new pixelInfo[h * w];
	for(int i = 0; i < h; i++)
	{
		for(int j = 0; j < w; j++) 
		{
			int t = i * w + j;
			fread(&pic[t].b, 1, sizeof (uchar), fp);
			fread(&pic[t].g, 1, sizeof (uchar), fp);
			fread(&pic[t].r, 1, sizeof (uchar), fp);
		}
		int tmp = (4 -((w * 3 )% 4)) % 4;
		char blk = 0;
		while(tmp) fread(&blk, 1, sizeof (uchar), fp), tmp--;
	}
	return true;
}
bool writePic(FILE *fp)
{
	if(fp == NULL) return false;
	
	
	head.size = h * (w * 3 + (4 -((w * 3 )% 4)) % 4) + 54;
	head.height = h;
	head.width = w;
	
	fwrite(&head, 1, sizeof (headerInfo), fp);
	for(int i = 0; i < h; i++)
	{
		for(int j = 0; j < w; j++) 
		{
			int t = i * w + j;
			fwrite(&pic[t].b, 1, sizeof (uchar), fp);
			fwrite(&pic[t].g, 1, sizeof (uchar), fp);
			fwrite(&pic[t].r, 1, sizeof (uchar), fp);
		}
		int tmp = (4 -((w * 3 )% 4)) % 4;
		char blk = 0;
		while(tmp) fwrite(&blk, 1, sizeof (uchar), fp), tmp--;
	}
	return true;
}

double grey(pixelInfo a)
{
	return (0.2989 * a.r + 0.5870 * a.g + 0.1140 * a.b) / 3;
}
void sobel_cal(double *sobel)
{

	for(int i = 1; i < h - 1; i++)
		for(int j = 1; j < w - 1; j++)
		{
			int t1 = (i + 1) * w + j - 1, t2 = (i + 1) * w + j, t3 = (i + 1) * w + j + 1;
			int t4 = i * w + j - 1, t5 = i * w + j, t6 = i * w + j + 1;
			int t7 = (i - 1) * w + j - 1, t8 = (i - 1) * w + j, t9 = (i - 1) * w + j + 1;
			double sobelX = - grey(pic[t1] )- 2 * grey(pic[t4]) - grey(pic[t7]) 
						 + grey(pic[t3]) + 2 * grey(pic[t6]) + grey(pic[t9]);
			double sobelY = - grey(pic[t1]) - 2 * grey(pic[t2]) - grey(pic[t3])
						 + grey(pic[t7]) + 2 * grey(pic[t8]) + grey(pic[t9]);
			sobel[t5] = sqrt(sobelX * sobelX + sobelY * sobelY);
		}
}

void dynamic_programming(int &a, int &b)
{
	//h - a w - b
	double *sobel;
	sobel = new double [a * b];
	sobel_cal(sobel);
	
	bool *tag;
	double *dp;
	int *pre;	
	
	dp = new double [a * b];
	tag = new bool [a * b];
	pre = new int [a * b];
	memset(pre, 0, sizeof (int) * a * b);
	memset(tag, 0, sizeof (bool) * a * b);
	memset(dp, 0x3f, sizeof (double) * a * b);
	for(int j = 0; j < b; j++) dp[j] = 0;
	for(int i = 1; i < a - 1; i++)//h
		for(int j = 1; j < b - 1; j++)//w
	{
		
		int t = i * b + j;
		dp[t] = dp[(i - 1) * b + j] + sobel[t];
		pre[t] = (i - 1) * b + j;
		if(j < b - 2 && dp[(i - 1) * b + j + 1] + sobel[t] < dp[t]) 
		{
			dp[t] = dp[(i - 1) * b + j + 1] + sobel[t];
			pre[t] = (i - 1) * b + j + 1;
		}
		if(j > 1 && dp[(i - 1) * b + j - 1] + sobel[t] < dp[t]) 
		{
			dp[t] = dp[(i - 1) * b + j - 1] + sobel[t];
			pre[t] = (i - 1) * b + j - 1;
		}
	}
	int key; 
	double mini = 0x3f3f3f3f;
	for(int i = 1; i < b - 1; i++)
	{
		if(mini > dp[(a - 2) * b + i])
		{
			mini = dp[(a - 2) * b + i];
			key = (a - 2) * b + i;
		}
	}
	tag[key + b] = true;
	for(int i = a - 1; i > 0; i--)
	{
		tag[key] = true;
		key = pre[key];
	}
	int cnt = 0;
	for(int i = 0; i < a ; i++)
	{
		for(int j = 0; j < b ; j++)
		{
			int t = i * b + j;
			if (tag[t]) continue;
			pic[cnt++] = pic[t];
		}
	}
	b--;
	delete []dp; delete []tag; delete []pre; delete []sobel;
}
void transposePic()
{
	pixelInfo *aux = new pixelInfo[h * w];
	memset(aux, 0 ,sizeof (pixelInfo) * h* w);
	for(int i = 0; i < h; i++)
		for(int  j = 0; j < w; j++)
		{
			int t1 = j * h + i;
			int t2 = i * w + j;
			aux[t1] = pic[t2];
		}
	for(int i = 0; i < h * w; i++)
			pic[i] = aux[i];
	delete []aux;
	swap(h,w);
}
void seam_carving()
{
	int pic_w = w, pic_h = h;
	for(int i = 0; i < pic_w / 2; i++)
		dynamic_programming(h ,w);
		
	transposePic();
	pic_w = w, pic_h = h;
	
	for(int i = 0; i < pic_w / 2; i++)dynamic_programming(h, w);
	
	transposePic();
}
bool readFilename(FILE *&fp, FILE *&fp_)
{
	char outName[100]{0}, fileName[100]{0};
	scanf("%s", fileName);
	char *pos = max(strstr(fileName, ".bmp"), strstr(fileName, ".BMP"));
	if(pos == NULL) return false;
	
	strncpy(outName, fileName, pos - fileName);
	strcpy(outName + strlen(outName), "_compressed.bmp");
	fp = fopen(fileName, "rb");
	fp_ = fopen(outName, "wb");
	return true;
}
int main()
{
	FILE *fp, *fp_;
	while(true)
	{ 
		printf("**************\n请输入24位BMP格式图片的地址，注意地址需以.bmp结尾:\n");
		if(!readFilename(fp, fp_))
		{
			printf("地址格式不正确，请重新输入！\n");
			continue;
		} 
		if(!readPic(fp))
		{
			printf("图片格式不正确，请重新输入！\n");
			continue;
		}
		printf("**************\n正在压缩中，请稍后...\n");
		seam_carving();
		if(!writePic(fp_))
		{
			printf("保存图片出现错误，请重试！\n");
			continue; 
		} 
		break;
	}
	printf("**************\n压缩成功！图片已保存在原目录下！\n**************\n"); 
	system("pause");
	return 0;
}
