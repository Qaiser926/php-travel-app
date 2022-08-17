
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:php_travalapp/routes/app_pages/app_pages.dart';

void main(){

  runApp(DevicePreview(builder: (context)=>travelapp()));
}
class travelapp extends StatelessWidget {
  const travelapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return  GetMaterialApp(
    locale: DevicePreview.locale(context),
    builder: DevicePreview.appBuilder,
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      useMaterial3: true
    ),
    getPages: AppPages.routes,
    initialRoute: AppPages.INITIAL,
    );
  }
}
