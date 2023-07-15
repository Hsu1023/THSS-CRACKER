#ifndef __SHAPE_H__
#define __SHAPE_H__

// ���࣬�����麯��getarea�Ի��ͼ�����
class Shape {
public:
	virtual double getarea() const = 0 ;
};

// Բ��������
class Circle : public Shape {
public:
	const double PI = 3.14159265; // pi��ֵ
	double m_fRadius; // Բ�İ뾶
public:
	Circle(double t_fRadius) :m_fRadius(t_fRadius) {}
	double getarea() const;
};

// �����ε�������
class Rectangle : public Shape {
public:
	double m_fLength1, m_fLength2; // �����εĳ��Ϳ�
public:
	Rectangle(double t_fLength1, double t_fLength2) :
		m_fLength1(t_fLength1), m_fLength2(t_fLength2) {}
	double getarea() const;
};

// �����ε�������
class Square : public Shape {
public:
	double m_fLength; //�����εı߳�
public:
	Square(double t_fLength) :m_fLength(t_fLength) {}
	double getarea() const;
};

#endif // __SHAPE_H__