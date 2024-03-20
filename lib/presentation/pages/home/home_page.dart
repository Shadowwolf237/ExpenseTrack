import 'package:flutter/material.dart';
import 'package:trackexpences/app/config/app_assets.dart';
import 'package:trackexpences/presentation/pages/Expense/expense.dart';
import 'package:trackexpences/presentation/pages/Stats/stats.dart';
import 'package:trackexpences/presentation/pages/home_1/accuiell.dart';
//import 'package:trackexpences/app/config/app_colors.dart';
import 'package:trackexpences/presentation/pages/setting/setting_page.dart';

class HomePage extends StatefulWidget{
  const HomePage ({super.key});

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  int bottomSelectedIndex = 0;

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget  buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children:[
        Homepage1(),
        StatsPage(),
         SettingPage(),
         ExpensePage()
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }
  /*List pages = [
    const Homepage1(),
    const StatsPage(),
    const SettingPage(),
    const ExpensePage()
  ];
 */
  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build (BuildContext context){
    return  Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: buildPageView(),//pages[_currentIndex],
      bottomNavigationBar:  BottomNavigationBar(
        backgroundColor: const Color(0xffFFFFFF),
        currentIndex: bottomSelectedIndex,
        selectedItemColor: const Color(0xff214FF1),
        unselectedItemColor:const  Color(0xff8894F8),
        items: [
          BottomNavigationBarItem(
              icon:ImageIcon(
                AssetImage(AppAssets.homeIcon),
              ),
                  label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon:ImageIcon(
              AssetImage(AppAssets.statsIcon),
            ),
            label: ('Stats'),
          ),
          BottomNavigationBarItem(
            icon:ImageIcon(
              AssetImage(AppAssets.settingIcon),
            ),
            label: ('Setting'),
          ),
          BottomNavigationBarItem(
            icon:ImageIcon(
              AssetImage(AppAssets.plusIcon),
            ),
            label: ('Expense'),
          )
        ],
        onTap: (index) {
          bottomTapped(index);
        },
      ),
    );
  }
}