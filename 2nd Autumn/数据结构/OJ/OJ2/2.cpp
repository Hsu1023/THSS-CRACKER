#include <cstdio>
#include <cstdlib>

int n, m;
int a[1600005];
int stack[1600005];
bool operate[1600000 << 1 + 5]; // 0 for push, 1 for pop
int point, operatecnt;

int read()
{
	int x = 0; char ch = getchar();
	while(ch > '9' || ch < '0') ch = getchar();
	while(ch >= '0' && ch <= '9')x = (x<<3) + (x<<1) + ch - '0', ch = getchar();
	return x;
}
int main()
{
	scanf("%d%d", &n, &m);
	for(int i = 1; i <= n; i++)a[i] = read();
	
	bool flag = true;
	int want = n;
	for(int i = n; i >= 1; i--)
	{
		if(point >= m){
			flag=false;
			break;
		}
		
		stack[++point] = a[i];
		operate[++operatecnt] = 0;
		
		if(a[i] == want)
		{
			while(point >= 1)
			{
				if(point > 1 && stack[point - 1] != stack[point] - 1)
				{
					point--;
					operate[++operatecnt] = 1;
					break;
				}	
				point--;
				operate[++operatecnt] = 1;
			}
			want = stack[point + 1] - 1;
		}
	}
	if(flag == false || point > 0)printf("No\n");
	else 
	{
		for(int i = operatecnt; i >= 1; i--)
		{
			printf(operate[i]?"push\n":"pop\n");
		}
	}
	return 0;
}
