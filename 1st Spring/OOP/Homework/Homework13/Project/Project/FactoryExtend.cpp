#include"FactoryExtend.h"
#include"List.h"
#include"FactoryList.h"
#include<iostream>
using namespace std;

void InputHint()
{
	cout << "***********************\n";
	cout << "ָ��1  �������λѧ��(ѧ�� �ɼ�)����0����\n";
	cout << "ָ��2  ɾ����1λָ��ѧ�ŵ�ѧ��\n";
	cout << "ָ��3  ɾ������ָ���ɼ���ѧ��\n";
	cout << "ָ��4  ��ʾ��1λָ��ѧ�ŵ�ѧ���ĳɼ�\n";
	cout << "ָ��5  ��ʾ����ָ���ɼ���ѧ����ѧ��\n";
	cout << "ָ��6  ��ʾ����ѧ����Ϣ\n";
	cout << "ָ��-1 �˳�\n";
	cout << "������ָ����ţ��Իس�����β��";
}

CFactoryList frt;

CStudentList* CreateInstanceList(int ID)
{
	if (ID == 1)
		return frt.CreateInstance();
}
void RecycleInstanceList(CStudentList* garbage)
{
	frt.RecycleInstance(garbage);
}