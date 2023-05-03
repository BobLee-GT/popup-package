
import 'package:flutter/cupertino.dart';

Widget spaceVertical({required double height}){
  return SizedBox(height: height);
}

Widget spaceHorizontal({required double width}){
  return SizedBox(width: width);
}

double statusBarHeight(context){
  return MediaQuery.of(context).viewPadding.top;
}