import 'package:flutter/material.dart';
import 'package:untitled1/login.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
//home: MyScaffold(),
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const MyScaffold(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const LogIn(),
      },

      //Define the routs
      /*initialRoute: '/',
      routes:
      {
        '/':(context)=>HomePage(),
        '/second':(context)=>LogIn()
      },*/
    );
  }
}

class MyScaffold extends StatefulWidget {
  const MyScaffold({super.key});

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width ,
        decoration: BoxDecoration(
          color: Colors.cyan[300],
         // borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: [

            SizedBox(
              height: 100,
            ),
            Text("WELCOME!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Colors.white
              ),
            ),
            SizedBox(
              height:20 ,
            ),
            Column(
              children: [
                Text("You can study various ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white
                  ),
                ),
                Text("sciences right at home",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(child: Image(image: AssetImage('assets/images/R.gif'),height: 50,)),

            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, '/second');
                     // Navigator.pushNamed(context, '/second');
                     /* Navigator.push(context, MaterialPageRoute(
                          builder:
                          (BuildContext context)=>LogIn()));*/
                    },
                      child: Text("LET'S GO!",
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

          ],
        ),
      ),
    );
  }
}
