import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/dashboad.dart';
import 'package:untitled1/registration.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(
          children: [
            Container(
              color: Colors.cyan[300],
              child: Expanded(child: Image(image: AssetImage('assets/images/R.gif'),)),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder:
                              (BuildContext context)=>Registration()));
                    },
                      child: Text("Sign Up",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),),),
                        side:MaterialStateProperty.all(BorderSide(
                          width: 4,
                          color: Colors.amber
                        ))

                      ),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(onPressed: (

                        ) {
                      Navigator.push(context, MaterialPageRoute(
                          builder:
                              (BuildContext context)=>DashBoard()));
                    },
                      child: Text("Log in",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.amber),
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
// Change your radius here
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),

                      ),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 80,),
            Text("Log in width",
                style: TextStyle(
                  color: Colors.cyan[300],
                  fontWeight: FontWeight.bold,
                  fontSize: 30,

                ),),

          ],
        ),
        bottomNavigationBar: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),),) ,
          child: Row(
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon:Icon(Icons.arrow_back_ios_sharp))
            ],
          ),
        )
          /*bottomNavigationBar:
          BottomNavigationBar(
          //  onTap: ,
              items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              label: 'Back',


            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business, color: Colors.black),
              label: 'My Downloads',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school, color: Colors.black),
              label: 'My Account',
            ),
          ])*/

        );



  }
}
