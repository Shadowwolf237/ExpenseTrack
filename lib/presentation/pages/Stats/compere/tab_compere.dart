import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:trackexpences/app/config/app_colors.dart';
import 'package:trackexpences/presentation/pages/Stats/compere/Tab_Compere/perc-compere.dart';



class Tab_Compere extends StatefulWidget {
  const Tab_Compere({super.key});

  @override
  _Tab_CompereState createState() => _Tab_CompereState();
}

class _Tab_CompereState extends State<Tab_Compere> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor:const Color(0xffF8F8F8),
       body: SingleChildScrollView(
           child: Padding(
             padding: const EdgeInsets.only(right: 15,left: 15,top: 25,bottom: 20),
             child: Column(
               children: [

                 Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     const Spacer(flex: 3,),
                     const Text('Compare', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                     const Spacer(flex: 2,),
                     IconButton(onPressed: () {
                       Get.back();
                     },
                         icon: const Icon(Icons.cancel_rounded,size: 25) ),
                   ],
                 ),
                 const SizedBox(height: 20,),
                 Container(
                   margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                   width: Get.width/1.3,
                   height: 45,
                   decoration: BoxDecoration(

                       border: Border.all(color: AppColors.blue),
                       borderRadius: BorderRadius.circular(8)
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Container(
                         height: 10,
                         width: 10,
                           decoration: BoxDecoration(
                               color: const Color(0xff3AD0FF),
                               borderRadius: BorderRadius.circular(50)
                           ),
                       ),
                       Text('Sept',style: TextStyle(color: AppColors.blueLight,fontSize: 20)),
                       Text('2019',style: TextStyle(color: AppColors.blue,fontSize: 10)),
                       Container(
                         width: 3,
                         height: 20,
                         decoration: BoxDecoration(
                           color:AppColors.blue ,
                           border: Border.all(color: AppColors.blue),
                         ),
                       ),
                       Container(
                         height: 10,
                         width: 10,
                           decoration: BoxDecoration(
                               color: AppColors.blueLight,
                               borderRadius: BorderRadius.circular(50)
                           ),
                       ),
                       Text('oct',style: TextStyle(color: AppColors.blueLight,fontSize: 20,)),
                       Text('2019',style: TextStyle(color: AppColors.blue,fontSize: 10)),
                     ],
                   ),
                 ),
                 const SizedBox(height: 20,),
                 Container(
                   height: Get.height/2,
                   width: Get.width/1.12,
                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(8)),
                   child: Padding(
                     padding: const EdgeInsets.only(right: 15,left: 15,top: 25,bottom: 20),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Text('Budget',style: TextStyle(color: AppColors.blueLight,fontSize: 30)),
                         LinearPercentIndicator(
                           width: 260,
                           animation: true,
                           lineHeight: 8,
                           animationDuration: 200,
                           percent: 0.7,
                           barRadius: const Radius.circular(16),
                           progressColor: const Color(0xff3AD0FF),
                           backgroundColor: Colors.white,
                         ),
                         LinearPercentIndicator(
                           width: 260,
                           animation: true,
                           lineHeight: 8,
                           animationDuration: 200,
                           barRadius: const Radius.circular(16),
                           percent: 0.9,
                           progressColor: AppColors.blueLight,
                           backgroundColor: Colors.white,
                         ),
                         Padding(
                           padding: const EdgeInsets.only(right: 15,left: 15,top: 15,bottom: 10),
                           child: Row(
                             children: [
                               Container(
                                 height: 10,
                                 width: 10,
                                 decoration: BoxDecoration(
                                     color: const Color(0xff3AD0FF),
                                     borderRadius: BorderRadius.circular(50)
                                 ),
                               ),
                               const Spacer(flex: 1,),
                               const Text('Sept',style: TextStyle(fontSize: 20)),
                               const Spacer(flex: 1,),
                               const Text('2019',style: TextStyle(fontSize: 15)),
                               const Spacer(flex: 10,),
                               const Text('1000',style: TextStyle(fontSize: 15)),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(right: 15,left: 15,top: 15,bottom: 10),
                           child: Row(
                             children: [
                               Container(
                                 height: 10,
                                 width: 10,
                                 decoration: BoxDecoration(
                                     color: AppColors.blueLight,
                                     borderRadius: BorderRadius.circular(50)
                                 ),
                               ),
                               const Spacer(flex: 1,),
                               const Text('Oct',style: TextStyle(fontSize: 20)),
                               const Spacer(flex: 1,),
                               const Text('2019',style: TextStyle(fontSize: 15)),
                               const Spacer(flex: 10,),
                               const Text('1250',style: TextStyle(fontSize: 15)),
                             ],
                           ),
                         )
                       ],
                     ),
                   ),
                 ),
                 const SizedBox(height: 20,),
                 Container(
                   height: Get.height/2,
                   width: Get.width/1.12,
                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(8)),
                   child: Padding(
                     padding: const EdgeInsets.only(right: 15,left: 15,top: 25,bottom: 20),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Text('Expenses',style: TextStyle(color: AppColors.blueLight,fontSize: 30)),
                         LinearPercentIndicator(
                           width: 260,
                           animation: true,
                           lineHeight: 8,
                           animationDuration: 200,
                           percent: 0.7,
                           barRadius: const Radius.circular(16),
                           progressColor: const Color(0xff3AD0FF),
                           backgroundColor: Colors.white,
                         ),
                         LinearPercentIndicator(
                           width: 260,
                           animation: true,
                           lineHeight: 8,
                           animationDuration: 200,
                           barRadius: const Radius.circular(16),
                           percent: 0.9,
                           progressColor: AppColors.blueLight,
                           backgroundColor: Colors.white,
                         ),
                         Padding(
                           padding: const EdgeInsets.only(right: 15,left: 15,top: 15,bottom: 10),
                           child: Row(
                             children: [
                               Container(
                                 height: 10,
                                 width: 10,
                                 decoration: BoxDecoration(
                                     color: const Color(0xff3AD0FF),
                                     borderRadius: BorderRadius.circular(50)
                                 ),
                               ),
                               const Spacer(flex: 1,),
                               const Text('Sept',style: TextStyle(fontSize: 20)),
                               const Spacer(flex: 1,),
                               const Text('2019',style: TextStyle(fontSize: 15)),
                               const Spacer(flex: 10,),
                               const Text('1000',style: TextStyle(fontSize: 15)),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(right: 15,left: 15,top: 15,bottom: 10),
                           child: Row(
                             children: [
                               Container(
                                 height: 10,
                                 width: 10,
                                 decoration: BoxDecoration(
                                     color: AppColors.blueLight,
                                     borderRadius: BorderRadius.circular(50)
                                 ),
                               ),
                               const Spacer(flex: 1,),
                               const Text('Oct',style: TextStyle(fontSize: 20)),
                               const Spacer(flex: 1,),
                               const Text('2019',style: TextStyle(fontSize: 15)),
                               const Spacer(flex: 10,),
                               const Text('1250',style: TextStyle(fontSize: 15)),
                             ],
                           ),
                         )
                       ],
                     ),
                   ),
                 ),
                 const SizedBox(height: 20,),
                 Container(
                   height: 350,
                   width: 330,
                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(8)),
                   child: BarChartSample2(),
                 ),
                 const SizedBox( height: 20,)
               ],
             ),
           )
       )
   );
  }
}
