import 'package:core/constants/settings.dart';
import 'package:flutter/material.dart';

class BreakPointWidget extends StatefulWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? tabletMargin;
  const BreakPointWidget(
      {super.key, required this.child, this.margin, this.tabletMargin});

  @override
  State<BreakPointWidget> createState() => _BreakPointWidgetState();
}

class _BreakPointWidgetState extends State<BreakPointWidget> {
  @override
  Widget build(BuildContext context) {
    double mediaWidth = MediaQuery.of(context).size.width;
    bool isOver = BreakPoints.lowWidth < mediaWidth;
    double width = isOver ? BreakPoints.lowWidth : mediaWidth;
    double margin = (mediaWidth - width) / 2;
    return Padding(
      padding: isOver
          ? widget.tabletMargin ?? EdgeInsets.symmetric(horizontal: margin)
          : widget.margin ?? const EdgeInsets.symmetric(horizontal: 16),
      child: widget.child,
    );
  }
}
