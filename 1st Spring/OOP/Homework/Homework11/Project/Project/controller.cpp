#include"controller.h"
#include<iostream>
#include<fstream>
using namespace std;

void CController::run()
{
	do
	{
		int op;
		cin >> op;
		switch (op)
		{
		case 1:
		{
			char filename[200];
			cin >> filename;
			ifstream fin(filename); 
			do
			{
				int student, grade;
				fin >> student >> grade;
				if (!fin.good())break;
				base.insert(student, grade);
			} while (!fin.eof());
			break;
		}
		case 2:
		{
			int student, grade;
			cin >> student >> grade;
			base.insert(student, grade);
			break;
		}
		case 3:
		{
			int student;
			cin >> student;
			base.erase(student);
			break;
		}
		case 4:
		{
			base.clear();
			break;
		}
		case 5:
		{
			int student, grade;
			cin >> student >> grade;
			base.change(student, grade);
			break;
		}
		case 6:
		{
			int student;
			cin >> student;
			base.inquery(student);
			break;
		}
		case 7:
		{
			base.show();
			break;
		}
		case 8:
		{
			char filename[200];
			cin >> filename;
			ofstream fout(filename);
			for (map<int, int>::iterator it = base.data.begin(); it != base.data.end(); it++)
			{
				fout << it->first << ' ' << it->second << endl;
			}
			break;
		}
		case -1:
		{
			return ;
		}
		}
	} while (!cin.eof());
}