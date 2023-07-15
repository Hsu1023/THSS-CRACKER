#include <string>
#include <cstdio>
#include <cstdlib>
#include <vector>
#include <map>
#include <iostream>

using namespace std;

map<char, int> charToInt;
map<int, char> intToChar;

//This function is targeted to the formula without '(' and ')' 

string Poland(string s, bool inverse)// inverse: 0 for Poland, 1 for inversePoland
{
	vector <string> nameList;
	vector <int> operatorList;
	int len = s.length();

// seperate names of variables and operators 
	int last = 0;
	string nowname;
	for (int i = 0; i < len; i++)
	{
		if (s[i] == '&' || s[i] == '|' || s[i] == '^' || s[i] == '~')
		{
			operatorList.push_back(charToInt[s[i]]);
			nowname = s.substr(last, i - last);
			if (inverse == true && nowname[0] == '!') {
				swap(nowname[0], nowname[nowname.size() - 1]);
			}
			nameList.push_back(nowname);
			last = i + 1;
		}
	}
	nowname = s.substr(last);
	if (inverse == true && nowname[0] == '!') {
		swap(nowname[0], nowname[nowname.size() - 1]);
	}
	nameList.push_back(nowname);

// change the order of variables and operators, each change means erasing one variable and one operator 
// The operator which has been delth with will be turned into int to avoid being dealt with repeatedly
	while (!operatorList.empty())
	{
		int nowop = 0x3f3f3f3f;
		int nowid = -1;
		for (int i = 0; i < operatorList.size(); i++)
		{
			if (nowop > operatorList[i])
			{
				nowop = operatorList[i];
				nowid = i;
			}
		}
		if (nowid == -1)break;
		if(inverse == false)
			nameList[nowid] = char(nowop + '0') + nameList[nowid] + nameList[nowid + 1];
		else 
			nameList[nowid] = nameList[nowid] + nameList[nowid + 1] + char(nowop + '0');
		nameList.erase(nameList.begin() + nowid + 1, nameList.begin() + nowid + 2);
		operatorList.erase(operatorList.begin() + nowid, operatorList.begin() + nowid + 1);
	}
	return nameList[0];
}
// Create functions which can map operator and its number
void init()
{
	intToChar[1] = '&';
	charToInt['&'] = 1;
	intToChar[2] = '|';
	charToInt['|'] = 2;
	intToChar[3] = '^';
	charToInt['^'] = 3;
	intToChar[4] = '~';
	charToInt['~'] = 4;
}
// This function is targeted to the formula with '(' and ')'  
// It analyzes the positions of '(' and ')' and then call Poland(string, bool)
void PolandSolve(string str, bool inverse)
{
	int len;
// For each loop, find out one pair of '(' and ')' 
	while (true)
	{
		int end = -1;
		len = str.length();
		for (int i = 0; i < len; i++)
		{
			if (str[i] == ')')
			{
				end = i;
				break;
			}
		}
		int start = 0;
		for (int i = end - 1; i >= 0; i--)
		{
			if (str[i] == '(')
			{
				start = i;
				break;
			}
		}
		string subs = str.substr(start + 1, end - start - 1);
		subs = Poland(subs, inverse);
		for (; start >= 1; start--)
		{
			if (str[start - 1] == '!')
			{
				if (inverse == false)subs = "!" + subs;
				else subs = subs + "!";
			}
			else break;
		}
		str = str.substr(0, start) + subs + str.substr(end + 1);
		if (start == 0)break; // If there's no '(', then break 
	}
	// Print the result 
	if(inverse == false) cout<<"²¨À¼Ê½:   ";
	else cout<<"Äæ²¨À¼Ê½: "; 
	for (int i = 0; i < str.length(); i++)
	{
		if (isdigit(str[i]))putchar(intToChar[str[i] - '0']);
		else putchar(str[i]);
	}
	putchar('\n');
}
int main()
{
	init();
	string str;
	cin >> str;
	str = "(" + str + ")";
	PolandSolve(str, 0);// 0 for Poland, 1 for inversePoland
	PolandSolve(str, 1);
	return 0;
}
