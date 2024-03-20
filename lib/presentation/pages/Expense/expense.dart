import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:trackexpences/app/config/app_assets.dart';
import 'package:trackexpences/app/config/app_colors.dart';
import 'package:trackexpences/presentation/pages/home_1/accuiell1.dart';
import 'package:trackexpences/presentation/pages/home_1/calendar.dart';

List<Widget> fruits = <Widget>[
  ImageIcon(AssetImage(AppAssets.billsIcon)),
  ImageIcon(AssetImage(AppAssets.foodIcon)),
  ImageIcon(AssetImage(AppAssets.clothIcon)),
  ImageIcon(AssetImage(AppAssets.transportIcon)),
  ImageIcon(AssetImage(AppAssets.funIcon)),
  ImageIcon(AssetImage(AppAssets.otherIcon)),
];


class ExpensePage extends StatefulWidget {
  const ExpensePage({super.key});

  @override
  State<ExpensePage> createState() => _ExpenseState();
}
class CategorieModel{
  int? id;
  Image? image;
  String? name;
  CategorieModel({
    this.id,
    this.image,
    this.name
  });
}

class _ExpenseState extends State<ExpensePage> {

  bool ValD1 = false;
  onchangeFunction(bool newvalue1){
    setState(() {
      ValD1 = newvalue1;
    });
  }

  List<CategorieModel> listCategories =[];
  List<CategorieModel> selectedCategories =[];

  @override
  void initState() {
    listCategories = [
      CategorieModel(id:1, image: Image.asset("assets/icons/bill.png"),name: 'Bills'),
      CategorieModel(id:2, image: Image.asset("assets/icons/food.png"),name: 'Food'),
      CategorieModel(id:3, image: Image.asset("assets/icons/cloth.png"),name: 'Cloth'),
      CategorieModel(id:4, image: Image.asset("assets/icons/transport.png"),name: 'Transport'),
      CategorieModel(id:5, image: Image.asset("assets/icons/fun.png"),name: 'Fun'),
      CategorieModel(id: 6, image: Image.asset("assets/icons/other.png"),name: 'Other')
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: const Color(0xffEFEFEF),
     appBar: AppBar(
       title: const Text('Add Expense',style: TextStyle(color: Colors.white)),
       automaticallyImplyLeading: false,
       backgroundColor: AppColors.blueLight,
       actions: <Widget>[
         IconButton(
           icon: const Icon(Icons.cancel_rounded,color: Colors.white,size: 25),
           onPressed: () {
             Get.back();
           }
         ),
       ],
     ),
     body: SingleChildScrollView(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Container(
             height: Get.height/3.1,
             width: Get.width,
             color:Colors.white,
             padding: const EdgeInsets.only(right: 15,left: 15,top: 25,bottom: 20),
             child:Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 const Text('Amount',style: TextStyle(fontSize: 18)),
                 TextField(
                   style: const TextStyle(color: Color(0xff214FF1),fontSize: 25,fontWeight: FontWeight.w500),
                   keyboardType: TextInputType.number,
                   inputFormatters: <TextInputFormatter> [
                     FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                     FilteringTextInputFormatter.digitsOnly
                   ],
                   decoration: InputDecoration(
                       floatingLabelStyle: TextStyle(
                         color: AppColors.blue,
                         fontSize: 26,),
                       hintText:'Enter',
                       hintTextDirection: TextDirection.ltr,
                       hintStyle: TextStyle(
                           color: AppColors.blue,
                           fontSize: 26
                       ),
                       fillColor: const Color(0xff214FF1),
                       enabledBorder:const  UnderlineInputBorder(
                           borderSide:  BorderSide(color: Color(0xff214FF1) )),
                       focusedBorder: const UnderlineInputBorder(
                           borderSide:  BorderSide(color: Color(0xff8894F8) ))
                   ),
                 ),
                 const SizedBox(height: 10,),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text('Tuesday, 25 September',style: TextStyle(color: AppColors.blueLight,fontSize: 15)),
                     IconButton(
                       onPressed: () {
                         Get.to(const CalendarPage());
                       },
                       icon: ImageIcon(AssetImage(AppAssets.calendarIcon),color: AppColors.blue),
                     ),
                   ],
                 )
               ],
             ),
           ),
           const SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.only(right: 15,left: 15),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 const Padding(
                   padding: EdgeInsets.only(left: 5),
                   child: Text('Select Category',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500)),
                 ),
                 SizedBox(
                   height:Get.height/2.5,
                   child: Center(
                       child:GridView.builder(
                         itemCount: listCategories.length,
                         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                           crossAxisCount: 3,
                           childAspectRatio: 1,
                         ),
                         itemBuilder: (BuildContext context, int index) {
                           bool isSelected = selectedCategories.contains(listCategories[index]);
                           return GestureDetector(
                             onTap: (){
                               print(isSelected);
                               setState(() {
                                 if (isSelected) {
                                   selectedCategories.remove(listCategories[index]);
                                 } else {
                                   if (selectedCategories.length < 1) {
                                     selectedCategories.add(listCategories[index]);
                                   } else {
                                     // Display error message: Max elements selected
                                   }
                                 }
                               });

                             },
                             child: Container(
                               width: Get.width/4,
                               height: Get.height/4,
                               margin: const EdgeInsets.only(top: 8,left: 4,right: 4,),
                               decoration: BoxDecoration(border:
                               Border.all(
                                   width: 2,
                                   color: isSelected ? AppColors.blueLight : AppColors.blue,
                                   style: BorderStyle.solid),
                                 borderRadius:const BorderRadius.all(Radius.circular(8)),
                               ),
                               child: Center(
                                 child:Stack(
                                   children: [
                                     Container(
                                       child: Padding(
                                           padding:const EdgeInsets.fromLTRB(40, 40, 0, 0),
                                           child: listCategories[index].image!
                                       ),
                                     ),
                                     Padding(
                                       padding:const EdgeInsets.all(8.0),
                                       child: Align(
                                         alignment: Alignment.bottomCenter,
                                         child: Text(
                                           listCategories[index].name!,
                                           //textScaleFactor: 2.5,
                                           style: TextStyle(
                                               fontSize: 15,
                                               color: isSelected ? AppColors.blueLight : AppColors.blue
                                           ),
                                         ),
                                       ),
                                     )
                                   ],
                                 ),
                               ),
                             ),
                           );
                         },
                       )
                   ),
                 ),// This trailing comma makes auto-formatting nicer for build methods.
               ],
             ),
           ),
           const SizedBox(height: 20,),
           ADD('Add this bill each month',ValD1,onchangeFunction),
           const SizedBox(height: 20,),
           Container(
             padding:const EdgeInsets.only(left: 25),
               child: const Text('More Detail')
           ),
           const SizedBox(height: 20,),
           Container(
             padding: const EdgeInsets.only(right: 25,left: 25),
             child:TextFormField(
               minLines: 6,
               maxLines: null,
               keyboardType: TextInputType.multiline,
               decoration:const InputDecoration(
                 alignLabelWithHint: true,
                 fillColor: Color(0xff214FF1),
                 enabledBorder: OutlineInputBorder(
                     borderSide:  BorderSide(color: Color(0xff214FF1) )),
                 focusedBorder:OutlineInputBorder(
                     borderSide:  BorderSide(color: Color(0xff8894F8) )),
                 labelText: 'Enter here',
               ),
             ),
           ),
           const SizedBox(height: 40,),

           Center(
             child: SizedBox(
               width: Get.width/2,
               child: ElevatedButton(onPressed: () {
                 Navigator.of(context).push(MaterialPageRoute(
                   builder: (context){
                     return const Accuiell1();
                   },
                 ));
               },
                 child: const Text('Add'),
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
           ),
           const SizedBox(height: 20,)
         ],
       ),
     ),
   );
  }
  Padding  ADD(String title,bool value,Function onChangeMethod){
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 20),
      child: Container(
        width: Get.width,
        padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color: Color(0xff8894F8),) ),
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
      ),
    );
  }
}
