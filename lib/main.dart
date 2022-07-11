import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/SplashScreen/splashscreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [],
      child: MaterialApp(
        title: 'ZUZU',
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
