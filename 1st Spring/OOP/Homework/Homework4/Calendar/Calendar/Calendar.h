#ifndef CALENDAR
#define CALENDAR

class calendar
{
private:
	int yy, mm, dd;
	int data[13] = { 0,31,28,31,30,31,30,31,31,30,31,30,31};
	int data_[13] = { 0,31,29,31,30,31,30,31,31,30,31,30,31 };
public:
	calendar() { init(); }
	void init();
	void set(int, int, int);
	void cal(int);
	friend class calendarmain;
};
#endif