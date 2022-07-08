import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Providers/Cartprovider/Cartprovider.dart';
import 'Providers/Homeprovider/HomeProvider.dart';
import 'Providers/Productdetailpageprovider/ProductDetailPageProvider.dart';
import 'Providers/ProviderChangePassword/ProviderChangePassword.dart';
import 'Providers/loginprovider/LoginProvider.dart';
import 'screens/SplashScreen/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZUZU',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
