#include "member.h"

/**
* ����<<���������ӡ����������
*/
void Member::show() const{
	std::cout << "������" << m_strName 
		<< " " << "���䣺" << m_nAge;
}
std::ostream& operator <<(std::ostream& out, const Member& temp) {
	//std::cout << "������" << temp.m_strName 
	//	<< " " << "���䣺" << temp.m_nAge;
	temp.show();
	return out;
}