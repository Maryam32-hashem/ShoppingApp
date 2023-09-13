import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome",style:TextStyle(
                fontFamily: 'Corben',
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: Colors.orange,
              ),),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "User Name",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.amber, width: 3)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.amber, width: 3)),

                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Password",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.amber,width: 3),),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber,width: 3),
                    borderRadius: BorderRadius.circular(20)
                  )


                ),
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: (){ context.pushReplacement('/catalog');},
                  child: Text("Log in"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                  padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
// Change your radius here
                      borderRadius: BorderRadius.circular(20),
                    ),
                ),
              )),

            ],
          ),

        ),
      ),
    );
  }
}
