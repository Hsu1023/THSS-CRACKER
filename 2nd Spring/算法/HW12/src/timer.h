#ifndef TIMER_H
#define TIMER_H

#include <chrono>

using namespace std::chrono;

typedef unsigned long long ull;

class Timer {
private:
	time_point<high_resolution_clock> _start;
	double freq;
	ull scale;
public:
	Timer() {
		scale = 0;
	}
public:
	void begin() {
		_start = high_resolution_clock::now();
	}
	ull end() {
		return duration_cast<microseconds>(high_resolution_clock::now() - _start).count();
	}
};
#endif