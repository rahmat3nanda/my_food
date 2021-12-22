import 'package:my_food/dialog/slide_dialog/slide_dialog.dart';
import 'package:flutter/material.dart';

Future showSlideDialog<T>({
  required BuildContext context,
  required Widget child,
  Color? barrierColor,
  bool? barrierDismissible = true,
  Duration? transitionDuration = const Duration(milliseconds: 300),
  Color? pillColor,
  Color? backgroundColor,
}) {

  return showGeneralDialog(
    context: context,
    pageBuilder: (context, animation1, animation2) {
      return Container();
    },
    barrierColor: barrierColor ?? Colors.black.withOpacity(0.7),
    barrierDismissible: barrierDismissible!,
    barrierLabel: "Dismiss",
    transitionDuration: transitionDuration!,
    transitionBuilder: (context, animation1, animation2, widget) {
      final curvedValue = Curves.easeInOut.transform(animation1.value) - 1.0;
      return Transform(
        transform: Matrix4.translationValues(0.0, curvedValue * -300, 0.0),
        child: Opacity(
          opacity: animation1.value,
          child: SlideDialog(
            child: child,
            pillColor: pillColor ?? Colors.blueGrey[200]! ,
            backgroundColor: backgroundColor ?? Theme.of(context).canvasColor,
          ),
        ),
      );
    },
  );
}