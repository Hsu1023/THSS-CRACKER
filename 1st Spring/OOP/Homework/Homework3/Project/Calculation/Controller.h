#ifndef CONTROLLER_H
#define CONTROLLER_H

class Controller {
public:
	int count;
	double area, length;
public:
	Controller() : count(0), area(0.0), length(0.0) {}
	void report();
	void loop();
	void start();
};

#endif