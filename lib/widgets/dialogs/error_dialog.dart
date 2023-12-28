import 'package:flutter/material.dart';
import 'package:video_app_admin/theme/index.dart';

class ErrorDialog extends StatelessWidget {
  final String header;
  final String description;

  const ErrorDialog({
    super.key,
    required this.header,
    required this.description,
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
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    );
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
              child: Image.asset("assets/icons/error.png",
                fit: BoxFit.cover,
              ),
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
            SizedBox(
              height: 42,
              width: double.maxFinite,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  disabledBackgroundColor: Colors.grey,
                  backgroundColor: Colors.black,
                  shape: shape,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Хаах", style: Styles.alertButton),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
