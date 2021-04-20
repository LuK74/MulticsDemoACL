/*
* Interactive program allowing user
* to test some file opening options
* In order for them to test their ACL
*/
#include<stdio.h>
#include<string.h>
#include<errno.h>

void advice(mode)
          char * mode;
{
          printf("You should try add an ACL entry similar to :\n");
          printf("%s *.*.*\n", mode);
          printf("Careful, this kind of entry will give the %s permissions to e
\cvery users\n");
}

int main(argc, argv)
          int argc;
          char * argv[];
{
          char file[100];
          int fd = -1;
          char input[20];
          int running = 1;
          char mode[3];
          FILE * filed;
          errno = 0;

          printf("Interactive program allowing user to test their ACL\n");
          printf("How to use :\n");
          printf("open : try to open file with given modes\n");
          printf("quit : exit the program\n");
          printf("\n");
          printf("/!\ Be careful, if you ask to open a file using two modes\n")
\c;
          printf("For example : read and write (rw)\n");
          printf("If the file authorize you one of this operation\n");
          printf("It will succeed to open the file\n");
          printf("\n");

          while (running == 1) {
                    printf("> ");
                    scanf("%s", input);
                    if (strcmp("open", input)==0) {
                              printf("Mode : ");
                              scanf("%s", mode);
                              printf("Filename : ");
                              scanf("%s", file);

                              filed = fopen(file, mode);
                              if (filed == NULL) {
                                        printf("Couldn't open the requested fil
\ce\n");
                                        printf("Requested mode : %s\n", mode);
                                        advice(mode);
                              } else {
                                        printf("The file opening succeeded\n");
                              }

                    } else if (strcmp("quit", input)==0) {
                              running = 0;
                    } else {
                              printf("Unknown command\n");
                    }
          }

          printf("Exiting the program\n");

}
