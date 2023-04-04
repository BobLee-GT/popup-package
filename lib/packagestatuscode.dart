library packagestatuscode;

import 'package:flutter/material.dart';
import 'package:gotrust_popup/utils/svg/data_svg.dart';
import 'package:gotrust_popup/utils/svg/read_svg.dart';
import 'package:get/get.dart';

part 'type_show_popup/show_normal.dart';

part 'type_show_popup/show_with_action.dart';

part 'type_show_popup/show_full_screen.dart';

part 'type_show_popup/show_snack_bar.dart';

/// This package show popup base on status code
class GoTrustStatusCodePopup {
  static Future<void> show(
      {required BuildContext context,
      required String code,
      String message = '',
      String language = 'Vi'}) async {
    await ShowNormal.show(
        context: context, code: code, language: language, message: message);
  }

  static Future<void> showWithAction({
    required BuildContext context,
    required String code,
    String message = '',
    String language = 'Vi',
    String titleBtnYes = 'Có',
    String titleBtnNo = 'Không',
    Function()? onTapYes,
    Function()? onTapNo,
  }) async {
    await ShowWithAction.show(
        context: context,
        code: code,
        message: message,
        language: language,
        onTapNo: onTapNo,
        onTapYes: onTapYes,
        titleBtnNo: titleBtnNo,
        titleBtnYes: titleBtnYes);
  }

  static Future<void> showFullScreen({
    required BuildContext context,
    required String code,
    String message = '',
    String language = 'Vi',
    String titleBtnCheck = 'Kiểm tra lại',
    String subTitle = '',
    Function()? onTapCheck,
  }) async {
    await ShowFullScreen.show(
        context: context,
        code: code,
        language: language,
        message: message,
        onTapCheck: onTapCheck,
        subTitle: subTitle,
        titleBtnCheck: titleBtnCheck);
  }

  static Future<void> showSnackBar({
    required BuildContext context,
    required String code,
    String title = '',
    String message = '',
    String language = 'Vi',
    Color? colorText,
    Color? backgroundColor,
    ///spaceWithBottom: if 0 snackbar will show at bottom
    double? spaceWithBottom,
  }) async {
    await ShowSnackBar.show(
        context: context,
        code: code,
        title: title,
        message: message,
        language: language,
        colorText: colorText,
        backgroundColor: backgroundColor,
        spaceWithBottom: spaceWithBottom);
  }
}
