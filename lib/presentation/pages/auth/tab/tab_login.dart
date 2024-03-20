import 'package:flutter/material.dart';
import 'package:trackexpences/presentation/pages/home/home_page.dart';

class TabLogin extends StatelessWidget {
  const TabLogin({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: SingleChildScrollView(
        reverse:true,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child:  Column(
            children: [
               const SizedBox(
                height:100,
               ),
              Container(
                child:const Padding(
                  padding:  EdgeInsets.fromLTRB(24, 0, 24, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text('E-mail'),
                      labelStyle: TextStyle(
                        color: Color(0xff214FF1),
                        fontSize: 16,),
                      floatingLabelStyle: TextStyle(
                        color: Color(0xff8894F8),
                        fontSize: 18,),
                      hintText:'jonhsnow@gmail.com',
                      hintTextDirection: TextDirection.ltr,
                      hintStyle: TextStyle(
                        color: Color(0xff214FF1),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff214FF1) )),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff8894F8) ))
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height:25,
              ),
              Container(
                child:const Padding(
                  padding:  EdgeInsets.fromLTRB(24, 0, 24, 0),
                  child: TextField(
                    decoration: InputDecoration(
                        label: Text('Password'),
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
                ),
              ),
              const SizedBox(
                height:130,
              ),
              SizedBox(
                width: 250,
                height: 45,

                child: ElevatedButton(
                  onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context){
                      return const HomePage();
                    },
                  ));
                },
                  style: ElevatedButton.styleFrom(
                      foregroundColor:Color(0xffffffff),
                      backgroundColor: Color(0xff214FF1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(8))
                      )
                    ),
                  child:  const Text('Log in'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
