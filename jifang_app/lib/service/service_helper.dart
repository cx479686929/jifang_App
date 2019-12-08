import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:io';
import '../config/service_url.dart';

Future getHomePageContent() async{
  try{
    print('开始获取首页数据');
    Response response;
    Dio dio=new Dio();
    dio.options.contentType=ContentType.parse("application/x-www-form-urlencoded");
    response=await dio.post(servicePath['homePageContent']);
    if(response.statusCode==200){
      return response.data;
    }else{
      throw Exception('后端接口异常');
    }
  }catch(e){
    return print('ERROR:========>${e}');
  }



}