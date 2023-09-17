import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shrine/models/products.dart';
import 'package:shrine/models/products_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text('SHERIN',style: TextStyle(
          color: Colors.black
        ),),
        leading: IconButton(
          color: Colors.black,
          onPressed: (){
            print('menue pressed');
          },
          icon: Icon(Icons.menu,semanticLabel: 'menue',),

        ),
        actions: [
            IconButton(
                color: Colors.black,
                onPressed: (){},
                icon: Icon(Icons.search,semanticLabel: 'search',)),
          IconButton(
              color: Colors.black,
              onPressed: (){},
              icon: Icon(Icons.tune,semanticLabel: 'search',)),

        ],
      ),
      body: GridView.count(
       crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 8.0/9.0,
        children:
   _buildGridBuilder(context)

      )
    );
  }
}
List <Card> _buildGridBuilder(BuildContext context){
List <Product> products= ProductsRepository.loadProducts(Category.all);
if(products.isEmpty){
  return const <Card>[];
}
final ThemeData theme = Theme.of(context);
//under stand
final NumberFormat formatter = NumberFormat.simpleCurrency(
    locale: Localizations.localeOf(context).toString());

return products.map((Product) => Card(
  elevation: 0.0,
  clipBehavior: Clip.antiAlias,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      AspectRatio(
          aspectRatio: 15.0/8.0,
      child: Image.asset(Product.assetName,
      package: Product.assetPackage,
      fit: BoxFit.fitWidth,),
      ),
      Expanded(child: Padding(
        padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(Product.name, style: theme.textTheme.button,
            softWrap: false,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,),
            SizedBox(height: 8,),
            Text(formatter.format(Product.price),style: theme.textTheme.bodySmall,)

          ],
        ),
      ))
    ],
  ),
)).toList();

}
/*List <Card> _buildGridCard(int count){
  List <Card> cards= List.generate(count,
          (int index) =>  Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(aspectRatio: 18.0 / 11.0,
                  child: Image.asset('assets/images/diamond.png'),),
                Padding(padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Title'),
                      SizedBox(height: 8,),
                      Text('secondary text')
                    ],
                  ),)
              ],
            ),
          ));
  return cards;
}*/
