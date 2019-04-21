
#include "opencv.h"


#include <stdio.h>

namespace cv {

Mat imread(const std::string& path, int flags)
{
    (void)flags;

    // read pgm/ppm
    FILE* fp = fopen(path.c_str(), "rb");
    if (!fp)
        return Mat();

    Mat m;

    char magic[3];
    int w, h;
    int nscan = fscanf(fp, "%2s\n%d %d\n255\n", magic, &w, &h);
    if (nscan == 3 && magic[0] == 'P' && (magic[1] == '5' || magic[1] == '6'))
    {
        if (magic[1] == '5')
        {
            m.create(h, w, CV_8UC1);
        }
        else if (magic[1] == '6')
        {
            m.create(h, w, CV_8UC3);
        }
        if (m.empty())
        {
            fclose(fp);
            return Mat();
        }

        fread(m.data, 1, m.total(), fp);
    }

    fclose(fp);

    return m;
}

void imwrite(const std::string& path, const Mat& m)
{
    // write pgm/ppm
    FILE* fp = fopen(path.c_str(), "wb");
    if (!fp)
        return;

    if (m.channels() == 1)
    {
        fprintf(fp, "P5\n%d %d\n255\n", m.cols, m.rows);
    }
    else if (m.channels() == 3)
    {
        fprintf(fp, "P6\n%d %d\n255\n", m.cols, m.rows);
    }

    fwrite(m.data, 1, m.total(), fp);

    fclose(fp);
}

void resize(const Mat& src, Mat& dst, const Size& size, float sw, float sh, int flags)
{
    int srcw = src.cols;
    int srch = src.rows;

    int w = size.width;
    int h = size.height;

    if (w == 0 || h == 0)
    {
        w = srcw * sw;
        h = srch * sh;
    }

    if (w == 0 || h == 0)
        return;

    if (w == srcw && h == srch)
    {
        dst = src.clone();
        return;
    }

    cv::Mat tmp(h, w, src.c);
    if (tmp.empty())
        return;

    if (src.c == 1)
        tiny_cv::resize_bilinear_c1(src.data, srcw, srch, tmp.data, w, h);
    else if (src.c == 3)
        tiny_cv::resize_bilinear_c3(src.data, srcw, srch, tmp.data, w, h);
    else if (src.c == 4)
        tiny_cv::resize_bilinear_c4(src.data, srcw, srch, tmp.data, w, h);

    dst = tmp;
}

} // namespace cv

