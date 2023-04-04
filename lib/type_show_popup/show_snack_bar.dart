part of '../packagestatuscode.dart';

extension ShowSnackBar on GoTrustStatusCodePopup {
  static Future<void> show({
    required String code,
    String title = '',
    String message = '',
    String language = 'Vi',
    Color? backgroundColor,
    Color? colorText,
    ///spaceWithBottom: if 0 snackbar will show at bottom
    double? spaceWithBottom,
  }) async {
    Get.snackbar(title, message, backgroundColor: backgroundColor ?? Colors.black.withOpacity(0.6), colorText: Colors.white);
  }
}
