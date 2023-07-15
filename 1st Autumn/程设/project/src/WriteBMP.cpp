#include "head.h"
#pragma pack(1)

using namespace std;

extern int line_count,label_count;
extern string str[1000];
extern map<long long,int>head_map,label_map;
extern int reg[32];
extern bool reg_read[32];
extern bool reg_write[32];
extern LABEL labels[1000];
extern vector<STRING>content[1000];

extern char Stack[4*1024*1024];
extern char Memory[4*1024*1024];
extern bool Memory_state[16];
extern int top;
extern bool ifstack;


struct BMPheader
{
	char id1;
	char id2;
	int size;
	short zero1;
	short zero2;
	int offset;
}; //文件头 

struct DIBheader
{
	int length;
	int width;
	int height;
	short flag;
	short colors;
	int zero1;
	int pixel_length;
	int zero[4];
}; //位图信息头 

struct pixel
{
	char b, g, r;
}img[300][1000]; //RGB值 

void Draw(int width, int height, const char* filename, pixel img[][1000]) 
{
    BMPheader bh={'B', 'M', width*height+0x36 , 0, 0, 0x36};
	DIBheader dh={40, width, height, 1, 24, 0, width*height, 0, 0, 0, 0};
	FILE *fp = fopen(filename,"wb");  //文件指针 
    fwrite(&bh, 14, 1, fp);  
    fwrite(&dh, 40, 1, fp);
	fwrite(img, 3, width*height, fp);
	fclose(fp);
}  //画图函数 

int file_count=0;
void WriteBMP()
{
	for(int i=0; i<1000; i++)
		for(int j=0; j<300; j++)
	{
		img[j][i].b=0x0000ff;
		img[j][i].g=0x0000ff;
		img[j][i].r=0x0000ff;
	} //全涂白 
	
	for(int i=0; i<1000; i++)
	{
		if(i==50||i==130||i==210||i==290||i==370||i==450||i==530||i==610||i==690||i==730||i==770||i==810||i==850||i==950)
			for(int j=30; j<=270; j++)
			{
				img[j][i].b=0;
			    img[j][i].g=0;
			    img[j][i].r=0;
			}
	} //画竖线 
	for(int j=0; j<300; j++)
	{
	    if(j==30||j==270)
		    for(int i=50; i<=950; i++)
			{
				img[j][i].b=0;
			    img[j][i].g=0;
			    img[j][i].r=0;
			}
		if(j==90||j==150||j==210)
			for(int i=50; i<=850; i++)
			{
				img[j][i].b=0;
			    img[j][i].g=0;
			    img[j][i].r=0;
			}
	} //画横线 
	
	for(int k=0; k<32; k++)
	{
		int temp1=3-k/8, temp2=k%8;
		int le=temp2*80+50;
		int ri=le+80;
		int bl=temp1*60+30;
		int ab=bl+60;
		if(reg_read[k]&&reg_write[k]) 
	    for(int i=le+1; i<ri; i++)
	    for(int j=bl+1; j<ab; j++)
	    {
	    	img[j][i].b=255;
	    	img[j][i].g=0;
	    	img[j][i].r=255;
		}
	    if(!reg_read[k]&&reg_write[k]) 
	    for(int i=le+1; i<ri; i++)
	    for(int j=bl+1; j<ab; j++)
	    {
	    	img[j][i].b=0;
	    	img[j][i].g=0;
	    	img[j][i].r=255;
		}
	    if(reg_read[k]&&!reg_write[k]) 
	    for(int i=le+1; i<ri; i++)
	    for(int j=bl+1; j<ab; j++)
	    {
	    	img[j][i].b=255;
	    	img[j][i].g=0;
	    	img[j][i].r=0;
		}
	}
	
		
	
	for(int i=0;i<4;i++){
		if(Memory_state[i]){
			for(int y=269;y>210;y--){
				for(int x=691+i*40;x<730+i*40;x++){
					img[y][x].b=0;
				    img[y][x].g=255;
				    img[y][x].r=0;
				}
			}
		}	
	}
	for(int i=4;i<8;i++){
		if(Memory_state[i]){
			for(int y=209;y>150;y--){
				for(int x=691+(i-4)*40;x<730+(i-4)*40;x++){
					img[y][x].b=0;
				    img[y][x].g=255;
				    img[y][x].r=0;
				}
			}
		}	
	}
	for(int i=8;i<12;i++){
		if(Memory_state[i]){
			for(int y=149;y>90;y--){
				for(int x=691+(i-8)*40;x<730+(i-8)*40;x++){
					img[y][x].b=0;
				    img[y][x].g=255;
				    img[y][x].r=0;
					
				}
			}
		}	
	}
	for(int i=12;i<16;i++){
		if(Memory_state[i]){
			for(int y=89;y>30;y--){
				for(int x=691+(i-12)*40;x<730+(i-12)*40;x++){
						img[y][x].b=0;
					    img[y][x].g=255;
					    img[y][x].r=0;
				}
			}
		}	
	}

	if(ifstack){
		for(int y=269;y>30;y--){
			for(int x=851;x<950;x++){
						img[y][x].b=0;
					    img[y][x].g=192;
					    img[y][x].r=255;
				}
			}
		}
	//确定输出的文件名 
	string filename;
	stringstream ss;
	ss<<(++file_count);
	ss>>filename;
	filename="output\\"+filename+".bmp";
	Draw(1000, 300 , &filename[0], img);
	//system(&filename[0]);
}
