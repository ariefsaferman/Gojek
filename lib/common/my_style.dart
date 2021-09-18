import 'package:flutter/material.dart';
import 'package:gojek/common/MyColors.dart';
import 'package:gojek/common/MyFontSize.dart';

class MyStyle {
  static TextStyle textButtonBlack = TextStyle(
    color: MyColors.blackText, 
    fontSize: MyFontSize.medium2, 
    fontWeight: FontWeight.bold
  ); 

  static TextStyle textButtomWhite = TextStyle(
    color: MyColors.white, 
    fontSize: MyFontSize.medium2, 
    fontWeight: FontWeight.bold
  ); 

  static TextStyle textTitleBlack = TextStyle(
    color: MyColors.blackText, 
    fontSize: MyFontSize.large2, 
    fontWeight: FontWeight.bold
  ); 

  static TextStyle textParagraphBlack = TextStyle(
    color: MyColors.blackSoftText, 
    fontSize: MyFontSize.medium1, 
  ); 
}