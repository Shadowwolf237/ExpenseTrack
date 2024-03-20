import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:trackexpences/app/config/app_assets.dart';
import 'package:trackexpences/app/config/app_colors.dart';


class ExpensesDetail extends StatelessWidget {
  const ExpensesDetail({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 15,left: 15,top: 40,bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("Monday", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500)),
                      Text('25 September', style: TextStyle(color:AppColors.blueLight,fontSize: 20)),
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.cancel_rounded,size: 25)),
                ],
              ),
              const SizedBox(height: 20,),
              const Divider(
                height: 15,
                color:  Color(0xffa4a4a4),
              ),
              const SizedBox(height: 30,),
              const Text('Amount', style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500)) ,
              Text('500',style: TextStyle(color: AppColors.blueLight,fontSize: 20)),
              const SizedBox(height: 20,),
              const Divider(
                height: 15,
                color:  Color(0xffa4a4a4),
              ),
              const SizedBox(height: 30,),
              const Text('Category',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500)) ,
              Row(
                children: [
                  ImageIcon(AssetImage(AppAssets.billsIcon),color: AppColors.blueLight,size: 30),
                  Text('500',style: TextStyle(color: AppColors.blueLight,fontSize: 20)),
                ],
              ),
              const SizedBox(height: 20,),
              const Divider(
                height: 15,
                color:  Color(0xffa4a4a4),
              ),
              const Text('More Detail', style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500)) ,
              const SizedBox(height: 10,),
              const Text('Electricity Bills',style: TextStyle(color: Colors.black,fontSize: 15)),

            ],
          ),
        ),
      ),
    );
  }

}