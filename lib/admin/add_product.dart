import 'package:flutter/material.dart';

import '../model/product.dart';
import '../presentation/ressources/color_manager.dart';
import '../presentation/ressources/font_manager.dart';
import '../presentation/ressources/styles_manager.dart';
import '../presentation/ressources/values_manager.dart';
import '../services/store.dart';
import '../widgets/button.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  late String _name, _price, _imageLocation, _category, _description;
  final _store = Store();
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _globalKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 90),
            child: ListView(
              children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 15),

                //product name
                // ====================================================>
    child: TextFormField(
      
    validator: (value){
        if(value!.isEmpty){return "Ematy fiel";}},
    onSaved: (value){_name = value!;},
    decoration: InputDecoration(
    hintText: "Name product",
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
    ),)
              ),
            
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 15),

               
               //product price 
               //================================>

    child: TextFormField(
      
    validator: (value){
        if(value!.isEmpty){return "Ematy fiel";}},
    onSaved: (value){ _price = value!;},
    decoration: InputDecoration(
    hintText: "price product",
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
    ),)
              ),
                
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 15),

                //product category
               // ====================================>
                child: TextFormField(
      
    validator: (value){
        if(value!.isEmpty){return "Ematy fiel";}},
    onSaved: (value){_category = value!;},
    decoration: InputDecoration(
    hintText: "category product", 
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
    ),)
              ),
                
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 15),

                //description product 
                //===========================>
                child: TextFormField(
      
    validator: (value){
        if(value!.isEmpty){return "Ematy fiel";}},
    onSaved: (value){_description = value!;},
    decoration: InputDecoration(
    hintText: "descriptoin product",
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
    ),)),
                
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 15),

                //image location
                //===============================>


    child: TextFormField(
    validator: (value){
        if(value!.isEmpty){return "Ematy fiel";} },
    onSaved: (value){_imageLocation = value!;},
    decoration: InputDecoration(
    hintText: "location image product",
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
    ),)
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 20),
                child: ElevatedButton(
                    style: buttonAdmin,
                    child: Text("Add Product"),
                    onPressed: (){
                      if(_globalKey.currentState!.validate()){
                        _globalKey.currentState!.save();

                        _store.addProduct(
                         Product(
                          pName: _name,
                          pCategory: _category, 
                          pDescription: _description, 
                          pLocation: _imageLocation, 
                          pPrice: _price)
                          );
                          print("successsssssssssssss");
                          print(_name);
                          

                      }
                    },
                    ),
              ),
            ],),
          ),
        ),
      ),
    );
  }
}