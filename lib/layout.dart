import 'package:flutter/material.dart';
import 'package:responsive_layout/responsive/breakpoint.dart';
import 'package:responsive_layout/responsive/responsive_center.dart';

import 'signin.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Center responsive'),
      ),
      body: const SingleChildScrollView(
        child: ResponsiveCenter(
          maxContentWidth: BreakPoint.tablet,
          padding: EdgeInsets.all(16),
          child: SignIn(),
        ),
      ),
    );
  }
}
