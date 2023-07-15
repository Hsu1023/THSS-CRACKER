#include "shape.h"
#include <iostream>

using namespace std;

int main(int argc, char** argv) {
	Shape* shapes[4];
	Circle circle(2.0);
	Rectangle rectangle(3.0, 4.0); 
	Square square1(5.0); 
	Square square2(4.0); 
	shapes[0] = &circle; 
	shapes[1] = &rectangle;
	shapes[2] = &square1; 
	shapes[3] = &square2;
	for (int k = 0; k < 4; k++) {
		cout << "Area is " << shapes[k]->getarea() << endl;
	} 
	return 0;
}