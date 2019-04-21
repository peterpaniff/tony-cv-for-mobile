#include "opencv.h"


//using namespace cv;
int main( int argc, char** argv )
{
	
	cv::Mat img = cv::imread("1.ppm",3);
	cv::imwrite("2.ppm",img);
	return 0;
}
