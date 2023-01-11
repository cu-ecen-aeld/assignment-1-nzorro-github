#include <stdio.h>
#include <string.h>

int find(const char* , const char* );
int main(int argc, char *argv[])
{
  if(argc >= 2)
  {
    return find(argv[1], argv[2]);
  }
  return 1;
}

int find(const char* fullpath, const char* textToWrite)
{
  if(strlen(fullpath)>1 && strlen(textToWrite) > 0)
  {
    // printf("Will attempt to write %s into %s", textToWrite, fullpath);
    FILE* fp = fopen(fullpath,"a");
    if(fp == 0)
    {
      return 1;
    }
    fprintf(fp, "%s",textToWrite);
    fclose(fp);
    return 0;
  }
  return 1;
}

