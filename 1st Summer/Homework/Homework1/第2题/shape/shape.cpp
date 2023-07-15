#include "shape.h"

// 圆的面积计算
double Circle::getarea() const{
	return PI * m_fRadius * m_fRadius;
}

//长方形的面积计算
double Rectangle::getarea() const{
	return m_fLength1 * m_fLength2;
}

//正方形的面积计算
double Square::getarea() const{
	return m_fLength * m_fLength;
}