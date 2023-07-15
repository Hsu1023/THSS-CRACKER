#include "member.h"

/**
* 重载<<运算符，打印姓名和年龄
*/
void Member::show() const{
	std::cout << "姓名：" << m_strName 
		<< " " << "年龄：" << m_nAge;
}
std::ostream& operator <<(std::ostream& out, const Member& temp) {
	//std::cout << "姓名：" << temp.m_strName 
	//	<< " " << "年龄：" << temp.m_nAge;
	temp.show();
	return out;
}