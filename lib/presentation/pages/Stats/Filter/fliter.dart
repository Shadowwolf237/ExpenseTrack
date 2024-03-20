import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:trackexpences/app/config/app_assets.dart';
import 'package:trackexpences/app/config/app_colors.dart';



 List<Widget> fruits = <Widget>[
  ImageIcon(AssetImage(AppAssets.billsIcon)),
   ImageIcon(AssetImage(AppAssets.foodIcon)),
   ImageIcon(AssetImage(AppAssets.clothIcon)),
   ImageIcon(AssetImage(AppAssets.transportIcon)),
   ImageIcon(AssetImage(AppAssets.funIcon)),
   ImageIcon(AssetImage(AppAssets.otherIcon)),
];

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _FilterPageState createState() => _FilterPageState();
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

class _FilterPageState extends State<FilterPage> {
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
double _currentValue = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      appBar: AppBar(
        title: const Text('Filter by',style: TextStyle(color: Colors.black)),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.cancel_rounded,color: Colors.black,size: 25),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 15,left: 15,top: 25,bottom: 20),
          child: Column(
            children: [
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
                                if (selectedCategories.length < 2) {
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
              const SizedBox(height: 5,),
             const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Amount', style: TextStyle(color:Colors.black,fontWeight: FontWeight.w500 )),
                ],
              ),
              const SizedBox(height: 20,),
              SliderTheme(
                data: SliderThemeData(
                    activeTrackColor: AppColors.blueLight,
                    thumbColor: Colors.white,
                    thumbShape:const RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayColor: AppColors.blueLight,
                    overlayShape:const RoundSliderOverlayShape(overlayRadius: 20)
                ),
                child: Slider(
                  max: 1000,
                  min: 0,
                  divisions: 4,
                  value: _currentValue,
                  onChanged:(value) {
                    setState(() {
                      _currentValue = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 5,),
              Text(_currentValue.toString(),style:const TextStyle(fontWeight: FontWeight.w500,fontSize: 23)),
              const SizedBox(height: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: Get.width/4,
                    height: Get.height/12,
                    child: ElevatedButton(onPressed: () {},
                      child: const Text('Reset'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor:const Color(0xff214FF1),
                        backgroundColor: const Color(0xffEFEFEF),
                        shape:const  RoundedRectangleBorder(
                            side: BorderSide(color: Color(0xffEFEFEF)),
                            borderRadius: BorderRadius.all(
                                Radius.circular(8))
                        ),

                      ),
                    ),
                  ),
                  SizedBox(
                    width: Get.width/4,
                    height: Get.height/12,
                    child: ElevatedButton(onPressed: () {},
                      child: const Text('Apply'),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
Text(
                      listCategories[index].name!,
                      textScaleFactor: 2.5,
                      style: TextStyle(
                        fontSize: 5,
                        color: isSelected ? AppColors.blueLight : AppColors.blue
                      ),
                    ),
 */