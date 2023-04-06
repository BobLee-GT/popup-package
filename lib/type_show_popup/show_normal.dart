part of '../packagestatuscode.dart';

extension ShowNormal on GoTrustStatusCodePopup {
  static Future<void> show({
    required BuildContext context,
    required String code,
    String btnTitle = '',
    String message = '',
    String language = 'Vi',
    double? width,
    double? height,
    Color? backgroundColor,
    Color? btnColor,
    Widget? customText,
  }) async {
    await showGeneralDialog(
        context: context,
        barrierColor: Colors.black12.withOpacity(0.3), // Background color
        barrierDismissible: false,
        pageBuilder: (context, animation, secondaryAnimation) {
          return Center(
            child: Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              width: width ?? double.infinity,
              height: height ?? 400,
              decoration: BoxDecoration(
                  color: backgroundColor ?? Colors.white,
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SvgImage.asset(
                        assetName:
                            svgImageFromStatus[code] ?? 'assets/popup/400.svg'),
                    const Spacer(),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        width: 260,
                        height: 45,
                        decoration: BoxDecoration(
                          color: btnColor ?? Colors.blue,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Center(
                          child: customText ??
                              Text(
                                btnTitle.isEmpty ? 'Tôi đã hiểu' : btnTitle,
                                style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
