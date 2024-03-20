import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:trackexpences/app/config/app_colors.dart';
import 'package:trackexpences/presentation/pages/Stats/bar_chart.dart';
import 'package:trackexpences/presentation/pages/Stats/line_chart.dart';
import 'package:semicircle_indicator/semicircle_indicator.dart';


class GeneralPage extends StatefulWidget {
  const GeneralPage({super.key});

  @override
  State<GeneralPage> createState() => _GeneralState();
}
class _GeneralState extends State<GeneralPage> {  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 15,left: 15,top: 20,bottom: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),

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
                      progress: 0.5,
                      child: Text(
                        '50%',
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
                        Text('1000',style: TextStyle(color: AppColors.blueLight,fontSize: 18,fontWeight:FontWeight.w500 )),
                        Text('/',style: TextStyle(color: AppColors.blue,fontSize: 18,fontWeight:FontWeight.w500 )),
                        Text('2000',style: TextStyle(color: AppColors.blueLight,fontSize: 18,fontWeight:FontWeight.w500 )),

                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Container(
                height: Get.height/2,
                width: Get.width,
                decoration:   BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: const AspectRatio(
                  aspectRatio: 1.6,
                  child: BarChartPage(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: Get.height/2.2,
                width: Get.width,
                decoration:  BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),

                child: Column(
                  children: [
                    Center(
                      child: Text('Expenses/Category',style: TextStyle(color: AppColors.blue,fontSize: 19,fontWeight: FontWeight.w500)),
                    ),
                     const LineChartPage(),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
