///////////////////////////////////////////////////////////////////////////////
// Generate Pseudeo Random Numbers

#include <stding.h>

uint64_t prNum, weyl, seed, m;
/////
// Middle Square Method with Weyl sequence to prevent convergence
inline static uint32_t msws(){
  prNum *= prNum;
  prNum += (weyl += seed);
  return prNum = (prNum>>32) | (prNum<<32);
}

int main(){
  return 0;
}
