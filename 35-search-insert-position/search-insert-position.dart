class Solution {
  int searchInsert(List<int> nums, int target) {
    
    return searchHelper(nums, target, 0, nums.length -1);
  }

  int searchHelper(List<int> vals, int target, int start, int end){
    if(start <= end){
        int mid = (start + end) ~/2;
        if(vals[mid] == target){
            return mid;
        }else if(vals[mid] < target){
            return searchHelper(vals, target, mid +1, end);
        }else{
            return searchHelper(vals, target, start, mid -1);
        }
    }
    return start;
  }
}