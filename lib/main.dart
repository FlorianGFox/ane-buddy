import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';
import 'presentation/profile/pages/profile_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ane Buddy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProfilePage(),
    );
  }

  @override
  void dispose() {
    disposeInjection();
    super.dispose();
  }
}
