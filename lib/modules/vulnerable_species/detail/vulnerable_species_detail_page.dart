import 'package:flutter/material.dart';
import 'package:interview_test/auth_notifier.dart';

class VulnerableSpeciesDetailPage extends StatelessWidget {
  const VulnerableSpeciesDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: AuthNotifier.instance.logout,
            icon: const Icon(Icons.logout_outlined),
          ),
        ],
      ),
      body: Text('aaaaa'),
    );
  }
}
