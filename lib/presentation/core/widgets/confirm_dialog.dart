import 'package:flutter/material.dart';

class ConfirmDialog {
  static const cancelText = 'Abbrechen';
  static const acceptText = 'Ok';

  static void show(
    BuildContext context, {
    @required String title,
    @required String content,
    @required Function() onAccept,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            FlatButton(
              child: Text(cancelText),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text(acceptText),
              onPressed: () {
                Navigator.of(context).pop();
                onAccept();
              },
            )
          ],
        );
      },
    );
  }
}
