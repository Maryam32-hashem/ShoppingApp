import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.cyan[300],
            ),
            child: Center(
              child: Text(
                "Registration",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.amber, width: 3)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.amber, width: 3)),
                  hintText: "Name",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 18)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.amber, width: 3)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.amber, width: 3)),
                  hintText: "E_mail",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 18)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.amber, width: 3)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.amber, width: 3)),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 18)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
               // Checkbox(value: value, onChanged: (){})
            ],),
              Column(children: [
                Text("Reminder",
                  style: TextStyle(color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold))
              ],),
              Column(children: [
                TextButton(onPressed: (){},
                    child:Text("Forget Password?",
                        style: TextStyle(color: Colors.cyan[300],
                            fontSize: 18,
                            fontWeight: FontWeight.bold)))
              ],),
            ],
          ),
          SizedBox(height: 15,),
          Container(
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(onPressed: (

                      ) {

                  },
                    child: Text("Sign Up",
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
    );
  }
}
