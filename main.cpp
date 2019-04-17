#ifdef WIN32
#include <windows.h>
#endif

#include <stdio.h>
#include <string.h>
#include "screenshot.hpp"
int main()
{
#ifdef WIN32
	POINT a,b;
	a.x=0;
	a.y=0;

	b.x=GetSystemMetrics(SM_CXSCREEN);
	b.y=GetSystemMetrics(SM_CYSCREEN);

	screenshot(a,b);
	const char* tmp1="test.bmp";
	const char* tmp2="test.jpg";
	char * BMP_ = new char[strlen(tmp1)+1];
	char*  JPG_= new char[strlen(tmp2)+1];
	strcpy(BMP_,tmp1);
	strcpy(JPG_,tmp2);
	BMP2JPG(BMP_,JPG_);
	delete[] BMP_;
	delete[] JPG_;

#else
	const char* tmp="test.jpg";
	char*  JPG_=new char[strlen(tmp)+1];
	strcpy(JPG_,tmp);
	int ret=ScrotCmd(JPG_);
	(ret==0)?printf("Get screenshot successfully!\n"):printf("Get screenshot failed.\n");
	delete[] JPG_;
#endif

	return 0;
}
