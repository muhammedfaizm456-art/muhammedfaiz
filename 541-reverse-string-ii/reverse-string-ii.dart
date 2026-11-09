class Solution {
  String reverseStr(String s, int k) {
    List<String>res=s.split('');
    int n=res.length;

    for(int i=0;i<n;i+=2*k){
        int lft=i , rgt=min(k + i - 1,n - 1 );
        while(lft<rgt){
            String temp=res[lft];
            res[lft++]=res[rgt];
            res[rgt--]=temp;
        }
    }
    return res.join();
  }
}