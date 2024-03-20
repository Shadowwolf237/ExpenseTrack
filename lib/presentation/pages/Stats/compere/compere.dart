import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trackexpences/app/config/app_colors.dart';
import 'package:trackexpences/presentation/pages/Stats/compere/tab_compere.dart';



class ComperePage extends StatefulWidget {
  const ComperePage({super.key});

  @override
  _ComperePageState createState() => _ComperePageState();
}

class Year{
  String? name;
  Year({
    this.name
  });
}
class Month{
  String? name1;
  Month({
    this.name1
});
}


class _ComperePageState extends State<ComperePage> {
  List<Year> listYear =[];
  List<Month> listMonth =[];

  @override

  void initState() {
    listYear = [
      Year( name: '2023'),
      Year( name: '2024'),
      Year(name: '-'),
    ];
    listMonth = [
      Month(name1: 'Jan'),
      Month(name1: 'Feb'),
      Month(name1: 'March'),
      Month(name1: 'April'),
      Month(name1: 'Mais'),
      Month(name1: 'June'),
      Month(name1: 'July'),
      Month(name1: 'Aug'),
      Month(name1: 'Sept'),
      Month(name1: 'Oct'),
      Month(name1: 'Nov'),
      Month(name1: 'Dec'),
    ];
    super.initState();
  }

  String currentYear = "2023";
  String currentYear1 = "2023";
  String currentMonth = "Jan";
  String currentMonth1 = "Jan";

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xffF8F8F8),
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
              const SizedBox(height: 140,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Container(
                      height: Get.height/3.5,
                      width: Get.width/2.5,
                      decoration:const BoxDecoration(
                          color: Colors.white,
                          borderRadius:BorderRadius.all(Radius.circular(8)) ),
                      alignment: Alignment.center,
                      child: ListWheelScrollView.useDelegate(
                        itemExtent: 50,
                        diameterRatio: 2.5,
                        onSelectedItemChanged: (index) {
                          setState(() {
                            currentYear = listYear[index].name!;
                          });
                        },
                        physics:const FixedExtentScrollPhysics(),
                        childDelegate: ListWheelChildBuilderDelegate(
                          childCount:listYear.length,
                          builder: (BuildContext context, int index){
                            return Text(listYear[index].name!,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: currentYear == listYear[index].name? AppColors.blueLight : AppColors.blue
                              ),
                            );
                          },
                        ),

                      )
                  ),
                  Container(
                      height: Get.height/3.5,
                      width: Get.width/2.5,
                      decoration:const BoxDecoration(
                          color: Colors.white,
                          borderRadius:BorderRadius.all(Radius.circular(8)) ),
                      alignment: Alignment.center,
                      child: ListWheelScrollView.useDelegate(
                        itemExtent: 50,
                        diameterRatio: 2.5,
                        onSelectedItemChanged: (index) {
                          setState(() {
                            currentYear1 = listYear[index].name!;
                          });
                        },
                        physics:const FixedExtentScrollPhysics(),
                        childDelegate: ListWheelChildBuilderDelegate(
                          childCount:listYear.length,
                          builder: (BuildContext context, int index){
                            return Text(listYear[index].name!,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: currentYear1 == listYear[index].name? AppColors.blueLight : AppColors.blue
                              ),
                            );
                          },
                        ),
                      )
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: Get.height/3,
                      width: Get.width/2.5,
                      decoration:const BoxDecoration(
                          color: Colors.white,
                          borderRadius:BorderRadius.all(Radius.circular(8)) ),
                      alignment: Alignment.center,
                      child: ListWheelScrollView.useDelegate(
                        itemExtent: 50,
                        diameterRatio: 2.5,
                        onSelectedItemChanged: (index1) {
                          setState(() {
                            currentMonth = listMonth[index1].name1!;
                          });
                        },
                        physics:const FixedExtentScrollPhysics(),
                        childDelegate: ListWheelChildBuilderDelegate(
                          childCount:listMonth.length,
                          builder: (BuildContext context, int index1){
                            return Text(listMonth[index1].name1!,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: currentMonth == listMonth[index1].name1? AppColors.blueLight : AppColors.blue
                              ),
                            );
                          },
                        ),
                      )
                  ),
                  Container(
                      height: Get.height/3,
                      width: Get.width/2.5,
                      decoration:const BoxDecoration(
                          color: Colors.white,
                          borderRadius:BorderRadius.all(Radius.circular(8)) ),
                      alignment: Alignment.center,
                      child: ListWheelScrollView.useDelegate(
                        itemExtent: 50,
                        diameterRatio: 2.5,
                        onSelectedItemChanged: (index1) {
                          setState(() {
                            currentMonth1 = listMonth[index1].name1!;
                          });
                        },
                        physics:const FixedExtentScrollPhysics(),
                        childDelegate: ListWheelChildBuilderDelegate(
                          childCount:listMonth.length,
                          builder: (BuildContext context, int index1){
                            return Text(listMonth[index1].name1!,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: currentMonth1 == listMonth[index1].name1? AppColors.blueLight : AppColors.blue
                              ),
                            );
                          },
                        ),
                      )
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff3AD0FF),
                          borderRadius: BorderRadius.circular(50)
                      ),

                    ),
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.blueLight,
                          borderRadius: BorderRadius.circular(50)
                      ),

                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40,),
              SizedBox(
                width: 300,
                height: 45,
                child: ElevatedButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context){
                      return const Tab_Compere();
                    },
                  ));
                },
                  child: const Text('Compare'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor:const Color(0xffC7D8FD),
                    backgroundColor: const Color(0xff214FF1),
                    shape:const  RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xff407BF7)),
                        borderRadius: BorderRadius.all(
                            Radius.circular(8))
                    ),

                  ),
                ),
              ),

              const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}