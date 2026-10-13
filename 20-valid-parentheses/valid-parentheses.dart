class Solution {
  bool isValid(String s) {
    List<String> list = [];
    for(int i=0;i<s.length;i++){
        // print('aaa ${list}');
        if(list.isEmpty){
            list.add(s[i]);
        }else{
            if(s[i] == ')' && list.last == '('){
                list.removeLast();
                // break;
            }else if(s[i] == ']' && list.last == '['){
                list.removeLast();
                // break;
            }else if(s[i] == '}' && list.last == '{'){
                list.removeLast();
                // break;
            }else{
                list.add(s[i]);
            }
        }
    }
    // print(list);
    return list.isEmpty;
  }
}