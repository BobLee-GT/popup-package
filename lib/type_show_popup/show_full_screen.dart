part of '../packagestatuscode.dart';

extension ShowFullScreen on GoTrustStatusCodePopup {
  static Future<void> show({
    required BuildContext context,
    required String code,
    String title = '',
    String language = 'Vi',
    String titleBtnCheck = 'Kiểm tra lại',
    String subTitle = '',
    Function()? onTapCheck,
  }) async {
    /// Demo show full screen
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
            SvgImage.asset(assetName: 'assets/popup/400.svg'),
            Text(
              title.isEmpty ? 'Thông báo' : '',
              style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              subTitle.isEmpty
                  ? language == 'Vi'
                      ? (messageVNFromStatus[code] ?? '')
                      : (messageENFromStatus[code] ?? '')
                  : subTitle,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white.withOpacity(0.6),
                  fontWeight: FontWeight.w400),
            ),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 160,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                    child: Text(
                  'Thử lại',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              ),
            )
          ],
        );
      },
    );
  }
}
