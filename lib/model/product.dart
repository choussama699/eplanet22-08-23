
import 'package:flutter/material.dart';

class Product{
  final String pName;
  final String pPrice;
  final String pDescription;
  final String pLocation;
  final String pCategory;


  Product({
    required this.pName,
    required this.pCategory,
    required this.pDescription,
    required this.pLocation,
    required this.pPrice,
  });
}