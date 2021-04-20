#include <stdio.h>

int main(argc, argv)
          int argc;
          char *argv[];
{
          char c;
          printf("Waiting for the user to press Enter\n");
          c = getchar();
          return 0;
}
