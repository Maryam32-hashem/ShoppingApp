import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shoppingapp/models/cart.dart';
import 'package:shoppingapp/models/cataloge.dart';
import 'package:shoppingapp/screens/cart.dart';
import 'package:shoppingapp/screens/catalog.dart';
import 'package:shoppingapp/screens/login.dart';

void main() {
  runApp(const ShoppingApp());
}
GoRouter router(){
  return GoRouter(
      initialLocation: '/login',
      routes: [
    GoRoute(
        path: '/login',
    builder: (context,state)=>LogIn()),
    GoRoute(
        path: '/catalog',
        builder: (context,state)=>MyCatalog()),
    GoRoute(
        path: '/cart',
        builder: (context,state)=>MyCart()),

  ]);
}

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      Provider(create: (context)=>CatalogModel()),
      //ChangeNotifierProxyProvider<MyModel, MyChangeNotifier>(
      //   create: (_) => MyChangeNotifier(),
      //   update: (_, myModel, myNotifier) => myNotifier
      //     ..update(myModel),
      //   child: ...
      // );
    ChangeNotifierProxyProvider<CatalogModel,CartModel>(
        create: (context)=>CartModel(),
        update: (context,catalog,cart) {
          //not understand
          if (cart == null) throw ArgumentError.notNull('cart');
    cart.catalog = catalog;
    return cart;}
    )
    ],
    child: MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router(),
    ),);
  }
}


