
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImage{
  static asset({required String assetName}){
    return SvgPicture.asset(
      assetName,
      fit: BoxFit.contain,
    );
  }
}