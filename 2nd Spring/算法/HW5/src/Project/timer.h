#pragma once
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <algorithm>
#include <cmath>
#include <windows.h>
typedef unsigned long long ull;

class Timer {
private:
	_LARGE_INTEGER beginTime, endTime;
	double freq;
	ull scale;
public:
	Timer() {
		scale = 0;
		LARGE_INTEGER f;
		QueryPerformanceFrequency(&f);
		freq = (double)f.QuadPart;
	}
public:
	void begin() {
		QueryPerformanceCounter(&beginTime);
	}
	void end(std::string order) {
		QueryPerformanceCounter(&endTime);
		if (order == "timer")
			std::cout << (endTime.QuadPart - beginTime.QuadPart) / freq * 1000000;
	}
public:
	void exe(double(*f)(), std::string order) {
		begin();
		if (order == "result") std::cout << f() ;
		else f();
		end(order);
	}
}t;