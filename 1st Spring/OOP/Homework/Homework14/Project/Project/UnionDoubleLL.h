#ifndef UNIONDOUBLELL_H
#define UNIONDOUBLELL_H

union U_DoubleLL
{
	long long m_ll;
	double m_double;
	U_DoubleLL(long long ll=0):m_ll(ll){}
	U_DoubleLL(double d):m_double(d){}
	U_DoubleLL(U_DoubleLL &temp) :m_ll(temp.m_ll){}
	~U_DoubleLL(){}
};

extern void gb_run();


#endif