import 'dart:math';

import 'package:flutter/foundation.dart';

void main (){
  Aa aa = Aa();

  List <String> strs = ["ff","dd","gg"];
if (kDebugMode) {
  print(aa.longestCommonPrefix(strs));
}
}


class Aa {

  String longestCommonPrefix(List<String> strs) {

    if (strs.isEmpty || strs.isEmpty || strs.length == '') return "";


    String prefix = strs[0];

    for (var i = 0; i < strs.length; i++) {

      String c = strs[i];
      if (c.isEmpty || prefix == "") return "No Longest Prefix";

      prefix = prefix.substring(0, min(prefix.length, c.length));
      for (var j = 0; j < c.length && j < prefix.length; j++) {
        if (c[j] != prefix[j]) {
          prefix = prefix.substring(0, j);
          break;
        }
      }
    }
    return prefix;
  }
}

