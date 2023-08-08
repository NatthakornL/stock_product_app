import 'package:flutter/material.dart';

import 'button_alert.dart';

class PopAlertDialog extends StatelessWidget {
  const PopAlertDialog({
    Key? key,
    this.titleMessage = "",
    this.contentMessage = "",
    this.cancelButton = false,
    this.cancelText = "Cancel",
    this.onCancel,
    this.submitButton = false,
    this.submitText = "Submit",
    this.onSubmit,
    this.submitColor,
  }) : super(key: key);

  final String titleMessage;
  final String contentMessage;
  final bool cancelButton;
  final String cancelText;
  final VoidCallback? onCancel;
  final bool submitButton;
  final String submitText;
  final VoidCallback? onSubmit;
  final Color? submitColor;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: const EdgeInsets.all(50),
      contentPadding: const EdgeInsets.all(50),
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
        child: Text(titleMessage,
          style: TextStyle(
            decoration: TextDecoration.underline,
            fontSize: 60
          ),
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          !contentMessage.isEmpty
              ? Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(contentMessage,
                      style: TextStyle(
                        fontSize: 60
                      ),
                    ),
                  ),
                )
              : const SizedBox.shrink(),
          const SizedBox(height: 50),
          Row(
            children: [
              cancelButton == true
                  ? Expanded(
                      child: ButtonAlert(
                        onTap: onCancel,
                        height: 100,
                        width: 100,
                        backgroundColor: Colors.grey,
                        child: Text(
                          cancelText,
                          style: const TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
              cancelButton == true && submitButton == true
                  ? const SizedBox(width: 10)
                  : const SizedBox.shrink(),
              submitButton == true
                  ? Expanded(
                      child: ButtonAlert(
                        onTap: onSubmit,
                        height: 100,
                        width: 100,
                        backgroundColor: submitColor != null
                            ? submitColor!
                            : const Color(0xff0066ff),
                        child: Text(
                          submitText,
                          style: const TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ],
      ),
      buttonPadding: EdgeInsets.zero,
    );
  }
}
