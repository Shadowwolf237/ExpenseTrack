import 'package:flutter/material.dart';
import 'package:trackexpences/presentation/controllers/depense_controller.dart';
import 'package:trackexpences/presentation/pages/auth/tab/tab_login.dart';
import 'package:trackexpences/presentation/pages/auth/tab/tab_register.dart';
import 'package:get/get.dart';


class AuthPage extends StatefulWidget{
  const AuthPage ({super.key});

  @override
  State<AuthPage> createState() => _AuthState();
}
class _AuthState extends State<AuthPage>with TickerProviderStateMixin {
  late TabController _tabController;
  int bottomSelectedIndex = 1;

  final List<Tab> myTabs = <Tab>[
    Tab(text: 'LogIn',),
    Tab(text: 'Register',),
  ];

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        TabLogin(),
        TabRegister(),
      ],
    );
  }


  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }
  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  final controller = Get.put(DepenseController());

  void initData() async {
    await controller.fetchData();
  }

  @override
  void initState() {
    super.initState();
    initData();

    _tabController = TabController(
      length:myTabs.length,
      vsync: this,

    );
    _tabController.addListener(() {
      setState(() {
        bottomSelectedIndex = _tabController.index;
        print('_activeIndex: $bottomSelectedIndex');
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }



  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  TabBar(
        controller: _tabController,
        labelColor: Color(0xff214FF1),
        unselectedLabelColor: Color(0xff8894F8),
        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
        onTap: (index) {
          bottomTapped(index);
        },
        tabs: myTabs,
      ),
      body: buildPageView(),
    );
  }

}

