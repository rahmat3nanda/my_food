import 'package:my_food/widget/pill_widget.dart';
import 'package:flutter/material.dart';

class PillGesture extends StatelessWidget {
  final GestureDragStartCallback onVerticalDragStart;
  final GestureDragUpdateCallback onVerticalDragUpdate;
  final GestureDragEndCallback onVerticalDragEnd;
  final Color? pillColor;

  const PillGesture({Key? key,
    required this.onVerticalDragStart,
    required this.onVerticalDragUpdate,
    required this.onVerticalDragEnd,
    required this.pillColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onVerticalDragStart: onVerticalDragStart,
      onVerticalDragUpdate: onVerticalDragUpdate,
      onVerticalDragEnd: onVerticalDragEnd,
      child: const SizedBox(
        width: double.infinity,
        child: PillWidget(),
      ),
    );
  }
}
