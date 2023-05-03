library packagestatuscode;

import 'package:flutter/material.dart';
import 'package:gotrust_popup/utils/messages/message.dart';
import 'package:gotrust_popup/utils/space/space.dart';
import 'package:gotrust_popup/utils/svg/data_svg.dart';
import 'package:gotrust_popup/utils/svg/read_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

part 'type_show_popup/show_normal.dart';

part 'type_show_popup/show_with_action.dart';

part 'type_show_popup/show_full_screen.dart';

part 'type_show_popup/show_snack_bar.dart';

part 'show_popup_animation/popup_animation.dart';

/// This package show popup base on status code
class GoTrustStatusCodePopup {
  static Future<void> show({
    required BuildContext context,
    required String code,
    String btnTitle = '',
    String message = '',
    TextStyle? textStyleMessage,
    String language = 'Vi',
    double? width,
    double? height,
    Color? backgroundColor,
    Color? btnColor,
    Widget? customText,
  }) async {
    await ShowNormal.show(
        context: context,
        code: code,
        language: language,
        message: message,
        textStyleMessage: textStyleMessage,
        backgroundColor: backgroundColor,
        height: height,
        width: width,
        btnColor: btnColor,
        btnTitle: btnTitle,
        customText: customText);
  }

  static Future<void> showWithAction(
      {required bool isVertical,
      required BuildContext context,
      required String code,
      double? width,
      double? height,
      Color? backgroundColor,
      String notice = '',
      TextStyle? textStyleNotice,
      TextStyle? textStyleMessage,
      String message = '',
      String language = 'Vi',
      String titleBtnYes = 'Có',
      Color? colorBtnYes,
      String titleBtnNo = 'Không',
      Color? colorBtnNo,
      Function()? onTapYes,
      Function()? onTapNo,
      Widget? customTextYes,
      Widget? customTextNo}) async {
    isVertical
        ? await ShowWithAction.showButtonVertical(
            context: context,
            code: code,
            height: height,
            width: width,
            backgroundColor: backgroundColor,
            colorBtnNo: colorBtnNo,
            colorBtnYes: colorBtnYes,
            customTextNo: customTextNo,
            customTextYes: customTextYes,
            notice: notice,
            textStyleMessage: textStyleMessage,
            textStyleNotice: textStyleNotice,
            message: message,
            language: language,
            onTapNo: onTapNo,
            onTapYes: onTapYes,
            titleBtnNo: titleBtnNo,
            titleBtnYes: titleBtnYes,
          )
        : await ShowWithAction.showButtonHorizontal(
            context: context,
            code: code,
            height: height,
            width: width,
            backgroundColor: backgroundColor,
            colorBtnNo: colorBtnNo,
            colorBtnYes: colorBtnYes,
            customTextNo: customTextNo,
            customTextYes: customTextYes,
            notice: notice,
            textStyleMessage: textStyleMessage,
            textStyleNotice: textStyleNotice,
            message: message,
            language: language,
            onTapNo: onTapNo,
            onTapYes: onTapYes,
            titleBtnNo: titleBtnNo,
            titleBtnYes: titleBtnYes,
          );
  }

  static Future<void> showFullScreen({
    required BuildContext context,
    required String code,
    String language = 'Vi',
    String titleBtnCheck = 'Kiểm tra lại',
    String title = '',
    String subTitle = '',
    TextStyle? textStyleTitle,
    TextStyle? textStyleSubTitle,
    String btnTitle = '',
    Color? btnColor,
    Widget? customText,
    Function()? onTapCheck,
  }) async {
    await ShowFullScreen.show(
        context: context,
        code: code,
        language: language,
        title: title,
        textStyleTitle: textStyleTitle,
        subTitle: subTitle,
        textStyleSubTitle: textStyleSubTitle,
        onTapCheck: onTapCheck,
        btnColor: btnColor,
        btnTitle: btnTitle,
        customText: customText,
        titleBtnCheck: titleBtnCheck);
  }

  static Future<void> showSnackBar({
    required String code,
    String title = '',
    String message = '',
    String language = 'Vi',
    Color? colorText,
    Color? backgroundColor,
    bool isShowTop = true,
  }) async {
    await ShowSnackBar.show(
        code: code,
        title: title,
        message: message,
        language: language,
        colorText: colorText,
        isShowTop: isShowTop,
        backgroundColor: backgroundColor);
  }

  static Future<void> showBottomSheetAnimationSuccess({
    required BuildContext context,
    required String title,
    required String assetAnimationName,
    EdgeInsetsGeometry? padding,
    Color? backgroundColor,
    Widget? bottomButton,
    Widget? customTitleText,
  }) async {
    await Animation.bottomSheetAnimationSuccessful(
        context,
        title: title,
        assetAnimationName: assetAnimationName,
        customTitleText: customTitleText,
        padding: padding,
        backgroundColor: backgroundColor,
        bottomButton: bottomButton);
  }

  static Future<void> showBottomSheetSuccess({
    required BuildContext context,
    required String title,
    required String subTitle,
    required String assetImage,
    EdgeInsetsGeometry? padding,
    Color? backgroundColor,
    Widget? bottomButton,
    Widget? customTitleText,
    Widget? customSubTitleText,
  }) async {
    await Animation.bottomSheetSuccessful(
        context,
        title: title,
        subTitle: subTitle,
        assetImage: assetImage,
        customSubTitleText: customSubTitleText,
        customTitleText: customTitleText,
        padding: padding,
        backgroundColor: backgroundColor,
        bottomButton: bottomButton);
  }
}
