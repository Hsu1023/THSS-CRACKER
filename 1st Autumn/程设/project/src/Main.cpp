#include "head.h" 

using namespace std;

int line_count,label_count;//计数line和label 
string str[1000];//str用string类型保存每行初始读入数据 
map<long long,int>head_map,label_map;//head_map用来对应指令（每行第一段字符）和寄存器名称，其中寄存器名称分别对应于其编号（0为下标）+1，指令对应-1;label_map将label的hash值对应于指令的编号
int reg[32];//寄存器
bool reg_read[32];
bool reg_write[32];//保存寄存器读写状态 
LABEL labels[1000];
vector<STRING>content[1000];//每行中各个字符段的hash值

char Stack[4*1024*1024];//栈空间 
char Memory[4*1024*1024];//内存空间 
bool Memory_state[16];//内存空间读写状态 
int top;//栈指针 
bool ifstack;//栈空间读写状态 


int main()
{
	init();//初始化  
	read();//读入数据
	execute();//运行 
	write();//写入                                               
	return 0;
}
