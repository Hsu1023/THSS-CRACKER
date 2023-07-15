#ifndef __MEMBER_H__
#define __MEMBER_H__

#include <string>
#include <iostream>

class Member {
private:
	const std::string m_strName; // 名字
	const int m_nAge; // 年龄

public:
	// 构造函数，默认名字为"?"，默认年龄为0
	Member(const std::string t_strName = "?", const int t_nAge = 0) :
		m_strName(t_strName), m_nAge(t_nAge) {};

	// 析构函数
	~Member(){}
	void show() const;
	// 重载<<运算符
	friend std::ostream& operator << (std::ostream&, const Member&);
};

#endif // __MEMBER_H__
