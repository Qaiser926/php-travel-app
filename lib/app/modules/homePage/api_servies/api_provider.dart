
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:http/http.dart' as http;
import 'package:php_travalapp/app/modules/homePage/HomeModel/homePageModelClass.dart';
class ApiProvider{

  Future<HomeOfferListModelClass?> getUserData() async {

    final url="https://demotravels.com/api/api/main/app?appKey=phptravels&lang=en&currency=usd";
    var response=await http.get(Uri.parse(url));
    // print(response.body);
   final resquestbody=json.decode(response.body.toString());
   try{
     if(response.statusCode==200){
       print('yaha par tik he ');
       return homeOfferListModelClassFromJson(response.body);
     }else if(response.body.isNotEmpty){
       print('yaha par b data araha he .');
       return homeOfferListModelClassFromJson(response.body.toString());
     }else{
       Get.snackbar('error', 'oop connection error');
       print('yaha par data nhe he ');
       return null;
     }
   } on PlatformException catch(e){
     Get.snackbar('Error', 'yaha par error a giya he ${e}');
   }catch (e){
     print('dirct yaha par q ata he');
     print('yaha catch me error he ${e}');
   }
}

}