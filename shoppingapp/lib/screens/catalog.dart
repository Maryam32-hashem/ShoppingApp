import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shoppingapp/models/cart.dart';
import 'package:shoppingapp/models/cataloge.dart';
class MyCatalog extends StatelessWidget {
  const MyCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _AppBar(),
          const SliverToBoxAdapter(
            child: SizedBox(height: 12,),
          ),
          SliverList(delegate:SliverChildBuilderDelegate(
                  (context,index)=>_MyProductsList(index:index)) )
        ],
      )
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: (){
          context.pushReplacement('/login');
        },
        icon: Icon(
          Icons.arrow_back,
        color: Colors.orange,),
      ),
      title: Text("Catalog",style: TextStyle(
        fontFamily: 'Corben',
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: Colors.orange,
      ),),
      actions: [
        IconButton(onPressed:(){
          context.pushReplacement('/cart');
        },
            icon: Icon(Icons.shopping_cart,
            color: Colors.orange,),
    )
      ],
      floating: true,
    );
  }
}

class _AddButton extends StatelessWidget {
 final Product product;
  const _AddButton({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    var isInCart = context.select <CartModel,bool>((cart) =>cart.products.contains(product) );

    return TextButton(onPressed: isInCart
        ?null
        :(){ // it is not null so it true or false
      // If the item is not in cart, we let the user add it. (false)
      var cart = context.read<CartModel>();
      cart.add(product);
    },
        child: isInCart
    ?const Icon(Icons.check,semanticLabel: "ADDED",)
        // if the product already in the cart the button will be checked right
    :const Text("ADD",style:TextStyle(
          fontFamily: 'Corben',
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: Colors.orange,
        ),)
    );
  }
}


class _MyProductsList extends StatelessWidget {
  final int index;
  const _MyProductsList({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    var product = context.select<CatalogModel, Product>(
      // Here, we are only interested in the item at [index]. We don't care
      // about any other change.
          (catalog) => catalog.getByPosition(index),
    );
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
    child: LimitedBox(
      maxHeight: 48,
      child: Row(
        children: [
          AspectRatio(aspectRatio: 1,
          child: Container(
           // color: product.color,
            color: Colors.orangeAccent,
          ),),
          SizedBox(
            width: 24,
          ),
          Expanded(child: Text(
            product.name
          )),
          SizedBox(width: 24,),
          _AddButton(product: product,)

        ],
      ),
    ),);

  }
}
