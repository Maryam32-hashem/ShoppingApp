
// create data type called catageory
enum Category{
  all,
  clothes,
  accessories,
  home,
}
class Product{
  //constactor
 const Product({
    required this.category,
    required this.id,
    required this.name,
    required this.isFeatured,
    required this.price
});
  //attributes

final Category category ;
final int id;
final int price;
final String name;
final bool isFeatured;
//methoda
  //get method to return the pic
  // understand
String get assetName => '$id-0.jpg';
  String get assetPackage => 'shrine_images';
  // casting the id data type to name data type by inherient tostring function
  @override
String toString()=>'$name($id)';

}

//methoda
