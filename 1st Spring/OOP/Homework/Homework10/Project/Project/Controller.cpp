#include "Controller.h"
#include <iostream>
using namespace std;

void CController::run()
{
	while (true) {
		cout << ("*************************\n��������������\n");
		cin >> num1;
		if (num1.error | num2.error) { cout << "��������\n"; continue; }
		cin >> num2;
		if (num1.error | num2.error) { cout << "��������\n"; continue; }
		cout << num1 + num2 << endl;
		cout<< num1 - num2 << endl; 
		cout << ("*************************\n");
	}
}