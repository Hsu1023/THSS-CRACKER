#include"array.h"

void Carray::m_input()
{
	//cout << "请输入整数个数:";
	int n;
	cin >> n;
	//cout << "请输入"<<n<<"个整数："<<endl;
	for (int i = 0; i < n; i++)
	{
		int temp;
		cin >> temp;
		v.push_back(temp);
		s.insert(temp);
	}
}
void Carray::m_sort()
{
	sort(v.begin(), v.end());
	int sz = v.size();
	for (int i = 0; i < sz; i++)
		cout << v[i] << ' ';
	cout << endl;
}
void Carray::m_set()
{
	for (set<int>::iterator it = s.begin(); it != s.end(); it++)
	{
		cout << *it << ' ';
	}
	cout << endl;
}