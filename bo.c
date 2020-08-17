#include<stdio.h>
#include<bsd/string.h>
#define MAX_SIZE 20

int main(int argc,char **argv) {
    char buffer1[MAX_SIZE];
    char buffer2[MAX_SIZE];
    char buffer3[MAX_SIZE];
    size_t length;


    memset(buffer1,'A',MAX_SIZE);
    memset(buffer3,'B',MAX_SIZE);

    length = strlcpy(buffer2,argv[1],MAX_SIZE);

    printf("strlcpy(buffer2+%d,argv[2],%d);\n",length,MAX_SIZE-length);
    strlcpy(buffer2+length,argv[2],MAX_SIZE-length);

    printf("Buffer1: %s\n",buffer1);
    printf("Buffer2:%s\n",buffer2);
    printf("Buffer3:%s\n",buffer3);

    printf("Length:%d\n",length);
    printf("strlen:%d\n",strlen(buffer2));
}
