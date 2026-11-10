class Solution {
  int reverseBits(int n) {
    var result =0;
    for(var i=0; i < 32; i++){
        result <<=1;
        final bit =n & 1;
        result |= bit;
        n >>= 1;
    }
    return result;
  }
}