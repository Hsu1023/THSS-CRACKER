#include "memberlist.h"

/**
* 重载[]运算符，获得姓名对应的年龄
* 如果数组中
* @param t_strName: 待查找的成员姓名
* @return: 返回成员姓名对应的年龄，若不存在则返回-1 
*/
int MemberList::operator [](const std::string t_strName) const{
	/** 该方法通过Member数组的指针遍历整个数组寻找列表中是否存在某一名字*/

	Member* t_pBegin = m_pBegin;

	for (int i = 1; i <= m_nLength; i++) {
		if ((*t_pBegin).m_strName == t_strName) {
			return (*t_pBegin).m_nAge;
		}
		t_pBegin++;
	}

	return -1;
}