#include "head.h" 

using namespace std;

int line_count,label_count;//����line��label 
string str[1000];//str��string���ͱ���ÿ�г�ʼ�������� 
map<long long,int>head_map,label_map;//head_map������Ӧָ�ÿ�е�һ���ַ����ͼĴ������ƣ����мĴ������Ʒֱ��Ӧ�����ţ�0Ϊ�±꣩+1��ָ���Ӧ-1;label_map��label��hashֵ��Ӧ��ָ��ı��
int reg[32];//�Ĵ���
bool reg_read[32];
bool reg_write[32];//����Ĵ�����д״̬ 
LABEL labels[1000];
vector<STRING>content[1000];//ÿ���и����ַ��ε�hashֵ

char Stack[4*1024*1024];//ջ�ռ� 
char Memory[4*1024*1024];//�ڴ�ռ� 
bool Memory_state[16];//�ڴ�ռ��д״̬ 
int top;//ջָ�� 
bool ifstack;//ջ�ռ��д״̬ 


int main()
{
	init();//��ʼ��  
	read();//��������
	execute();//���� 
	write();//д��                                               
	return 0;
}
