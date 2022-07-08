import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'Cartprovider/Cartprovider.dart';
import 'Homeprovider/HomeProvider.dart';
import 'Productdetailpageprovider/ProductDetailPageProvider.dart';
import 'ProviderChangePassword/ProviderChangePassword.dart';
import 'loginprovider/LoginProvider.dart';

final loginProvider = ChangeNotifierProvider((ref) => LoginProvider());
final homeProvider = ChangeNotifierProvider((ref) => HomeProvider());
final productDetailesProvider =
    ChangeNotifierProvider((ref) => ProductDetailPageProvider());
final cartprovider = ChangeNotifierProvider((ref) => CartProvider());
final changePasswordProvider =
    ChangeNotifierProvider((ref) => ProviderChangePassword());
