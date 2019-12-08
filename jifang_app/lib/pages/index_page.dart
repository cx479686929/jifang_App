import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'myinfo_page.dart';
import 'pk_page.dart';
import 'rank_page.dart';
class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  //底部导航栏
  final List<BottomNavigationBarItem> bottomTabs=[
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.group_solid),
        title: Text('排行榜')
    ),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.clear_thick_circled),
        title: Text('对战')
    ),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.profile_circled),
        title: Text('个人信息')
    )
  ];

  final List tabBodies=[
    RankPage(),
    PkPage(),
    MyinfoPage()
  ];
  int currentIndex=0;
  var currentPage;

  void initState(){
    currentPage=tabBodies[currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244,245,245,1.0),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: bottomTabs,
        onTap: (index){
          setState(() {
            currentIndex=index;
            currentPage=tabBodies[index];
          });
        },
      ),
      body: currentPage,
    );

  }
}

