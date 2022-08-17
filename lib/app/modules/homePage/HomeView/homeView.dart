import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:php_travalapp/app/colors.dart';
import 'package:php_travalapp/app/modules/homePage/HomeModel/homePageModelClass.dart';
import 'package:php_travalapp/app/modules/homePage/component/custom_images.dart';
import 'package:php_travalapp/app/modules/homePage/component/feature_hotel.dart';
import 'package:php_travalapp/app/modules/homePage/component/feature_tour.dart';
import 'package:php_travalapp/app/modules/homePage/component/menu_filterPage/dataFilteration.dart';
import 'package:php_travalapp/app/modules/homePage/component/popular_flight.dart';
import 'package:php_travalapp/app/modules/homePage/component/topIcon.dart';
import 'package:php_travalapp/app/modules/homePage/controller/homeController.dart';

class HomeViewPage extends StatelessWidget {
  // const HomeViewPage({Key? key}) : super(key: key);

  List<HomeController> modelListData=<HomeController>[];
  List<Color> colors = [Color(0xFFF2F2FF),Color(0xFFFFDCFB),Color(0xFFFFF1E0),Color(0xFFE5F1F8)];
  List<String> image=[CustomImages.travelIcon,CustomImages.hotelIcon,CustomImages.aeroplaneIcon,CustomImages.discount];

  final homecontroller=Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.backgroundColor,
      // body: Center(
      //   child: ResponseDesignWay(),
      // )
      body:ResponseDesignWay()

    );
  }
}

class ResponseDesignWay extends GetResponsiveView<HomeController>{

  final homecontroller=Get.find<HomeController>();

  ResponseDesignWay():super(settings: ResponsiveScreenSettings(
    desktopChangePoint: 800,
    tabletChangePoint: 700,
    watchChangePoint: 600,
  ));
  @override
  Widget builder()=>SingleChildScrollView(
    child: Column(
      children: [
       //  Text('Width>=800 then desktop',style: TextStyle(fontSize: 35),),
       //  SizedBox(height: 8,),
       //  Text('Width>=700 then tablet',style: TextStyle(fontSize: 35),),
       // SizedBox(height: 8,),
       //  Text('Width<=600 then watch',style: TextStyle(fontSize: 35),),
       //  SizedBox(height: 8,),
       //  Text('Width>600 then mobile',style: TextStyle(fontSize: 35),),
       //  SizedBox(height: 8,),
        DefaultTabController(

          length: 4,
          initialIndex: 0,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  width: Get.size.width,
                  height: Get.size.height*0.08,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                            decoration: BoxDecoration(
                                color: TColor.mainIconColor,
                                borderRadius: BorderRadius.circular(6)
                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                  onTap: (){
                                    Get.to(DataFilteration());

                                  },
                                  child: Icon(Icons.menu)),
                            )),
                      ),
                      Text('Explore the Nature',style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.w400,fontSize: 17),),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                            decoration: BoxDecoration(
                                color: TColor.mainIconColor,
                                borderRadius: BorderRadius.circular(6)
                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.notifications_none),
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                TabBar(
                  physics: BouncingScrollPhysics(),
                  isScrollable: true,
                  indicatorWeight: 0,

                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  tabs: [
                    Text('Recommended',style: TextStyle(color: Colors.black),),
                    Text('Popular',style: TextStyle(color: Colors.black),),
                    Text('New Destination',style: TextStyle(color: Colors.black),),
                    Text('Hidden Games',style: TextStyle(color: Colors.black),),
                  ],
                ),
                // Obx(() {
                //
                //   if (homecontroller.isLoading.value) {
                //     return Center(child: const CircularProgressIndicator());
                //   }
                //   if (homecontroller.isEmptyData.value) {
                //     return Center(
                //         child: InkWell(
                //           onTap: () {},
                //           child: const Text("No Data Found"),
                //         ));
                //   }
                //   return ListView.builder(
                //     itemCount: homecontroller.model.value.featuredFlights!.length,
                //     itemBuilder: (context,index){
                //       final itemList=homecontroller.model.value.featuredFlights![index];
                //       return Container(
                //         height: Get.size.height*0.25,
                //         width: Get.size.width,
                //         child: CarouselSlider(
                //           items:images.map((e) => Image.asset(e,fit: BoxFit.cover,)).toList() ,
                //           // items:modelListData.map((e) => Image.network(e.model.value.featuredFlights![index].thumbnail.toString())).toList(),
                //           options: CarouselOptions(
                //               height: Get.size.height*0.25,
                //               autoPlay: true,
                //               enlargeCenterPage: true,
                //               aspectRatio: 1/0.8,
                //               viewportFraction: 0.5,
                //               pageSnapping: true
                //           ),
                //         ),
                //       );
                //     },
                //   );
                // })
                SizedBox(height: 20,),
              /*  Container(
                  height: Get.size.height*0.27,
                  // height: 180.h,
                  // width: 100.w,
                  // width: Get.size.width,
                  child: CarouselSlider(
                    items: images.map((e) => ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                            width: Get.size.width*0.8,
                            child: Image.network(e,fit: BoxFit.fill,)))).toList(),
                    // items:modelListData.map((e) => Image.network(e.model.value.featuredFlights![index].thumbnail.toString())).toList(),
                    options: CarouselOptions(
                        height: Get.size.height*0.27,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 1/0.7,
                        // initialPage: ,
                        viewportFraction: 0.7,
                        pageSnapping: true
                    ),
                  ),
                ),*/
                SizedBox(height: 20,),

                //
                // Obx(() =>
                GetBuilder<HomeController>(builder: (controller){
                  return    Stack(
                    children: [
                      Column(

                        children: [
                          Container(
                            width: Get.size.width,
                            height: Get.size.height*0.17,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context,index){

                                return Column(

                                  children: [
                                    Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 15),
                                          child: Container(
                                            width: Get.size.width*0.12,
                                            height: Get.size.height*0.12,
                                            decoration: BoxDecoration(
                                              color: TColor.mainIconColor,
                                              shape: BoxShape.circle,

                                            ),
                                            // child: TopIcon(
                                            //   // color: colors[index],
                                            //   // onTap: Get.to(ontap[index]),
                                            //   image: image[index],
                                            //
                                            // ),
                                            child: Center(child: Text('pic')),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(homecontroller.modelDataList[index].name.toString()),
                                  ],
                                );

                              },
                            ),

                          ), SizedBox(height: 10,),

                          Align(
                            alignment: Alignment.center,
                            child: commonText(title: 'Top Flight Destinations',size: 20, fontWeight: FontWeight.bold,)
                          ),
                          PopularFlight(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Container(
                                    width:Get.size.width*0.023,
                                    height:Get.size.height*0.023,
                                    decoration: BoxDecoration(
                                      shape:BoxShape.circle,
                                      border: Border.all(width: 1,color: Colors.grey),
                                    ),
                                    child: Icon(Icons.question_mark,size: 7,),
                                  ),
                                  commonText(title: 'Average round-trip price per person, taxes and fees included.'),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Align(
                            alignment: Alignment.center,
                            child: commonText(title: 'Featured Hotels',size: 20,fontWeight: FontWeight.bold,)
                          ),
                        ],
                      ),
                    ],
                  );
                }),

              // search bar
              /*  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          // width: Get.size.width*0.8,
                            height: Get.size.height*0.1,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Search . . .'
                                  ),
                                ),
                              ),
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:TColor.maingreenColor,
                          ),
                          // width: Get.size.width*0.1,
                          height: Get.size.height*0.2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.search,color: Colors.white,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),*/
                // SizedBox(height: 10,),
                // chose date
             /*   Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // width: Get.size.width*0.43,
                        height: Get.size.height*0.1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Choose Date',style: TextStyle(color: Colors.grey),),
                            Text('15,Aug-20,Aug')
                          ],
                        ),
                      ),
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 3,
                        indent: 20,
                        endIndent: 0,
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          // width: Get.size.width*0.43,
                          height: Get.size.height*0.1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Number of Rooms',style: TextStyle(color: Colors.grey),),
                              Text('1 Room - 2 Adults')
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),*/
                SizedBox(height: 10,),
               FeatureHotel(),
                SizedBox(height: Get.size.height*0.1,),

                FeatureTours(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

class commonText extends StatelessWidget {

 final String title;
 final FontWeight? fontWeight;
 final double? size;


  commonText({required this.title,this.fontWeight,this.size});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Text(title,style: TextStyle(
        fontWeight: fontWeight,
        fontSize: size,

      ),),
    );
  }
}
