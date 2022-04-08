#include "myLib.h"

extern int foo2(int,int);

__attribute__((used)) int res;

void main() {
  res = foo2(1, 2);
}
