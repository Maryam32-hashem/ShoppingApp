import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shoppingapp/models/cart.dart';
class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(
          onPressed: (){
            context.pushReplacement('/catalog');
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.orange,),
        ),
        title: Text("Cart",style: TextStyle(
          fontFamily: 'Corben',
          fontWeight: FontWeight.w700,
          fontSize: 24,
          color: Colors.orange,
        ),),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.yellow,
        child: Column(
          children: [
            Expanded(child: Padding(
              padding: EdgeInsets.all(32),
              child: _MyCartList(),
            )),
            const Divider(height: 4,color: Colors.black,),
            _CartTotal()
          ],
        ),
      ),
    );
  }
}


class _MyCartList extends StatelessWidget {
  const _MyCartList({super.key});

  @override
  Widget build(BuildContext context) {
    var cart =context.watch<CartModel>();
    return ListView.builder(
        itemBuilder:(context,index)=>ListTile(
          title: Text(cart.products[index].name),
          leading:const Icon(Icons.done),
          trailing: IconButton(
            icon: Icon(Icons.remove_circle_outline),
            onPressed: (){
              cart.remove(cart.products[index]);
            },
          ),
        ),
      itemCount: cart.products.length,
    )
    ;
  }
}
class _CartTotal extends StatelessWidget {
  const _CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:  200,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           /* Consumer(
                builder: (context,cart,child)=>
            Text("\$${cart.totalPrice}")
        ),*/
            SizedBox(width: 24,),
            FilledButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                  padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
// Change your radius here
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar
                (SnackBar(content: Text("Buying not supported yet")));
            },
                child: Text("BUY",))
          ],
        ),
      ),
    );
  }
}


