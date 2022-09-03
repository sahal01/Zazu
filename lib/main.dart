import 'package:flutter/material.dart';
import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'screens/SplashScreen/splashscreen.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
   FlutterBranchSdk.validateSDKIntegration();
  runApp(const ProviderScope(child: MyApp()));}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZUZU',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
