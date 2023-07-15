#include <iostream>
using namespace std;
#include "IntegerSum.h"

int main(int argc, char* args[])
{
	SolveIntegerSum data;
	data.GetInputNumber();
	if(!data.inputerror)data.GetResult1();
	if(!data.inputerror)data.GetResult2();
	system("pause");
	return 0;
}