import 'package:flutter/cupertino.dart';
import 'package:shoppingapp/models/cataloge.dart';

class CartModel extends ChangeNotifier{

  //create object from CatalogModel class
  late CatalogModel _catalog ;

  //create the id of products in list
List <int> _productId =[];

// return the assigned object(product name or id) in get method
// the type of this get method is CatalogModel
CatalogModel get catalog =>_catalog;

// now _catalog object must return the name of selected product,
// and we assigned it in catalog method so for more scure the data
// will use setter
//method to set the catalog method  value as it contain the product name or getId method in
// newCatalog
void set catalog(CatalogModel newCatalog){
  _catalog=newCatalog;

  // listen this function
  notifyListeners();
}
//to make a list of products id in tha cart
// will return the ids of product by get method
// the get method will return data type (list)
List get products => _productId. map((id) => _catalog.getById(id)).toList();


// to get the price of the product
num get totalPrice => products.fold(0, (total, current) =>total+current.price);
// to add the product in the cart
  // use add function as _productId is list and product.id is int
void add (Product product){
  _productId.add(product.id);
  notifyListeners();
}
//to remove product from the cart
  void remove (Product product){
    _productId.remove(product.id);
    notifyListeners();
  }
}