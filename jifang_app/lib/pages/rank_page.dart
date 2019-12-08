import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class RankPage extends StatefulWidget {
  @override
  _RankPageState createState() => _RankPageState();
}

class _RankPageState extends State<RankPage> {
  List<String> testList=[];

  @override
  Widget build(BuildContext context) {
    _show();
    return Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 500.0,
              child: ListView.builder(
                itemCount: testList.length,
                itemBuilder: (context,index){
                  return ListTile(
                    title: Text(testList[index]),
                  );
                },
              ),
            ),
            RaisedButton(
              onPressed: (){
                print('adddd');
                _add();
              },
              child: Text('增加'),
            ),
            RaisedButton(
              onPressed: (){
                _clear();
              },
              child: Text('清空'),
            ),
          ],

        ),
    );
  }


  //增加方法
  void _add() async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    String temp="星星！！！";
    testList.add(temp);
    prefs.setStringList('testInfo',testList);
   print('add');
    _show();

  }
  //查询显示
  void _show() async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    if(prefs.getStringList('testInfo')!=null){
      print(prefs.getStringList('testInfo'));
      setState(() {
        testList=prefs.getStringList('testInfo');
      });
    }
  }

  //删除
    void _clear() async{
      SharedPreferences prefs=await SharedPreferences.getInstance();
      prefs.remove('testInfo');
      setState(() {
        testList=[];
      });
    }



}
