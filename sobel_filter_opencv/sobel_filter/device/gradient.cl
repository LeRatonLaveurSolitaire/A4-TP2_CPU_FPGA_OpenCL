
#include "../host/inc/defines.h"

// gradient filter kernel
// frame_in and frame_out are different buffers. Specify restrict on
// them so that the compiler knows they do not alias each other.
__kernel
void gradient(global unsigned int * restrict frame_in, global unsigned int * restrict frame_out,
           const int iterations, const unsigned int threshold)
{
    // Filter coefficients
    int G[3][3] = {{0,1,0},{1,-4,1},{0,1,0}};
    

    // Pixel buffer of 2 rows and 3 extra pixels
    int rows[2 * IMG_COLS + 3];

    // The initial iterations are used to initialize the pixel buffer.
    int count = -(2 * IMG_COLS + 3);
    while (count != iterations) 
    {
        // Each cycle, shift a new pixel into the buffer.
        // Unrolling this loop allows the compile to infer a shift register.
        #pragma unroll
        for (int i = IMG_COLS * 2 + 2; i > 0; --i) {
            rows[i] = rows[i - 1];
        }
        rows[0] = count >= 0 ? frame_in[count] : 0;

        int x_dir = 0;
        //int y_dir = 0;

        // With these loops unrolled, one convolution can be computed every
        // cycle.
        #pragma unroll
        for (int i = 0; i < 3; ++i) {
            #pragma unroll
            for (int j = 0; j < 3; ++j) {
                unsigned int pixel = rows[i * IMG_COLS + j];
                unsigned int r = (pixel >> 8) & 0xff;
                unsigned int g = (pixel >> 16) & 0xff;
                unsigned int b = (pixel >> 24) & 0xff;

                // RGB -> Luma conversion approximation
                // Avoiding floating point math operators greatly reduces
                // resource usage.
                unsigned int luma = r * 66 + g * 129 + b * 25;
                luma = (luma + 128) >> 8;
                luma += 16;

                x_dir += luma * G[i][j];
                //y_dir += luma * Gy[i][j];
                if (x_dir > 255){
                    x_dir = 255;
                }
                else if (x_dir < 0){
                    x_dir = 0;
                }
            }
        }

    

        if (count >= 0) {
            frame_out[count] = x_dir + (x_dir << 8) + (x_dir << 16);
        }
        count++;
    }
}
