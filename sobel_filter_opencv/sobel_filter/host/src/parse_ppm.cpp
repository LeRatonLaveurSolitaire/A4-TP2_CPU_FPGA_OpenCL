

#include <stdio.h>
#include <stdlib.h>
#include <cstring>
#include <iostream>

#include "parse_ppm.h"

bool parse_ppm(const char *filename, const unsigned int width, const unsigned int height, unsigned char *data)
{
  FILE *fp = NULL;
#ifdef _WIN32
  errno_t err;
  if ((err = fopen_s(&fp, filename, "rb")) != 0)
#else
  if ((fp = fopen(filename, "rb")) == 0)
#endif
  {
    if (fp) { fclose(fp); }
    std::cerr << "Error: failed to load '" << filename << "'" << std::endl;
    return false;
  }

  const size_t headerSize = 0x40;
  char header[headerSize];
  if ((fgets(header, headerSize, fp) == NULL) && ferror(fp)) {
    if (fp) { fclose(fp); }
    std::cerr << "Error: '" << filename << "' is not a valid PPM image" << std::endl;
    return false;
  }

  if (strncmp(header, "P6", 2) != 0) {
    std::cerr << "Error: '" << filename << "' is not a valid PPM image" << std::endl;
    return false;
  }

  int i = 0;
  unsigned int maxval = 0;
  unsigned int w = 0;
  unsigned int h = 0;
  while (i < 3) {
    if ((fgets(header, headerSize, fp) == NULL) && ferror(fp)) {
      if (fp) { fclose(fp); }
      std::cerr << "Error: '" << filename << "' is not a valid PPM image" << std::endl;
      return false;
    }
    // Skip comments
    if (header[0] == '#') continue;
#ifdef _WIN32
    if (i == 0) {
      i += sscanf_s(header, "%u %u %u", &w, &h, &maxval);
    } else if (i == 1) {
      i += sscanf_s(header, "%u %u", &h, &maxval);
    } else if (i == 2) {
      i += sscanf_s(header, "%u", &maxval);
    }
#else
    if (i == 0) {
      i += sscanf(header, "%u %u %u", &w, &h, &maxval);
    } else if (i == 1) {
      i += sscanf(header, "%u %u", &h, &maxval);
    } else if (i == 2) {
      i += sscanf(header, "%u", &maxval);
    }
#endif
  }

  if (maxval == 0) {
    if (fp) { fclose(fp); }
    std::cerr << "Error: maximum color value must be greater than 0" << std::endl;
    return false;
  }
  if (maxval > 255) {
    if (fp) { fclose(fp); }
    std::cerr << "Error: parser only supports 1 byte value PPM images" << std::endl;
    return false;
  }

  if (w != width) {
    if (fp) { fclose(fp); }
    std::cerr << "Error: expected width of " << width
          << " pixels, but file contains image of width "
          << w << " pixels" << std::endl;
    return false;
  }

  if (h != height) {
    if (fp) { fclose(fp); }
    std::cerr << "Error: expected width of " << height
          << " pixels, but file contains image of height "
          << h << " pixels" << std::endl;
    return false;
  }

  unsigned char *raw = (unsigned char *)malloc(sizeof(unsigned char) * width * height * 3);
  if (!raw) {
    if (fp) { fclose(fp); }
    std::cerr << "Error: could not allocate data buffer" << std::endl;
    return false;
  }
  if (fread(raw, sizeof(unsigned char), width * height * 3, fp) != width * height * 3) {
    if (fp) { fclose(fp); }
    std::cerr << "Error: invalid image data" << std::endl;
    return false;
  }
  if (fp) { fclose(fp); }

  // Transfer the raw data
  unsigned char *raw_ptr = raw;
  unsigned char *data_ptr = data;
  for (int i = 0, e = width * height; i != e; ++i) {
    // Read rgb and pad
    *data_ptr++ = *raw_ptr++;
    *data_ptr++ = *raw_ptr++;
    *data_ptr++ = *raw_ptr++;
    *data_ptr++ = 0;
  }
  free(raw);
  return true;
}
