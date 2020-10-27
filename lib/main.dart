import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/wrapper.dart';
import 'services/auth.dart';

Future<void> main() async {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
