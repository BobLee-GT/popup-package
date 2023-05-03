part of '../packagestatuscode.dart';

extension Animation on GoTrustStatusCodePopup {
  /// Animation
  static Future<void> bottomSheetAnimationSuccessful(
    context, {
    required String title,
    required String assetAnimationName,
    EdgeInsetsGeometry? padding,
    Color? backgroundColor,
    Widget? bottomButton,
    Widget? customTitleText,
  }) async {
    return await showModalBottomSheet(
        context: context,
        isDismissible: false,
        enableDrag: false,
        barrierColor: Colors.transparent,
        builder: (context) {
          return Container(
              padding: padding,
              height: (Get.height / 2) < 440 ? (Get.height / 2) : 440,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff1964A8).withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 25, // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  spaceVertical(height: 16),
                  _divider(),
                  spaceVertical(height: 40),
                  _lottie(assetAnimationName),
                  spaceVertical(height: 0),
                  const Spacer(),
                  _title(text: title, customTitleText: customTitleText),
                  if (bottomButton != null) spaceVertical(height: 32),
                  bottomButton ?? const SizedBox(),
                  spaceVertical(height: 50),
                ],
              ));
        });
  }

  /// Not animation
  static Future<void> bottomSheetSuccessful(
      context, {
        required String title,
        required String subTitle,
        required String assetImage,
        EdgeInsetsGeometry? padding,
        Color? backgroundColor,
        Widget? bottomButton,
        Widget? customTitleText,
        Widget? customSubTitleText,
      }) async {
    return await showModalBottomSheet(
        context: context,
        isDismissible: false,
        enableDrag: false,
        barrierColor: Colors.transparent,
        builder: (context) {
          return Container(
              padding: padding,
              height: (Get.height / 2) < 440 ? (Get.height / 2) : 440,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff1964A8).withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 25, // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  spaceVertical(height: 16),
                  _divider(),
                  spaceVertical(height: 40),
                  _image(assetImage),
                  spaceVertical(height: 0),
                  _title(text: title, customTitleText: customTitleText),
                  spaceVertical(height: 8),
                  _subTitle(subText: subTitle, customSubText: customSubTitleText),
                  const Spacer(),
                  bottomButton ?? const SizedBox(),
                  spaceVertical(height: 50),
                ],
              ));
        });
  }

  static Widget _divider() {
    return Container(
      width: 32,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1000),
        color: const Color(0xFFF1F5F9),
      ),
    );
  }

  static Widget _lottie(assetAnimationName) {
    return Lottie.asset(assetAnimationName, fit: BoxFit.cover, repeat: false);
  }

  static Widget _title({required String text, Widget? customTitleText}) {
    return Padding(
      padding: const EdgeInsets.only(left: 22, right: 22),
      child: customTitleText ?? Text(text),
    );
  }

  static Widget _image(asset) {
    return Container(
      margin: EdgeInsets.only(left: (Get.width / 2) - 160),
      width: 140,
      height: 120,
      child: Image(
        image: AssetImage(asset),
        fit: BoxFit.fill,
      ),
    );
  }

  static Widget _subTitle({required String subText, Widget? customSubText}) {
    return Padding(
      padding: const EdgeInsets.only(left: 22, right: 22),
      child: customSubText ?? Text(subText),
    );
  }
}
