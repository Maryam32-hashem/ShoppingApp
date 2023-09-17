import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shrine/colors/colors.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _usernameControoler=TextEditingController();
  final _passwordControoler=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [

            Column(
              children: [
                SizedBox(height: 80,),
                Image.asset('assets/images/diamond.png'),

                SizedBox(height: 16,),
                Text('SHRINE',style: Theme.of(context).textTheme.headlineSmall,),
                SizedBox(height: 120,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Userame',
                      floatingLabelStyle: TextStyle(
                        color: kShrineBrown900,
                      ),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2.0,
                            color: kShrineBrown900,
                          )
                      )

                  ),
                  controller: _usernameControoler,
                ),
                SizedBox(height: 12,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                      floatingLabelStyle: TextStyle(
                        color: kShrineBrown900,
                      ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                        color: kShrineBrown900,
                      )
                    )
                  ),
                  obscureText: true,
                  controller: _passwordControoler,
                ),
                OverflowBar(
                 alignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: (){
                          _passwordControoler.clear();
                          _usernameControoler.clear();
                        },
                        child: Text('CANCEL'),
                      style:TextButton.styleFrom(
                        foregroundColor: kShrineBrown900,
                     //   backgroundColor: kShrinePink100,
                       // elevation: 8.0,
                      )
                    ),

                    ElevatedButton(onPressed:(){
                      context.pushReplacement('/home');
                    },
                        child: Text('NEXT'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: kShrineBrown900,
                        backgroundColor: kShrinePink100,
                        elevation: 8.0,
                      ),),

                  ],
                )


              ],
            )
          ],
        ),
      ),
    );
  }
}
