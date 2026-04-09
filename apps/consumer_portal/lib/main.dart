import 'package:app_shell/app_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: ConsumerPortalApp()));
}

class ConsumerPortalApp extends StatelessWidget {
  const ConsumerPortalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const PortalEntry(
      title: 'Mercosur Consumer Portal',
      home: Scaffold(
        body: Center(child: Text('Consumer portal ready.')),
      ),
    );
  }
}
