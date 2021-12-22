import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  final Function()? onTap;
  final Widget child;
  final Color? color;
  final double? width;
  final BoxBorder? border;

  const ButtonWidget({
    Key? key,
    required this.onTap,
    required this.child,
    this.color,
    this.width,
    this.border,
  }) : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Ink(
      width: widget.width,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
        border: widget.border,
        boxShadow: [
          if (widget.color != null)
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 3),
            ),
        ],
      ),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: widget.child,
        ),
        onTap: widget.onTap,
      ),
    );
  }
}
