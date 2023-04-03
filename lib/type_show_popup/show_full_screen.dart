part of '../packagestatuscode.dart';

extension ShowFullScreen on PopupStatusGoTrustCustom{
  static Future<void> show({
    required BuildContext context,
    required String code,
    String message = '',
    String language = 'Vi',
    String titleBtnCheck = 'Kiểm tra lại',
    String subTitle = '',
    Function()? onTapCheck,
  }) async {

    /// Demo show full screen
   await showGeneralDialog(
      context: context,
      barrierColor: Colors.black12.withOpacity(0.6), // Background color
      barrierDismissible: false,
      barrierLabel: 'Dialog',
      transitionDuration: Duration(milliseconds: 400),
      pageBuilder: (_, __, ___) {
        return Column(
          children: <Widget>[
            const Expanded(
              flex: 5,
              child: SizedBox.expand(child: FlutterLogo()),
            ),
            Expanded(
              flex: 1,
              child: SizedBox.expand(
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Dismiss'),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}