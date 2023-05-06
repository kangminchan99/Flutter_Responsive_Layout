import 'package:flutter/material.dart';
import 'package:responsive_layout/responsive/breakpoint.dart';

class ResponsiveCenter extends StatelessWidget {
  const ResponsiveCenter(
      {super.key,
      this.maxContentWidth = BreakPoint.tablet,
      this.padding = EdgeInsets.zero,
      required this.child});
  final double maxContentWidth;
  // EdgeInsetsGeometry - 위젯에 inner padding과 outer padding을 주기 위해서 사용
  final EdgeInsetsGeometry padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: maxContentWidth,
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
