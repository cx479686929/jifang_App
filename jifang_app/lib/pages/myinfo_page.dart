import 'package:flutter/material.dart';
class MyinfoPage extends StatefulWidget {
  @override
  _MyinfoPageState createState() => _MyinfoPageState();
}

class _MyinfoPageState extends State<MyinfoPage> {







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的信息'),
        
      ),
      body: _stackHeader(context),
    );
  }

}

Widget _stackHeader(BuildContext context) {
  return Stack(
    children: <Widget>[
      Container(
        color: Colors.white,
        width: 480,
        child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575778854620&di=f8749aefbaab2f675b59fe6b0b2ddf3b&imgtype=0&src=http%3A%2F%2Fi1.sinaimg.cn%2FIT%2F2009%2F0304%2F20093472246.jpg', fit: BoxFit.cover),
      ),
      Container(
        margin: EdgeInsetsDirectional.only(top: 80, start: 15),
        child: InkWell(
          onTap: () {
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text('点击用户信息'),
              duration: Duration(seconds: 2),
            ));
          },

        ),
      ),
    ],
  );
}

