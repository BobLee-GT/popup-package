part of '../packagestatuscode.dart';

extension ShowFullScreen on GoTrustStatusCodePopup {
  static Future<void> show({
    required BuildContext context,
    required String code,
    String title = '',
    String subTitle = '',
    TextStyle? textStyleTitle,
    TextStyle? textStyleSubTitle,
    String language = 'Vi',
    String titleBtnCheck = 'Kiểm tra lại',
    String btnTitle = '',
    Color? btnColor,
    Widget? customText,
    Function()? onTapCheck,
  }) async {
    await showGeneralDialog(
      context: context,
      barrierColor: Colors.black12.withOpacity(0.6),
      // Background color
      barrierDismissible: false,
      transitionDuration: Duration(milliseconds: 400),
      pageBuilder: (_, __, ___) {
        return Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _topImage(code),
            _title(title: title, textStyleTitle: textStyleTitle),
            const SizedBox(height: 10),
            _subTitle(code: code, language: language, subTitle: subTitle, textStyleSubTitle: textStyleSubTitle),
            const SizedBox(height: 30),
            _btnAction(context, customText: customText, btnColor: btnColor, btnTitle: btnTitle),
          ],
        );
      },
    );
  }

  static Widget _topImage(code) {
    return SvgImage.asset(
        assetName: svgImageFromStatus[code] ?? 'assets/popup/400.svg');
  }

  static Widget _title({title, textStyleTitle}) {
    return Text(
      title.isEmpty ? 'Thông báo' : title,
      style: textStyleTitle ??
          const TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
    );
  }

  static Widget _subTitle({code, subTitle, language, textStyleSubTitle}) {
    return Text(
      subTitle.isEmpty
          ? language == 'Vi'
          ? (messageVNFromStatus[code] ?? '')
          : (messageENFromStatus[code] ?? '')
          : subTitle,
      style: textStyleSubTitle ?? TextStyle(
          fontSize: 18,
          color: Colors.white.withOpacity(0.8),
          fontWeight: FontWeight.w400),
    );
  }

  static Widget _btnAction(context, {btnColor, customText, btnTitle}) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        width: 160,
        height: 40,
        decoration: BoxDecoration(
          color: btnColor ?? Colors.blueAccent,
          borderRadius: BorderRadius.circular(16),
        ),
        child:  Center(
            child: customText ?? Text(
              btnTitle ?? 'Thử lại',
              style: TextStyle(fontSize: 18, color: Colors.white),
            )),
      ),
    );
  }
}
