#include<cstdio>
#include<cstdlib>
#include<limits.h>

#include"temperature.h"

using namespace std;

struct tree
{
	int l, r,  size, val, rank;
	long long w;
	long long sum;
}tr[50000*125];

long long n;
int rt[50005];

long long querynum(long long x,long long k)
{
	if(x==0)return 0;
	if(tr[x].val<=k)return querynum(tr[x].r,k)+tr[tr[x].l].size+1;
	else return querynum(tr[x].l,k);
}
long long querysum(long long x,long long k)
{
	if(x==0)return 0;
	if(tr[x].val<=k)return querysum(tr[x].r,k)+tr[tr[x].l].sum+tr[x].w;
	else return querysum(tr[x].l,k);
}
void update(long long x)
{
	tr[x].size=tr[tr[x].l].size+tr[tr[x].r].size+1;
	tr[x].sum=tr[tr[x].l].sum+tr[tr[x].r].sum+tr[x].w;
}

void merge(int &ro, int l, int r)
{
	if(l==0||r==0)
	{
		ro=l+r;
		return;
	}
	if(tr[l].rank>tr[r].rank)
	{
		ro=l;
		merge(tr[ro].r,tr[ro].r,r);
	}
	else
	{
		ro=r;
		merge(tr[ro].l,l,tr[ro].l);
	}
	update(ro);
}
void split(int ro,int &l,int &r,int k)
{
	if(ro==0)
	{
		l=r=0;
		return;
	}
	if(tr[ro].val<=k)
	{
		l=ro;
		split(tr[ro].r,tr[ro].r,r,k);
	}
	else 
	{
		r=ro;
		split(tr[ro].l,l,tr[ro].l,k);
	}
	update(ro);
}
void makenode(int &ro,int val,int k)
{
	static int cnt=0;
	tr[++cnt].sum=val;
	tr[cnt].w=val;
	tr[cnt].val=k;
	tr[cnt].size=1;
	tr[cnt].l=tr[cnt].r=0;
	tr[cnt].rank=rand();
	int l=0,r=0;
	split(ro,l,r,k-1);
	merge(l,l,cnt);
	merge(ro,l,r);
}
void add(long long x,int y,int val)
{
	for(long long i=x;i<=50003;i+=(i&(-i)))makenode(rt[i],val,y);
}
long long seg_querysum(int x, int y)
{
	long long res=0;
	for(long long i=x;i;i-=(i&(-i)))
		res+=querysum(rt[i],y);
	return res;
}
long long seg_querynum(long long x, long long y)
{
	long long res=0;
	for(long long i=x;i;i-=(i&(-i)))
		res+=querynum(rt[i],y);
	return res;
}
long long xx[50005],yy[50005];
long long xxx[50005],yyy[50005];
struct node
{
	long long x,y;
	long long val;
}q[50005];
int cmp(const void* a,const void *b)
{
	long long temp=*(long long*)a-*(long long*)b;
	return temp>0?1:-1;
}
long long lower_bound(long long c[],long long l, long long r, long long key)
{
	while(l<=r){
		long long mid=(l+r)/2;
		if (c[mid]<key) l=mid+1;
		else r=mid-1;
	}
	return l;
}
long long upper_bound(long long c[],long long l,long long r,long long key)
{
	while(l<=r)
	{
		long long mid=l+((r-l)>>1);
		if(key>=c[mid]) l=mid+1;
		else r=mid-1;
	}
	return l;
}	
long long cntx=1;	
long long cnty=1; 
int getnum(long long x2, long long y2)
{
	int xx2=upper_bound(xxx,1,cntx,x2)-1;
	int yy2=upper_bound(yyy,1,cnty,y2)-1;
	return seg_querynum(xx2,yy2);
}
long long getsum(long long x2, long long y2)
{
	int xx2=upper_bound(xxx,1,cntx,x2)-1;
	int yy2=upper_bound(yyy,1,cnty,y2)-1;
	return seg_querysum(xx2,yy2);
}
int main()
{
	n = GetNumOfStation();
	for(long long i=1;i<=n;i++)
	{
		int  x,y,val;
		GetStationInfo(i-1, &x, &y, &val);
		q[i].x=x;q[i].y=y;q[i].val=val;
		xx[i]=q[i].x;yy[i]=q[i].y;
	}
	qsort(xx+1,n,sizeof (long long),cmp);
	qsort(yy+1,n,sizeof (long long),cmp);
	
	xx[0]=xxx[1]=-1LL+INT_MIN;
	for(long long i=1;i<=n;i++)
		if(xx[i]!=xx[i-1])xxx[++cntx]=xx[i];
	xxx[++cntx]=1LL+INT_MAX;

	yy[0]=yyy[1]=-1LL+INT_MIN;
	for(long long i=1;i<=n;i++)
		if(yy[i]!=yy[i-1])yyy[++cnty]=yy[i];
	yyy[++cnty]=1LL+INT_MAX;
	
	for(long long i=1;i<=n;i++)
	{
		long long ranx=lower_bound(xxx,1,cntx,q[i].x);
		long long rany=lower_bound(yyy,1,cnty,q[i].y);
		add(ranx,rany,q[i].val);
	}
	while(true)
	{
		int xx1,yy1,xx2,yy2;
		bool flag=GetQuery(&xx1,&yy1,&xx2,&yy2);
		long long x1=xx1,x2=xx2,y1=yy1,y2=yy2;
		if(flag==false)break;
		long long sum=getsum(x2,y2)-getsum(x1-1,y2)-getsum(x2,y1-1)+getsum(x1-1,y1-1);
		long long num=getnum(x2,y2)-getnum(x1-1,y2)-getnum(x2,y1-1)+getnum(x1-1,y1-1);
		if(num==0){Response(0);continue;}
		Response(sum/num);
	}
	return 0;
} 
