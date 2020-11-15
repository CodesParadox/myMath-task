#include "myMath.h"

float add(float x, float y){
	return x + y;
}

float sub (float x, float y){
	return x - y;
}

double mul (double x, int y){
	return x * y;
}

double div (double x, int y){
	if (y==0){
	printf("cant div number by 0. \n");
		return 0;
	}else{
		return x / y;
	}
}
