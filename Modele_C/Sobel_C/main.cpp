/***    	Librairie PNG       ***/
/*** https://lodev.org/lodepng/ ***/
#include "lodepng.h"

/***  Dossier de travail du tp  ***/
#include "readpng.h"
#include <stdio.h>
#include <string>
#include "windows.h"


using namespace std;

int main() 
{
	int N = 14;
	struct_file s_file;

	for (int i = 0; i < N; i++) {
		string str = "C:/Users/TEMP/Documents/A4-TP2_CPU_FPGA_OpenCL/Modele_C/Sobel_C/SobelC/Debug/sample_image_" + to_string(i) + "0.png";
		string strOut = "C:/Users/TEMP/Documents/A4-TP2_CPU_FPGA_OpenCL/Modele_C/Sobel_C/SobelC/Debug/sample_image_c_" + to_string(i) + "0.png";
		const char *filename = str.c_str();
		const char *filenameOut = strOut.c_str();
		//string filenameOut = "C:/Users/TEMP/Documents/A4-TP2_CPU_FPGA_OpenCL/Modele_C/Sobel_C/SobelC/Debug/sample_image_c" + to_string(i) + ".png";
		//On decode ici le png, la structure garde la taille de l'image (en pixels) et l'image sous forme de unsigned char*
		s_file = decodeTwoSteps(filename);
		//On encode ici pour renvoyer l'image
		encodeTwoSteps(filenameOut, s_file);
		free(s_file.image);
	}
}
