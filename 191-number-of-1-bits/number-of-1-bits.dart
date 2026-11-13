class Solution {
  int hammingWeight(int n) {
    int count=0;
    String binary =n.toRadixString(2);
    for(var char in binary.split('')){
        if(char =='1'){
            count++;
        }
    }
    return count;
  }
}