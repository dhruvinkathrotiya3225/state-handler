import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering/provider/cartprovider.dart';
import 'package:food_ordering/view/screens/cartpage.dart';
import 'package:food_ordering/view/screens/detail_page.dart';
import 'package:food_ordering/view/screens/homepage.dart';
import 'package:food_ordering/view/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
      ],
      builder: (_, context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: "Splash_Screen",
          routes: {
            "/": (context) => HomePage(),
            "Splash_Screen": (context) => Splash_Screen(),
            "CartPage": (context) => CartPage(),
            "DetailPage": (context) => DetailPage(),
          },
        );
      },
    ),
  );
}
