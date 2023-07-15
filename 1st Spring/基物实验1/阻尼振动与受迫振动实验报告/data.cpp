#include<bits/stdc++.h>

using namespace std;

int main()
{
	printf("请输入几个一组");
	int n;
	scanf("%d",&n);
	freopen("data.txt","r",stdin);
	freopen("modified_data.txt","w",stdout);
	int q=0;
	double temp;
	while(cin>>temp)
	{
		q++;
		cout<<temp;
		printf(q%n==0?"\\\\\n":"&"); 
	}
 } 
