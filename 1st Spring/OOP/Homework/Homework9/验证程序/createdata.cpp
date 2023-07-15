#include<iostream>
#include<cstdlib>
#include<cstdio>
#include<ctime>

using namespace std;

int main()
{
	srand(time(0));
	int n=(rand()*rand())%100000+1;
	printf("%d\n",n);
	for(int i=0;i<n;i++)
	{
		printf("%d ",rand()%(n/5)-(n/10));
	}
	printf("\n1\n2\n3\n");
	return 0;
} 
