import 'package:flutter/material.dart';


class ChangpwPage extends StatefulWidget {
  const ChangpwPage({super.key});

  @override
  State<ChangpwPage> createState() => _ChangpwState();
}

class _ChangpwState extends State<ChangpwPage> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                textAlign: TextAlign.center,
                  'Change Password',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff214FF1)
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const TextField(
                decoration: InputDecoration(
                  label: Text('Old Password'),
                  labelStyle: TextStyle(
                    color: Color(0xff214FF1),
                    fontSize: 16,),
                  floatingLabelStyle: TextStyle(
                    color: Color(0xff8894F8),
                    fontSize: 18,),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff214FF1) )),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff8894F8) ))
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const TextField(
                decoration: InputDecoration(
                    label: Text('New Password'),
                    labelStyle: TextStyle(
                      color: Color(0xff214FF1),
                      fontSize: 16,),
                    floatingLabelStyle: TextStyle(
                      color: Color(0xff8894F8),
                      fontSize: 18,),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff214FF1) )),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff8894F8) ))
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const TextField(
                decoration: InputDecoration(
                    label: Text('Confirm Password'),
                    labelStyle: TextStyle(
                      color: Color(0xff214FF1),
                      fontSize: 16,),
                    floatingLabelStyle: TextStyle(
                      color: Color(0xff8894F8),
                      fontSize: 18,),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff214FF1) )),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff8894F8) ))
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 200,
                height: 45,
               child:ElevatedButton (
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      foregroundColor:const Color(0xffffffff),
                      backgroundColor:const  Color(0xff214FF1),
                      shape:const  RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(8))
                      )
                  ),
                  child:  const Text('Confirm'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}