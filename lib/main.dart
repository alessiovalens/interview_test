import 'package:flutter/material.dart';
import 'package:interview_test/auth_notifier.dart';
import 'package:interview_test/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AuthNotifier.instance.checkLogin();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
