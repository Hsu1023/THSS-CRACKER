#include "Controller.h"
#include <iostream>
using namespace std;

void CController::run()
{
	while (true) {
		cout << ("*************************\n请输入两个整数\n");
		cin >> num1;
		if (num1.error | num2.error) { cout << "输入有误\n"; continue; }
		cin >> num2;
		if (num1.error | num2.error) { cout << "输入有误\n"; continue; }
		cout << num1 + num2 << endl;
		cout<< num1 - num2 << endl; 
		cout << ("*************************\n");
	}
}