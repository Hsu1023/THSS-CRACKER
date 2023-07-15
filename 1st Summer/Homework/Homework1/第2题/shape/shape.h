#ifndef __SHAPE_H__
#define __SHAPE_H__

// 基类，声明虚函数getarea以获得图形面积
class Shape {
public:
	virtual double getarea() const = 0 ;
};

// 圆的派生类
class Circle : public Shape {
public:
	const double PI = 3.14159265; // pi的值
	double m_fRadius; // 圆的半径
public:
	Circle(double t_fRadius) :m_fRadius(t_fRadius) {}
	double getarea() const;
};

// 长方形的派生类
class Rectangle : public Shape {
public:
	double m_fLength1, m_fLength2; // 长方形的长和宽
public:
	Rectangle(double t_fLength1, double t_fLength2) :
		m_fLength1(t_fLength1), m_fLength2(t_fLength2) {}
	double getarea() const;
};

// 正方形的派生类
class Square : public Shape {
public:
	double m_fLength; //正方形的边长
public:
	Square(double t_fLength) :m_fLength(t_fLength) {}
	double getarea() const;
};

#endif // __SHAPE_H__