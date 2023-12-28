import 'package:flutter/material.dart';
import 'package:video_app_admin/theme/index.dart';

class ConfirmDialog extends StatelessWidget {
  final String header;
  final String description;
  final Function onConfirm;

  const ConfirmDialog({
    super.key,
    required this.header,
    required this.description,
    required this.onConfirm,
  });

  void show(BuildContext context) {
    showDialog(
      context: context,
      useRootNavigator: false,
      barrierDismissible: true,
      builder: (_) => this,
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = 400.0;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      backgroundColor: Colors.white,
      insetAnimationDuration: const Duration(seconds: 2),
      insetAnimationCurve: Curves.decelerate,
      child: Container(
        height: 240,
        width: width,
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 60,
              width: 60,
              child: Image.asset("assets/icons/warning.png", fit: BoxFit.cover),
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(header,
                    textAlign: TextAlign.center,
                    style: Styles.alertTitle,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                  child: SingleChildScrollView(
                    child: Text(description,
                      textAlign: TextAlign.center,
                      style: Styles.alertDescription,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Container(
              width: width,
              height: 42,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: (width) * 0.25,
                      height: 42,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Styles.grey500),
                        borderRadius: BorderRadius.circular(10),
                        color: Styles.white,
                      ),
                      child: const Text('Үгүй', style: Styles.normalGreyText),
                    ),
                  ),
                  const SizedBox(width: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      onConfirm();
                    },
                    child: Container(
                      width: (width) * 0.25,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Styles.black,
                      ),
                      child: const Text('Тийм', style: Styles.normalWhiteText),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
