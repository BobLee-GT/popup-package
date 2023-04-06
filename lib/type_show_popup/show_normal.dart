part of '../packagestatuscode.dart';

extension ShowNormal on GoTrustStatusCodePopup {
  static Future<void> show({
    required BuildContext context,
    required String code,
    String btnTitle = '',
    String notice = '',
    TextStyle? textStyleNotice,
    String message = '',
    TextStyle? textStyleMessage,
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
                    _topImage(code),
                    _mainNotice(
                        notice: notice, textStyleNotice: textStyleNotice),
                    const SizedBox(height: 10),
                    Expanded(
                        child: _mainMessage(
                            code: code,
                            message: message,
                            language: language,
                            textStyleMessage: textStyleMessage)),
                    _btnAction(context,
                        btnTitle: btnTitle,
                        btnColor: btnColor,
                        customText: customText),
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

  static Widget _topImage(code) {
    return SvgImage.asset(
        assetName: svgImageFromStatus[code] ?? 'assets/popup/400.svg');
  }

  static Widget _mainNotice({notice, textStyleNotice}) {
    return Text(
      notice.isEmpty ? 'Thông báo' : notice,
      style: textStyleNotice ??
          const TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
    );
  }

  static Widget _mainMessage({code, message, language, textStyleMessage}) {
    return Text(
      message.isEmpty
          ? language == 'Vi'
              ? (messageVNFromStatus[code] ?? '')
              : (messageENFromStatus[code] ?? '')
          : message,
      style: textStyleMessage ??
          TextStyle(
              fontSize: 20,
              color: Colors.black.withOpacity(0.8),
              fontWeight: FontWeight.w400),
    );
  }

  static Widget _btnAction(context, {btnColor, customText, btnTitle}) {
    return GestureDetector(
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
    );
  }
}
