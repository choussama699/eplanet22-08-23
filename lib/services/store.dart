


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_planet_officiel/admin/add_product.dart';
import 'package:e_planet_officiel/presentation/ressources/strings_manager.dart';


import '../model/product.dart';

class Store{

  final _firestore = FirebaseFirestore.instance;

  addProduct(Product product,){
     _firestore.collection(AppString.product).add(
      {
        AppString.productName : product.pName,
        AppString.productPrice : product.pPrice,
        AppString.productCategory : product.pCategory,
        AppString.productDescription : product.pDescription,
        AppString.productLocation : product.pLocation,
      }
      
     );
  }
   
  Stream<QuerySnapshot> loadProduct() {
  
    return  _firestore.collection(AppString.product).snapshots();

   
    
   }
   
}