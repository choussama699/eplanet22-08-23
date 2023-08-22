import 'package:flutter/material.dart';

import '../presentation/ressources/color_manager.dart';
import '../presentation/ressources/font_manager.dart';
import '../presentation/ressources/strings_manager.dart';
import '../presentation/ressources/styles_manager.dart';
import '../presentation/ressources/values_manager.dart';

class CustomTextField extends StatelessWidget {

  final String hint;
   Function(String) onClick;

   CustomTextField({required this.hint, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      validator: (value){
        if(value!.isEmpty){
          return "Ematy fiel";
        }
      
      },
      onSaved: onClick(''),
    
      obscureText: hint == AppString.writeYourPass ? true : false,

      decoration: InputDecoration(
        hintText: hint,
    
    
    hintStyle: getLightText(color: ColorManager.dark,fontSize: FontSize.s11_17),
    
    filled: true,
    fillColor: ColorManager.sevenGrey,
      enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorManager.enabledborder,),  
     borderRadius: BorderRadius.all(Radius.circular(AppSize.s7_14)),
     ),
     focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorManager.threeGrey,width: AppSize.s0_5),  
     borderRadius: BorderRadius.all(Radius.circular(AppSize.s7_14)),
      
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorManager.threeGrey,width: AppSize.s0_5),  
     borderRadius: BorderRadius.all(Radius.circular(AppSize.s7_14)),
        ),
      
        focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorManager.threeGrey,width: AppSize.s0_5),  
     borderRadius: BorderRadius.all(Radius.circular(AppSize.s7_14)),
        ),
    ),);
  }
}
