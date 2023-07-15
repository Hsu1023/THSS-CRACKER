#ifndef __MEMBERLIST_H__
#define __MEMBERLIST_H__

#include "member.h"
#include <iostream>

class MemberList {
public:

	Member* m_pBegin; // Member�����鿪ʼ��ָ��
	int m_nLength; // Member�������ܳ�

public:
	// ���캯������ʼ������
	MemberList(Member* t_pBegin, int t_nLength) :
		m_pBegin(t_pBegin), m_nLength(t_nLength) {}

	// ��������
	~MemberList(){}

	// ����[]�����
	int operator [](const std::string) const;
};

#endif // __MEMBERLIST_H__