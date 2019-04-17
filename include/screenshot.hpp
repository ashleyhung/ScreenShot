#ifndef __SCREENSHOT_HPP__
#define __SCREENSHOT_HPP__

#ifdef WIN32
void screenshot(POINT a, POINT b);
void BMP2JPG(char* BMPName,char* JPGName);
#else
int ScrotCmd(char* JpgName);
#endif

#endif
