import 'package:flutter/material.dart';
class PkPage extends StatefulWidget {
  @override
  _PkPageState createState() => _PkPageState();
}


class _PkPageState extends State<PkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('对战页面'),
      ),
      body: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575746007530&di=1fbe08fc67273fcee8607c988deab026&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F7caa18466e1fd85fecf428086c622196a167717a21db7-tXJ2zQ_fw658'),
      
    );
  }
}
