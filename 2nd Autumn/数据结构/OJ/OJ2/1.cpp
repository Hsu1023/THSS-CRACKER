#include <cstdio>
#define nullptr NULL

class node{
public:
	int id;
	node *next;
	node *pre;
	node(int tempid, node *temppre = nullptr, node *tempnext = nullptr):
		id(tempid), pre(temppre), next(tempnext){}
};

int main(){
	int n, m, temp;
	scanf("%d%d", &n, &m);
	scanf("%d", &temp);
	node *newnode = new node(temp);
	newnode->pre = newnode->next = newnode;
	for(int i = 2; i <= n; i++){
		scanf("%d", &temp);
		node *p = newnode;
		newnode = new node(temp);
		int pass = m;
		int cnt = temp;
		while(true)
		{
			pass--;
			if(pass <= 0){
				newnode->next = p->next;
				newnode->pre = p;
				p->next->pre =newnode;
				p->next = newnode;
				break;
			}
			p = p->next;
		}
	}	
	node *keynode = newnode;
	while(true){
		printf("%d", newnode->id);
		if(newnode->pre == keynode)break;
		putchar(' ');
		newnode = newnode->pre;
	}
	newnode = keynode;
	while(true){
		
		if(newnode->next != keynode)
		{
			newnode = newnode->next;
			delete newnode->pre;
		}
		else
		{
			delete newnode;
			break;
		}
	}
	return 0;
}
