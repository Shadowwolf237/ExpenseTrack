import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:trackexpences/app/config/app_assets.dart';
import 'package:trackexpences/app/config/app_colors.dart';
import 'package:trackexpences/presentation/pages/Stats/DetailExpenses/expenses_detail.dart';
import 'package:trackexpences/presentation/pages/Stats/Filter/fliter.dart';



class ExpensesPage extends StatefulWidget {
  const ExpensesPage({super.key});

  @override
  State<ExpensesPage> createState() => _ExpensesState();
}

class _ExpensesState extends State<ExpensesPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffEFEFEF),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 15,left: 15,top: 25,bottom: 20),
          child: Column(
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
                  SizedBox(
                    width: Get.width/4,

                    child: ElevatedButton(onPressed: () {
                      Get.to(const FilterPage());
                    },
                      child:const Text('Filter'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor:const Color(0xff214FF1),
                        backgroundColor: Colors.white,
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
              Container(
                child: SizedBox(
                  width: Get.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(const ExpensesDetail());
                    },
                    style: ElevatedButton.styleFrom(
                        foregroundColor:AppColors.blue,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: AppColors.blue),
                            borderRadius:const  BorderRadius.all(
                                Radius.circular(8))
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('1st',style: TextStyle(color: AppColors.blueLight)),
                        const Spacer(flex: 1, ),
                        const Text('Sunday',),
                        const Spacer(flex: 1, )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 1, ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10,top: 10),
                    child: ImageIcon(AssetImage(AppAssets.billsIcon),color: AppColors.blueLight, ),
                  ),
                  const Spacer(flex: 1, ),
                  Container(
                      width: Get.width/1.5,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10,left:10,bottom: 10,top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Bills",style: TextStyle(fontSize: 18)),
                            const Spacer(flex: 1, ),
                            Text('500',style: TextStyle(color: AppColors.blueLight,fontSize: 18),),
                          ],
                        ),
                      )
                  ),
                ],
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 1, ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10,top: 10),
                    child: ImageIcon(AssetImage(AppAssets.foodIcon),color: AppColors.blueLight, ),
                  ),
                  const Spacer(flex: 1, ),
                  Container(
                      width: Get.width/1.5,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10,left:10,bottom: 10,top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Food",style: TextStyle(fontSize: 18)),
                            const Spacer(flex: 1, ),
                            Text('500',style: TextStyle(color: AppColors.blueLight,fontSize: 18),),
                          ],
                        ),
                      )
                  ),
                ],
              ),
              Container(
                child: SizedBox(
                  width: Get.width,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        foregroundColor:AppColors.blue,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: AppColors.blue),
                            borderRadius:const  BorderRadius.all(
                                Radius.circular(8))
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('2nd',style: TextStyle(color: AppColors.blueLight)),
                        const Spacer(flex: 1, ),
                        const Text('Monday',),
                        const Spacer(flex: 1, )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 1, ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10,top: 10),
                    child: ImageIcon(AssetImage(AppAssets.clothIcon),color: AppColors.blueLight, ),
                  ),
                  const Spacer(flex: 1, ),
                  Container(
                      width: Get.width/1.5,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10,left:10,bottom: 10,top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Cloth",style: TextStyle(fontSize: 18)),
                            const Spacer(flex: 1, ),
                            Text('500',style: TextStyle(color: AppColors.blueLight,fontSize: 18),),
                          ],
                        ),
                      )
                  ),
                ],
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 1, ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10,top: 10),
                    child: ImageIcon(AssetImage(AppAssets.transportIcon),color: AppColors.blueLight, ),
                  ),
                  const Spacer(flex: 1, ),
                  Container(
                      width: Get.width/1.5,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10,left:10,bottom: 10,top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Transport",style: TextStyle(fontSize: 18)),
                            const Spacer(flex: 1, ),
                            Text('500',style: TextStyle(color: AppColors.blueLight,fontSize: 18),),
                          ],
                        ),
                      )
                  ),
                ],
              ),
              Container(
                child: SizedBox(
                  width: Get.width,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        foregroundColor:AppColors.blue,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: AppColors.blue),
                            borderRadius:const  BorderRadius.all(
                                Radius.circular(8))
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('3rd',style: TextStyle(color: AppColors.blueLight)),
                        const Spacer(flex: 1, ),
                        const Text('Tuesday',),
                        const Spacer(flex: 1, )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: SizedBox(
                  width: Get.width,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                        foregroundColor:AppColors.blue,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: AppColors.blue),
                            borderRadius:const  BorderRadius.all(
                                Radius.circular(8))
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('4th',style: TextStyle(color: AppColors.blueLight)),
                        const Spacer(flex: 1, ),
                        const Text('Wednesday',),
                        const Spacer(flex: 1, )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 1, ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10,top: 10),
                    child: ImageIcon(AssetImage(AppAssets.funIcon),color: AppColors.blueLight, ),
                  ),
                  const Spacer(flex: 1, ),
                  Container(
                      width: Get.width/1.5,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10,left:10,bottom: 10,top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Fun",style: TextStyle(fontSize: 18)),
                            const Spacer(flex: 1, ),
                            Text('500',style: TextStyle(color: AppColors.blueLight,fontSize: 18),),
                          ],
                        ),
                      )
                  ),
                ],
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 1, ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10,top: 10),
                    child: ImageIcon(AssetImage(AppAssets.otherIcon),color: AppColors.blueLight, ),
                  ),
                  const Spacer(flex: 1, ),
                  Container(
                      width: Get.width/1.5,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10,left:10,bottom: 10,top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Other",style: TextStyle(fontSize: 18)),
                            const Spacer(flex: 1, ),
                            Text('500',style: TextStyle(color: AppColors.blueLight,fontSize: 18),),
                          ],
                        ),
                      )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}