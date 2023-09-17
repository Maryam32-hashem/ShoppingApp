import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shrine/screens/home.dart';
import 'package:shrine/screens/login.dart';

void main() {
  runApp(SherinApp());
}
GoRouter router(){
  return GoRouter(
    initialLocation: '/login',
      routes: [
    GoRoute(
        path: '/login',
    builder: (context,state)=>LogIn()),
    GoRoute(
        path: '/home',
        builder: (context,state)=>HomePage()),
  ]);
}



class SherinApp extends StatelessWidget {
  const SherinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router(),

    );
  }

}

