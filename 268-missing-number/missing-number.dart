class Solution {
  int missingNumber(List<int> nums) {
    nums.sort();
    for(int i =0; i<nums.length;i++){
        if(i !=nums [i]){
            return i;
        }
    }
    return nums.length;
  }
}