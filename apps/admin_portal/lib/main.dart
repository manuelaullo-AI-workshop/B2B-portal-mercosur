import 'package:app_shell/app_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: AdminPortalApp()));
}

class AdminPortalApp extends StatelessWidget {
  const AdminPortalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const PortalEntry(
      title: 'Mercosur Admin Portal',
      home: Scaffold(
        body: Center(child: Text('Admin portal ready.')),
      ),
    );
  }
}
