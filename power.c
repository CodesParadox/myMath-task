#include "myMath.h"
#define E 2.71828182846

double Pow (double x, int y){
	double tmp = x;
	
	while (y < 1){
	x = x / tmp;
	y++;
	}
	while (y > 1){
	x = x * tmp;
	y--;
	}
	
	return x;
}
double Exp (int x){
	return Pow (E, x);
}

