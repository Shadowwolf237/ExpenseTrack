import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:trackexpences/app/config/app_assets.dart';
import 'package:trackexpences/app/config/app_colors.dart';
import 'package:trackexpences/presentation/pages/Stats/compere/compere.dart';
import 'package:trackexpences/presentation/pages/Stats/expenses.dart';
import 'package:trackexpences/presentation/pages/Stats/general.dart';
import 'package:trackexpences/presentation/pages/home_1/calendar.dart';

class StatsPage extends StatefulWidget{
  const StatsPage({super.key});

  @override
  State<StatsPage> createState()  => _StatsState();
}

class _StatsState extends State<StatsPage>  with TickerProviderStateMixin{

List<String> items = [
  "General",
  "Expenses Log"
];
List pages = [
  const GeneralPage(),
  const ExpensesPage()
];
int current = 0 ;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFEFEF),
      body: Padding(
        padding:const EdgeInsets.only(right: 15,left: 15,top: 20,),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("Stats",style: TextStyle(fontSize:35,fontWeight:FontWeight.w500),),
                const Spacer(flex: 70),
                IconButton(
                  onPressed: () {
                    Get.to(const ComperePage());
                  },
                  icon: ImageIcon(AssetImage(AppAssets.compereIcon),color: AppColors.blue),
                ),
                const Spacer(flex: 1),
                IconButton(
                  onPressed: () {
                    Get.to(const CalendarPage());
                  },
                  icon: ImageIcon(AssetImage(AppAssets.calendarIcon),color: AppColors.blue),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 50,
              width: Get.width,
              child:  ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx,index){
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          current = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                        width: Get.width/2.2,
                        height: 45,
                        decoration: BoxDecoration(color: current == index
                            ?AppColors.blueLight
                            :Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center( child: Text(items[index],
                            style: TextStyle(color: current == index
                                ?Colors.white
                                :AppColors.blue))
                        ),
                      ),
                    );
                  }
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: Get.height/1.6,
              margin: const EdgeInsets.only(top:5),
              child: pages[current],
            )
          ],
        ),
      ),
    );
  }
}



