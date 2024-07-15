import 'package:flutter/material.dart';

class ResponsiveLayoutBuilder extends StatelessWidget {
  final Widget? mobile;
  final Widget? desktop;
  final Widget? tablet;

  const ResponsiveLayoutBuilder({super.key, this.desktop, this.tablet, this.mobile});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 450) {
          return mobile ?? const SizedBox();
        } else if (constraints.maxWidth <= 900) {
          return tablet ?? const SizedBox();
        } else {
          return desktop ?? const SizedBox();
        }
      },
    );
  }
}


//
// const Breakpoint(start: 0, end: 450, name: MOBILE),
// const Breakpoint(start: 451, end: 900, name: TABLET),
// const Breakpoint(start: 901, end: 1920, name: DESKTOP),
// const Breakpoint(start: 1921, end: double.infinity, name: '4K'),