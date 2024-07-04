import 'package:dashboard/home/home_page.dart';
import 'package:dashboard/side_bar.dart';
import 'package:dashboard/top_bar.dart';
import 'package:dashboard/transactions_page.dart';
import 'package:dashboard/util/responsive.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({ Key? key }) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentPage = 0;
  onPageChanged(index){
   setState(() {
      pageController.animateToPage(index, duration: const Duration(milliseconds: 1), curve: Curves.linear);
   });
   
  }
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  var pageController  = PageController();
  @override
  Widget build(BuildContext context) {
    bool isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: !isDesktop?SizedBox(
        width: 300,
        child: LeftSidebar(currentPage: currentPage, onPageChanged: onPageChanged,)):null,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        if(isDesktop)
        LeftSidebar(currentPage: currentPage, onPageChanged: onPageChanged),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Row(
                children: [
                  if(!isDesktop)
                  const SizedBox(width: 10,),
                  if(!isDesktop)
                      InkWell(
                        onTap:(){
                          _scaffoldKey.currentState?.openDrawer();
                        },
                        child:const Icon(Icons.menu,size: 24,)),
                 const Expanded(flex: 2, child: TopBar())
                ],
              ),
              Expanded(
                flex: 1,
                child: PageView(
                  controller: pageController,
                  scrollDirection: Axis.vertical,
                  physics:const NeverScrollableScrollPhysics(),
                  onPageChanged: (index){
                    setState(() {
                      currentPage = index;
                    });
                  },
                  children:const [
                   HomePage(),
                   TransactionsPage()
                  ],
                ),
              )
            ],
          ),
        )

       
      ],),
      
    );
  }
}