#include "memberlist.h"

/**
* ����[]����������������Ӧ������
* ���������
* @param t_strName: �����ҵĳ�Ա����
* @return: ���س�Ա������Ӧ�����䣬���������򷵻�-1 
*/
int MemberList::operator [](const std::string t_strName) const{
	/** �÷���ͨ��Member�����ָ�������������Ѱ���б����Ƿ����ĳһ����*/

	Member* t_pBegin = m_pBegin;

	for (int i = 1; i <= m_nLength; i++) {
		if ((*t_pBegin).m_strName == t_strName) {
			return (*t_pBegin).m_nAge;
		}
		t_pBegin++;
	}

	return -1;
}