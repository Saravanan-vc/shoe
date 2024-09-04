import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

class ShwoeCaseView extends StatelessWidget {
  final GlobalKey fkey;
  final String description;
  final Widget child;
  const ShwoeCaseView({
    super.key,
    required this.fkey,
    required this.description,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Showcase(key: fkey, description: description, child: child);
  }
}
