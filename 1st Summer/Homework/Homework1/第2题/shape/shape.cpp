#include "shape.h"

// Բ���������
double Circle::getarea() const{
	return PI * m_fRadius * m_fRadius;
}

//�����ε��������
double Rectangle::getarea() const{
	return m_fLength1 * m_fLength2;
}

//�����ε��������
double Square::getarea() const{
	return m_fLength * m_fLength;
}