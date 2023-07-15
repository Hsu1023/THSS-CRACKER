#include <iostream>
using namespace std;

// 模板函数，获得两个变量中较大的变量
template<class T> 
T Max(const T a, const T b) {
	return a > b ? a : b;
}

int main() {
	int i = 1;
	int j = 2;
	cout << "Max(i, j): " << Max(i, j) << endl; 
	double f1 = 11.1;
	double f2 = 22.2;
	cout << "Max(f1, f2): " << Max(f1, f2) << endl; 
	string s1 = "AAAAA";
	string s2 = "BBBBB";
	cout << "Max(s1, s2): " << Max(s1, s2) << endl; 
	return 0;
}