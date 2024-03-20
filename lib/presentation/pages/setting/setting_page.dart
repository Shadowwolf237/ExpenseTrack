import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:trackexpences/app/config/app_assets.dart';
import 'package:trackexpences/app/config/app_colors.dart';
import 'package:trackexpences/presentation/pages/auth/tab/tab_login.dart';
import 'package:trackexpences/presentation/pages/setting/PW/change_pw.dart';
import 'package:trackexpences/presentation/pages/setting/PW/code_pin.dart';

class SettingPage extends StatefulWidget{
  const SettingPage ({super.key});

  @override
  State<SettingPage> createState() => _SettingState();
}

class _SettingState extends State<SettingPage>{
  bool ValD1 = false;
  onchangeFunction(bool newvalue1){
    setState(() {
      ValD1 = newvalue1;
    });
  }
  Widget build (BuildContext context){
    return  Scaffold(
      backgroundColor: AppColors.white,
      body:   SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 5,left: 5,top: 0,bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Container(
                padding:const EdgeInsets.all(15),
                height:Get.height/2 ,
                width: Get.width,
                decoration: const  BoxDecoration(
                  color: Color(0xff214FF1),
                  borderRadius:   BorderRadius.only(topLeft:Radius.circular(5),topRight:Radius.circular(5)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Setting", style: TextStyle(fontSize: 40,color:Color(0xffF8F8F8))),
                        SizedBox(
                          width: Get.width/3.5,

                          child: ElevatedButton(onPressed: () {
                            Get.to(const TabLogin());
                          },
                            child:const Text('Log out'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor:Colors.white,
                              backgroundColor:const Color(0xff214FF1),
                              shape:const  RoundedRectangleBorder(
                                  side: BorderSide(color: Color(0xffEFEFEF)),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(8))
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(flex: 3,),
                    Text('E-mail', style: TextStyle(color:Color(0xffF8F8F8))),
                    const SizedBox(height: 20,),
                    Text('jonhsnow@gmail.com',style: TextStyle(color:Color(0xffF8F8F8))),
                    const Spacer(flex: 1,),
                  ],
                ),
              ),
              //Divider(height: 0, thickness: 0),
              const SizedBox(height: 40,),
              Changepwd(context, 'Change PassWord'),
              const SizedBox(height:20),
              CodPin(context, 'Code Pin'),
              const SizedBox(height:20),
              Container(
                  padding:const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text('Currency',style: TextStyle(fontSize: 16))),
              const SizedBox(height:10,),
              Currency(context, 'US DOllars'),
            ],
          ),
        ),
      ),
    );
  }
  //Dark theme
  Padding  Dark(String title,bool value,Function onChangeMethod){
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: const TextStyle(
            fontSize: 16,
            color: Colors.black
          ),),
          Transform.scale(
            scale:0.7,
            child: CupertinoSwitch(
              activeColor: Color(0xff214FF1),
              trackColor: Color(0xff8894F8),
              value: value,
              onChanged: (bool newValue){
                onChangeMethod(newValue);
              },
            ),
          )
        ],
      ),
    );
  }
  //change password
  Padding Changepwd(BuildContext context, String title){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context){
              return const ChangpwPage();
            },
          ));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: const TextStyle(
              fontSize: 16,
              color:Colors.black,
            ),),
             ImageIcon(AssetImage(AppAssets.forwardIcon),color: Color(0xff8894F8),)
          ],
        ),
      ),
    );
  }
  //code pin
  Padding  CodPin (BuildContext context, String title){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context){
              return const CodepinPage();
            },
          ));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: const TextStyle(
              fontSize: 16,
              color:Colors.black,
            ),),
            ImageIcon(AssetImage(AppAssets.forwardIcon),color: Color(0xff8894F8),)
          ],
        ),
      ),
    );
  }
  Padding  Currency (BuildContext context, String title){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context){
              return const CodepinPage();
            },
          ));
        },
        child: Row(
          children: [
            const SizedBox(width: 10,),
            ImageIcon(AssetImage(AppAssets.usdIcon),color: AppColors.blueLight,),
            Text(title,style:  TextStyle(
              fontSize: 16,
              color:AppColors.blueLight,
            ),),
            const SizedBox(width: 170,),
            ImageIcon(AssetImage(AppAssets.forwardIcon),color: Color(0xff8894F8),)
          ],
        ),
      ),
    );
  }
}