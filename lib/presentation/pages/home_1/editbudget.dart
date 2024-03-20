import'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:trackexpences/app/config/app_colors.dart';



class Editbudget extends StatefulWidget {
  const Editbudget({super.key});

  @override
  State<Editbudget> createState() => _EditbudgetState();
}
class _EditbudgetState extends State<Editbudget>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffEFEFEF),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(25),
          margin: const EdgeInsets.only(top: 50,right: 10,left: 10),
          child: Column(
            children: [
              Container(
                padding:const EdgeInsets.all(15),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("September", style: TextStyle(fontSize: 25,color:AppColors.blueLight)),
                              Text('2024', style: TextStyle(color:AppColors.blue)),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.cancel_rounded,color: Colors.black,size: 25),
                          onPressed: () {
                            Get.back();
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 50,),
                    const Text('Budget',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w300)),
                    const SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 30),
                      child: TextField(
                        style: const TextStyle(color: Color(0xff214FF1),fontSize: 25,fontWeight: FontWeight.w500),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter> [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        textAlign: TextAlign.center,
                        decoration:const InputDecoration(
                            fillColor: Color(0xff214FF1),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff214FF1) )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff8894F8) ))
                        ),
                      ),
                    ),
                    const SizedBox(height: 100,),
                  ],
                ),
              ),
             const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: Get.width,
                child:  ElevatedButton(
                  onPressed: () {Get.back();},
                  style: ElevatedButton.styleFrom(
                    foregroundColor:const Color(0xffC7D8FD),
                    backgroundColor: const Color(0xff214FF1),
                    shape:const  RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xff407BF7)),
                        borderRadius: BorderRadius.all(
                            Radius.circular(8))
                    ),
                  ),
                  child:const Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}