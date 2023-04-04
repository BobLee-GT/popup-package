part of '../packagestatuscode.dart';

extension ShowSnackBar on GoTrustStatusCodePopup {
  static Future<void> show({
    required String code,
    String title = '',
    String message = '',
    String language = 'Vi',
    Color? backgroundColor,
    Color? colorText,
    bool isShowTop = true,
  }) async {
    Get.snackbar(
      title,
      message,
        snackPosition: isShowTop ? SnackPosition.TOP : SnackPosition.BOTTOM,
        backgroundColor: backgroundColor ?? Colors.black.withOpacity(0.6),
        colorText: colorText ?? Colors.white);
  }
}
