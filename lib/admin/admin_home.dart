

import 'package:e_planet_officiel/widgets/button.dart';
import 'package:flutter/material.dart';

import '../presentation/ressources/color_manager.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, 
            style: buttonAdmin,
            child: Text("Add Product"),
            ),
          SizedBox(height: 15,),
            ElevatedButton(onPressed: (){}, 
            style: buttonAdmin,
            child: Text("Edit Product"),
            ),
          SizedBox(height: 15,),
            ElevatedButton(onPressed: (){}, 
            style: buttonAdmin,
            child: Text("View Orders"),
            ),
          ],
        ),
      ),
    );
  }
}