#include"array.h"

void Carray::m_input()
{
	//cout << "��������������:";
	int n;
	cin >> n;
	//cout << "������"<<n<<"��������"<<endl;
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