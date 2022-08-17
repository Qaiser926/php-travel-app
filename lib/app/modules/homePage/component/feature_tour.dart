import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:php_travalapp/app/colors.dart';
import 'package:php_travalapp/app/modules/homePage/component/feature_cars.dart';
import 'package:php_travalapp/app/modules/homePage/controller/homeController.dart';

class FeatureTours extends StatelessWidget {
  // const FeatureTours({Key? key}) : super(key: key);

  final homecontroller=Get.find<HomeController>();


  int currentIndex=0;


  final pageController=PageController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade200,width: 0.7),
        borderRadius: BorderRadius.circular(8.0),
        // color: Colors.grey.shade200.withOpacity(0.99),

        boxShadow: [
          BoxShadow(
            color: Colors.transparent,
            blurRadius: 0,
            spreadRadius: 0.0,
            offset: Offset(0, 0), // shadow direction: bottom right
          )
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: Get.size.height*0.05,),
          Text('Featured Tours',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: Get.size.height*0.05,),
          Obx(() => ListView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: homecontroller.modelDataList.length,
            itemBuilder: (context,index){
              final item=homecontroller.modelDataList[index];
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: Get.size.width,
                  height: Get.size.height*0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(item.image.toString()),fit: BoxFit.cover
                    )
                  ),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment:Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                          color: Colors.black,
                          width: Get.size.width*0.23,
                          height: Get.size.height*0.05,
                          child: Center(child: Text(item.name.toString(),style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 35,vertical: 15),
                        child: Align(
                            alignment:Alignment.bottomLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    RatingBarIndicator(
                                      // rating: 3.3,
                                      rating: double.parse(item.star.toString()),
                                      itemBuilder: (context, index) =>
                                          Icon(Icons.star, color: Colors.white),
                                      itemCount: 5,
                                      itemSize: 15.0,
                                      direction: Axis.horizontal,
                                    ),
                                    Text('(',style: TextStyle(color: Colors.white),),
                                    Text(item.star.toString(),style: TextStyle(color: Colors.white),),
                                    Text(')',style: TextStyle(color: Colors.white),),
                                  ],
                                ),
                                Text(item.name.toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),

                                Row(
                                  children: [
                                    Text('Flyat',style: TextStyle(color: Colors.white,fontSize: 13)),
                                    SizedBox(width: 10,),
                                    Text("USD ${item.price}",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold)),
                                  ],
                                )
                             ],
                            )),
                      ),
                    ],
                  ),
                ),
              );
            },
          )),

          SizedBox(height: Get.size.height*0.06,),
          Text('Featured Cars',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

          SizedBox(height: Get.size.height*0.06,),
          FeatureCars(),
        ],
      ),
    );
  }

}
