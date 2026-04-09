import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PortalEntry extends ConsumerWidget {
  final String title;
  final Widget home;

  const PortalEntry({super.key, required this.title, required this.home});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: title,
      home: home,
    );
  }
}
