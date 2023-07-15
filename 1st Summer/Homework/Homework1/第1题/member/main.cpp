#include "memberlist.h"
#include "member.h"
#include <iostream>

using namespace std;

int main() {
	Member newCommers[5] = { Member("Zhang San", 22), 
	Member("Li Si", 19),
	Member("Wang Wu", 18),
	Member("Zhao Liu", 24) };
	for (int i = 0; i < 5; i++)
	{
		cout << newCommers[i] << endl;
	}
	string name[5] = { "Zhang San", "Li Si", "Wang Wu", "Zhao Liu", "Pin Yin" }; 
	MemberList list(newCommers, 5);
	for (int i = 0; i < 5; i++)
	{
		cout << list[name[i]] << endl;
	}
	return 0;
}