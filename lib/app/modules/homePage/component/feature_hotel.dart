import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:php_travalapp/app/colors.dart';
import 'package:php_travalapp/app/modules/homePage/controller/homeController.dart';

class FeatureHotel extends StatefulWidget {
  @override
  State<FeatureHotel> createState() => _FeatureHotelState();
}

class _FeatureHotelState extends State<FeatureHotel> {
  // const FeatureHotel({Key? key}) : super(key: key);
  // List<String> images=[,


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
                // width: Get.size.width*0.9,
                // height: Get.size.height*4.3,
                child:
                // Obx(() {
                //   return ListView.builder(
                //     shrinkWrap: true,
                //     physics: NeverScrollableScrollPhysics(),
                //     scrollDirection: Axis.vertical,
                //     itemCount: homecontroller.modelDataList.length,
                //     itemBuilder: (context,index){
                //       final item=homecontroller.modelDataList[index];
                //       return Padding(
                //         padding: const EdgeInsets.symmetric(vertical: 15),
                //         child: Container(
                //           decoration: BoxDecoration(
                //             color: Colors.white,
                //             border: Border.all(color: Colors.grey.shade200,width: 0.7),
                //             borderRadius: BorderRadius.circular(8.0),
                //             // color: Colors.grey.shade200.withOpacity(0.99),
                //
                //             boxShadow: [
                //               BoxShadow(
                //                 color: Colors.transparent,
                //                 blurRadius: 0,
                //                 spreadRadius: 0.0,
                //                 offset: Offset(0, 0), // shadow direction: bottom right
                //               )
                //             ],
                //           ),
                //           // color: Colors.white,
                //
                //           // width: Get.size.width*0.2,
                //           // height: Get.size.height*0.3,
                //           child: Stack(
                //             alignment: Alignment.topLeft,
                //             children: [
                //               Positioned(
                //                top: 30,
                //
                //
                //                 child:  Container(
                //                     width: Get.size.width*0.23,
                //                     height: Get.size.height*0.06,
                //                     decoration:BoxDecoration(
                //                       color:Colors.grey.shade200,),
                //                     child: Center(child: Text("${item.price} % Discount"))),),
                //               Column(
                //                 mainAxisAlignment: MainAxisAlignment.start,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Container(
                //                     decoration: BoxDecoration(
                //                       borderRadius: BorderRadius.circular(15),
                //                     ),
                //                     // color: Colors.white,
                //                     width: Get.size.width,
                //                     height: Get.size.height*0.3,
                //                     child: Image.network(item.image.toString(),fit: BoxFit.cover,),
                //                   ),
                //                   Padding(
                //                     padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                //                     child: Row(
                //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //                       children: [
                //                         Text(item.name.toString(),style: TextStyle(fontWeight: FontWeight.w700),),
                //                         Text('\$${item.price} per night',style: TextStyle(fontWeight: FontWeight.w700),),
                //
                //                       ],
                //                     ),
                //
                //                   ),
                //                   Padding(
                //                     padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                //                     child: Row(
                //                       children: [
                //                         Text(item.des.toString(),style: TextStyle(),),
                //                         Icon(Icons.location_on,size: 15,color: TColor.maingreenColor,),
                //                         Text('2.0 km to city' ),
                //                       ],
                //                     ),
                //                   ),
                //                   Padding(
                //                     padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                //                     child: Row(
                //                       children: [
                //                         RatingBarIndicator(
                //                           // rating: 3.3,
                //                           rating: double.parse(item.star.toString()),
                //                           itemBuilder: (context, index) =>
                //                               Icon(Icons.star, color: TColor.maingreenColor),
                //                           itemCount: 5,
                //                           itemSize: 15.0,
                //                           direction: Axis.horizontal,
                //                         ),
                //                         SizedBox(width: 6,),
                //                         Text("${item.star.toString()} Reviews")
                //                         , SizedBox(height: 10,),
                //                       ],
                //                     ),
                //                   )
                //
                //                   // Padding(
                //                   //   padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                //                   //   child: Text(item.desc.toString(),style: TextStyle(),),
                //                   // ),
                //
                //                 ],
                //               ),
                //
                //
                //               // Align(
                //               //   alignment: Alignment.bottomRight,
                //               //   child: Container(
                //               //     width: Get.size.width*0.04,
                //               //     height: Get.size.height*0.02,
                //               //     color: Colors.green,
                //               //     child: Row(
                //               //       children: [
                //               //         Text('2.3',style: TextStyle(color: Colors.white),),
                //               //         Icon(Icons.star,color: Colors.white,)
                //               //       ],
                //               //     ),
                //               //   ),
                //               // )
                //             ],
                //           ),
                //         ),
                //       );
                //     },
                //   );
                // }),
          /*CarouselSlider(
                    items:images.map((e) => Image.network(e,fit: BoxFit.cover,)).toList() ,
                    // items:modelListData.map((e) => Image.network(e.model.value.featuredFlights![index].thumbnail.toString())).toList(),
                    options: CarouselOptions(
                        height: Get.size.height*0.27,
                        autoPlay: true,
                        enlargeCenterPage: false,
                        aspectRatio: 1,
                        viewportFraction: 1,
                        pageSnapping: true,
                      // onPageChanged: (index){
                      //     setState((){
                      //       currentIndex=index;
                      //     });
                      // }
                    ),
                  ),*/
              featurehotel(),


              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for(int i =0; i<homecontroller.modelDataList.length; i++)
             pageIndicator(currentIndex==i)
            ]
          ),

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
  Widget featurehotel(){
    return Container(
        width: Get.size.width,
        height: Get.size.height*0.55,
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
                      height: Get.size.height*0.55,
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
                                    child:  RatingBarIndicator(
                                      // rating: 3.3,
                                      rating: double.parse(item[index%homecontroller.modelDataList.length].star.toString()),
                                      itemBuilder: (context, index) =>
                                          Icon(Icons.star, color: TColor.maingreenColor),
                                      itemCount: 5,
                                      itemSize: 15.0,
                                      direction: Axis.horizontal,
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
