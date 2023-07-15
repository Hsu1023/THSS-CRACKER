#ifndef __MEMBER_H__
#define __MEMBER_H__

#include <string>
#include <iostream>

class Member {
private:
	const std::string m_strName; // ����
	const int m_nAge; // ����

public:
	// ���캯����Ĭ������Ϊ"?"��Ĭ������Ϊ0
	Member(const std::string t_strName = "?", const int t_nAge = 0) :
		m_strName(t_strName), m_nAge(t_nAge) {};

	// ��������
	~Member(){}
	void show() const;
	// ����<<�����
	friend std::ostream& operator << (std::ostream&, const Member&);
};

#endif // __MEMBER_H__
