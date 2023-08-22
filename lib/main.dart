
import 'package:e_planet_officiel/admin/add_product.dart';
import 'package:e_planet_officiel/presentation/login/login_view.dart';
import 'package:e_planet_officiel/presentation/registre/registre_view.dart';
import 'package:e_planet_officiel/presentation/ressources/theme_manager.dart';
import 'package:e_planet_officiel/admin/admin_home.dart';
import 'package:e_planet_officiel/test_loaddata.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';






void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme : getApplicationTheme(),
      home: LoadData(),
      routes: {
        "signup":(context) => SignupView(),
        "login":(context) => LoginView(),
      },
      
      
      
    );
  }
}
