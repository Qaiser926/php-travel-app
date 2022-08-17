import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:php_travalapp/app/colors.dart';
import 'package:php_travalapp/app/modules/homePage/controller/homeController.dart';

class PopularFlight extends StatelessWidget {
  final homecontroller=Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Expanded(
          child: Container(
            // width: Get.size.width,
            // height: Get.size.height,
            child: Obx(() {
              return ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: homecontroller.modelDataList.length,
                itemBuilder: (context,index){
                  final item=homecontroller.modelDataList[index];
                  return Container(
                      margin: EdgeInsets.all(8),
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
                    // color: Colors.white,

                    // width: Get.size.width*0.2,
                    // height: Get.size.height*0.3,
                    child:Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: TColor.mainColor,
                          width: Get.size.width*0.4,
                          height: Get.size.height*0.2,
                          child: Image.network(item.image.toString(),fit: BoxFit.cover,),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          child: Container(

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(item.name.toString(),style: TextStyle(fontWeight: FontWeight.w700),),
                                Text('-----------------------------',style: TextStyle(color: Colors.grey,letterSpacing: 1.7),),

                             SizedBox(height: 6,),
                             Row(
                               children: [
                                 Text(item.name.toString(),style: TextStyle(fontWeight: FontWeight.w700),),
                                 SizedBox(width: 8,),
                                 Icon(Icons.arrow_forward,size: 15,color: Colors.grey.shade600,),
                                 SizedBox(width: 8,),
                                 Text(item.name.toString(),style: TextStyle(fontWeight: FontWeight.w700),),
                               ],
                             ),
                                SizedBox(height: 6,),
                                RichText(text: TextSpan(
                                  children: [
                                    TextSpan(text: 'From',style: TextStyle()),
                                    TextSpan(text: '    '),
                                    TextSpan(text: 'USD',style: TextStyle(fontWeight: FontWeight.bold)),
                                    TextSpan(text: '  '),
                                    TextSpan(text: item.price.toString(),style: TextStyle(fontWeight: FontWeight.bold)),
                                  ]
                                ))

                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  );
                },
              );
            }),
          ),
        ),
      ),
    );
  }
}
