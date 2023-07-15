#ifndef INPUT_H
#define INPUT_H
#include<string>
using namespace std;

class CInput 
{
private:
	string str;
public:
	void read();
	int judge();
};
enum ERROR_CASE { DOT, LETTER, OVERF, MINUS, SPACE };
#endif