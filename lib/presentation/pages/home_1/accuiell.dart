//import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:semicircle_indicator/semicircle_indicator.dart';
//import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:trackexpences/app/config/app_assets.dart';
import 'package:trackexpences/app/config/app_colors.dart';
import 'package:trackexpences/presentation/pages/Expense/expense.dart';
import 'package:trackexpences/presentation/pages/home_1/calendar.dart';
import 'package:trackexpences/presentation/pages/home_1/editbudget.dart';


class Homepage1 extends StatefulWidget {
  const Homepage1({super.key});

  @override
  State<Homepage1> createState() => _HomeState();
}
class _HomeState extends State<Homepage1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:const Color(0xffEFEFEF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 15,left: 15,top: 25,bottom: 20),
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
                          icon: ImageIcon(AssetImage(AppAssets.calendarIcon),color: AppColors.blue),
                          onPressed: () {
                            Get.to(const CalendarPage());
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    SemicircularIndicator(
                      strokeCap: StrokeCap.square,
                      backgroundColor: const Color(0xffEFEFEF),
                      color: AppColors.blueLight,
                      radius: 100,
                      strokeWidth: 20,
                      bottomPadding: -10,
                      progress: 0,
                      child: Text(
                        '0%',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: AppColors.blueLight),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('0',style: TextStyle(color: AppColors.blueLight,fontSize: 18,fontWeight:FontWeight.w500 )),
                        Text('/',style: TextStyle(color: AppColors.blue,fontSize: 18,fontWeight:FontWeight.w500 )),
                        Text('0',style: TextStyle(color: AppColors.blueLight,fontSize: 18,fontWeight:FontWeight.w500 )),

                      ],
                    ),
                    const SizedBox(height: 30,),
                     SizedBox(
                      width: Get.width/2,

                      child: ElevatedButton(onPressed: () {
                        Get.to(const Editbudget());
                      },
                        child:const Text('Edit Budget'),
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
              ),
              const SizedBox(height: 50,),
              IconButton(
                  onPressed: () {
                   Get.to(const ExpensePage());
                  },
                  icon: Icon(Icons.add_circle_rounded,color: AppColors.blueLight,size: 70,)
              ),
              const SizedBox(height: 10,),
              Text('Add Expense',style: TextStyle(fontSize: 15, color:AppColors.blueLight )),

              const SizedBox(height: 25,)
            ],
          ),
        ),
      ),
    );
  }
}

