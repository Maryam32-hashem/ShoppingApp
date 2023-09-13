import 'dart:ui';

import 'package:flutter/cupertino.dart';


class CatalogModel {
   List<String> productName =[
     'Code Smell',
     'Control Flow',
     'Interpreter',
     'Recursion',
     'Sprint',
     'Heisenbug',
     'Spaghetti',
     'Hydra Code',
     'Off-By-One',
     'Scope',
     'Callback',
     'Closure',
     'Automata',
     'Bit Shift',
     'Currying',
  ];
   //method to return id and the name of the product
   Product getById (int id ){
    return Product(id,productName[id % productName.length]); //when divide the id of the item on item's list will return it's index then it's name
   }
   //method to define that the id of product is it's position
Product getByPosition(int position){
     return getById(position); // as getById method also from Product type
}

}

class Product {
  //attributes of product item
  late final int id;
  late String name;
  int price = 50;
  late Color color;
  //constractor of the class to pass the data
Product(this.id,this.name);
////////////////////////////// not understand
  @override
  int get hashCode => id;
  @override
  bool operator ==(Object other) => other is Product && other.id == id;
}