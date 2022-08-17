
import 'package:get/get.dart';
import 'package:php_travalapp/app/modules/homePage/controller/homeController.dart';

class HomeBindingPage extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
     Get.put<HomeController>(HomeController());
  }

}