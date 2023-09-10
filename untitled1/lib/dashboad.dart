import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(

      ),
      bottomNavigationBar: Container(
    height: 60,
    decoration: BoxDecoration(
    color: Theme.of(context).primaryColor,
    borderRadius: const BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),),) ,
          child: Row(
          children: [
            IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back_ios_sharp))
        ],
      ),
    ));
  }
}
