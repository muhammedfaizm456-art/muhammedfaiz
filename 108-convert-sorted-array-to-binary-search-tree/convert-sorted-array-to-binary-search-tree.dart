/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  TreeNode? helper(int l, int r, List<int> nums) {
    if (l > r) {
      return null;
    }
    int m = ((l + r) / 2).floor();
    final root = TreeNode(nums[m]);
    root.right = helper(m + 1, r, nums);
    root.left = helper(l, m - 1, nums);
    return root;
}

  TreeNode? sortedArrayToBST(List<int> nums) {
    return helper(0, nums.length - 1, nums);
  }
}