import 'package:flutter/material.dart';
import 'package:myapp/auth/start.dart';
import 'package:myapp/model/restraunt.dart';
import 'package:myapp/themes/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => Restraunt()),
    ], child: const MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: darkMode,
        home: const Start());
  }
}
