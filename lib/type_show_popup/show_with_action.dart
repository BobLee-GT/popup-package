part of '../packagestatuscode.dart';

extension ShowWithAction on PopupStatusGoTrustCustom{
  static Future<void> show({
    required BuildContext context,
    required String code,
    String message = '',
    String language = 'Vi',
    String titleBtnYes = 'Có',
    String titleBtnNo = 'Không',
    Function()? onTapYes,
    Function()? onTapNo,
  }) async {}
}