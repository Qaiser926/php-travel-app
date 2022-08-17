import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:php_travalapp/app/colors.dart';
import 'package:php_travalapp/app/modules/homePage/controller/homeController.dart';

class FeatureCars extends StatefulWidget {


  @override
  State<FeatureCars> createState() => _FeatureCarsState();
}

class _FeatureCarsState extends State<FeatureCars> {
  int currentIndex=0;

  final pageController=PageController();

  final homecontroller=Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child:  Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child:
                featurecar(),


              ),
            ),
          ),
          SizedBox(height: Get.size.height*0.025),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(int i =0; i<homecontroller.modelDataList.length; i++)
                  pageIndicator(currentIndex==i)
              ]
          ),
          SizedBox(height: Get.size.height*0.025),



        ],
      ),
    );
  }

  Widget pageIndicator(bool isSelected){
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: isSelected?12:8,
        height: isSelected?12:8,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelected?Colors.black:Colors.grey
        ),
      ),
    );
  }

  Widget featurecar(){
    return Container(
        width: Get.size.width,
        height: Get.size.height*0.57,
        child:GetBuilder<HomeController>(
          builder: (homecontroller){
            return  ListView.builder(
              // scrollDirection: Axis.horizontal,
              // itemCount: homecontroller.modelDataList.length,
              itemCount: 1,
              itemBuilder: (context,index){

                final item=homecontroller.modelDataList;
                return   Stack(
                  alignment: Alignment.center,
                  children: [

                    Container(
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
                      width: Get.size.width,
                      height: Get.size.height*0.57,
                      child: PageView.builder(
                        controller: pageController,
                        onPageChanged: (index){
                          setState((){
                            currentIndex=index % homecontroller.modelDataList.length;
                          });
                        },
                        pageSnapping: true,
                        // scrollDirection: Axis.horizontal,
                        // itemCount: images.length,
                        itemBuilder: (context,index){
                          return Column(
                            children: [
                              Container(
                                width: Get.size.width,
                                height: Get.size.height*0.3,
                                child: Image.network(homecontroller.modelDataList[index % homecontroller.modelDataList.length].image.toString(),fit: BoxFit.cover,),
                              ),
                              SizedBox(height: 10,),
                              Align(
                                  alignment:Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 12),
                                    child: Text(homecontroller.modelDataList[index % homecontroller.modelDataList.length].name.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                                  )),
                              SizedBox(height: 6,),
                              Align(
                                  alignment:Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 12),
                                    child: Text(homecontroller.modelDataList[index % homecontroller.modelDataList.length].name.toString(),),
                                  )),

                              SizedBox(height: 10,),
                              Align(
                                  alignment:Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 12),
                                    child:  Container(
                                      width:Get.size.width*0.2,
                                      height:Get.size.height*0.04,
                                      decoration:BoxDecoration(borderRadius:BorderRadius.circular(6),
                                      color: Color(0xffF96151)
                                      ),
                                      child: Center(
                                        child: RatingBarIndicator(
                                          // rating: 3.3,
                                          rating: double.parse(item[index%homecontroller.modelDataList.length].star.toString()),
                                          itemBuilder: (context, index) =>
                                              Icon(Icons.star, color: Colors.white),
                                          itemCount: 5,
                                          itemSize: 15.0,
                                          direction: Axis.horizontal,
                                        ),
                                      ),
                                    ),
                                  )),
                              SizedBox(height: 7,),
                              Align(
                                  alignment:Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 12),
                                    child: Row(
                                      children: [
                                        Text('USD',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                                        SizedBox(width: 5,),
                                        Text(homecontroller.modelDataList[index % homecontroller.modelDataList.length].price.toString(),style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  )),

                              SizedBox(height: 7,),
                              Padding(
                                padding: const EdgeInsets.only(left: 12,bottom: 8),
                                child: Row
                                  (
                                  children: [
                                    Text('Details',style: TextStyle(fontSize: 14),),
                                    Icon(Icons.arrow_forward_ios_outlined,size: 14,)
                                  ],
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Container(
                            width:Get.size.width*0.074,
                            height:Get.size.height*0.074,
                            decoration:BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white
                            ),
                            child: Center(
                              child: IconButton(onPressed: (){
                                pageController.jumpToPage(currentIndex-1);
                              }, icon: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.grey,),),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 6),
                          child: Container(
                            width:Get.size.width*0.074,
                            height:Get.size.height*0.074,
                            decoration:BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white
                            ),
                            child: IconButton(onPressed: (){
                              pageController.jumpToPage(currentIndex+1);
                            }, icon: Center(child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,))),
                          ),
                        )
                      ],
                    ),
                  ],
                );

              },
            );
          },
        )
    );
  }
}
