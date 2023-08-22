import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_planet_officiel/presentation/ressources/strings_manager.dart';
import 'package:e_planet_officiel/services/store.dart';
import 'package:flutter/material.dart';

import 'model/product.dart';

class LoadData extends StatefulWidget {
  const LoadData({super.key});

  @override
  State<LoadData> createState() => _LoadDataState();
}

class _LoadDataState extends State<LoadData> {
  @override
  Store _store = Store();
  List<Product> products = [];
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[300],elevation: 0,title: Text('hello'),),
      body: StreamBuilder<QuerySnapshot>(
        stream: _store.loadProduct(),
        builder: (context, snapshot) {
         if(snapshot.hasData){
         List<Product> products = [];
         for(var doc in snapshot.data!.docs){
          
          Map data = doc.data();
          

      

          
            products.add(Product(
            pName:  AppString.productName,
            pCategory: AppString.productCategory,
            pDescription: AppString.productDescription,
            pLocation: AppString.productLocation,
            pPrice: AppString.productPrice));


         }



          return  ListView.builder(
          itemCount: snapshot.data!.size,
          itemBuilder: (context, index){
            Text(products[index].pName,
            style: TextStyle(color: Colors.black),);
            print("===========================================");
           // print(products[index].pName);
            
          } 
          );
         }
         else return Text("Loading");
        }
        
      ),
    );
  }
  @override
  void initState() {
    super.initState();
    getProducts();
  }

   getProducts() async{
 
  products = (await _store.loadProduct()) as List<Product>;
  }
}


