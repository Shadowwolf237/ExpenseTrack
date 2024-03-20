import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:trackexpences/app/config/app_colors.dart';


class CalendarPage extends StatefulWidget{
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState()  => _CalendarState();
}

class _CalendarState extends State<CalendarPage> {
  DateTime today = DateTime.now();
  void _OnDayselected(DateTime day,DateTime focusedDay){
    setState(() {
      today = day;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffEFEFEF),
      appBar: AppBar(
        backgroundColor: AppColors.blueLight,
        title: const Text('Select a day ',style: TextStyle(color: Colors.white)),
          automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.cancel_rounded,size: 25,color: Colors.black,) ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('September', style: TextStyle(fontSize: 25,color:AppColors.blueLight)),
            Text('2024', style: TextStyle(color:AppColors.blue)),
            SizedBox(height: 10,),
            Container(
              child: TableCalendar(
                calendarStyle: CalendarStyle(
                    defaultTextStyle: TextStyle(color:  AppColors.blueLight ),
                    weekendTextStyle: TextStyle(color: AppColors.blueLight,),
                    outsideTextStyle: TextStyle(color: AppColors.blue,),
                    selectedTextStyle: TextStyle(color: AppColors.blue),
                    selectedDecoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:const BorderRadius.all(Radius.circular(5)),
                            side: BorderSide(color: AppColors.blueLight))
                    )
                ),
                availableGestures: AvailableGestures.all,
                selectedDayPredicate:(day) => isSameDay(today, day),
                headerStyle:const HeaderStyle(formatButtonVisible: false,titleCentered: true,),
                focusedDay: DateTime.now(),
                firstDay: DateTime.utc(2015,10,16),
                lastDay: DateTime.utc(2026,02,24),
                onDaySelected: _OnDayselected,
              ),
            )








           /* Stack(
              children: [
                Center(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(0, 20, 175, 0),
                    child:  Text("September",
                        style: TextStyle(fontSize: 25,color:AppColors.blueLight)),
                  ),
                ),
                Container(
                  child:  Padding(
                    padding:const EdgeInsets.fromLTRB(35, 55, 0, 0),
                    child: Text('2024', style: TextStyle(color:AppColors.blue)),
                  ),
                ),
                Container(
                  child:  Padding(
                    padding:const EdgeInsets.fromLTRB(320, 20, 0, 0),
                    child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.cancel_rounded,size: 25) ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 10,),
            Container(
              child: TableCalendar(
                calendarStyle: CalendarStyle(
                  defaultTextStyle: TextStyle(color:  AppColors.blueLight ),
                  weekendTextStyle: TextStyle(color: AppColors.blueLight,),
                  outsideTextStyle: TextStyle(color: AppColors.blue,),
                  selectedTextStyle: TextStyle(color: AppColors.blue),
                  selectedDecoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius:const BorderRadius.all(Radius.circular(5)),
                        side: BorderSide(color: AppColors.blueLight))
                  )
                ),
                availableGestures: AvailableGestures.all,
                selectedDayPredicate:(day) => isSameDay(today, day),
                headerStyle:const HeaderStyle(formatButtonVisible: false,titleCentered: true,),
                focusedDay: DateTime.now(),
                firstDay: DateTime.utc(2015,10,16),
                lastDay: DateTime.utc(2026,02,24),
                onDaySelected: _OnDayselected,
              ),
            )*/
          ],
        ),
      ),

    );
  }
}
