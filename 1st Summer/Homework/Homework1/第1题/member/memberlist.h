#ifndef __MEMBERLIST_H__
#define __MEMBERLIST_H__

#include "member.h"
#include <iostream>

class MemberList {
public:

	Member* m_pBegin; // Member类数组开始的指针
	int m_nLength; // Member类数组总长

public:
	// 构造函数，初始化参数
	MemberList(Member* t_pBegin, int t_nLength) :
		m_pBegin(t_pBegin), m_nLength(t_nLength) {}

	// 析构函数
	~MemberList(){}

	// 重载[]运算符
	int operator [](const std::string) const;
};

#endif // __MEMBERLIST_H__