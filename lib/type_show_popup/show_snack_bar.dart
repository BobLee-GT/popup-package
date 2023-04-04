part of '../packagestatuscode.dart';

extension ShowSnackBar on GoTrustStatusCodePopup {
  static Future<void> show({
    required BuildContext context,
    required String code,
    String message = '',
    String language = 'Vi',
    Color? backgroundColor,
    ///spaceWithBottom: if 0 snackbar will show at bottom
    double? spaceWithBottom,
  }) async {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: backgroundColor ?? Colors.black.withOpacity(0.6),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: EdgeInsets.only(
        bottom: spaceWithBottom ?? 0,
        right: 20,
        left: 20
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
