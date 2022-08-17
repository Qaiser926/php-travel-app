import 'package:another_xlider/another_xlider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:input_slider/input_slider.dart';
import 'package:php_travalapp/app/colors.dart';

class DataFilteration extends StatefulWidget {
  @override
  State<DataFilteration> createState() => _DataFilterationState();
}

class _DataFilterationState extends State<DataFilteration> {
  // const DataFilteration({Key? key}) : super(key: key);
  static double _lowerValue=1.0;
  static double _upperValue=1000.0;
  double brightness=0.0;
  RangeValues values=RangeValues(_lowerValue, _upperValue);


  bool isCheck=false;
  bool isradio=false;
  bool apartment=false;
  bool home=false;
  bool hotel=false;
  bool resort=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),
        centerTitle: true,
      automaticallyImplyLeading: false,
      leading: InkWell(
          onTap: (){
            Get.back();
          },
          child: Icon(Icons.close,color: Colors.black,)),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // FlutterSlider(
            //   values: [30, 420],
            //   max: 1000,
            //   min: 0,
            //   tooltip: FlutterSliderTooltip(
            //     leftPrefix: Icon(Icons.attach_money, size: 19, color: Colors.black45,),
            //     rightSuffix: Icon(Icons.attach_money, size: 19, color: Colors.black45,),
            //   ),
            //   onDragging: (handlerIndex, lowerValue, upperValue) {
            //     _lowerValue = lowerValue;
            //     _upperValue = upperValue;
            //     setState(() {
            //
            //     });
            //   },
            // )

           commonText('Price ( for 1 night)'),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                rangeThumbShape: RoundRangeSliderThumbShape(

                  enabledThumbRadius: 10,
                  // disabledThumbRadius: 10,
                  elevation: 6
                )
              ),
              child: RangeSlider(
                labels: RangeLabels(values.start.toString(),values.end.toString()),
                activeColor: TColor.maingreenColor,
                inactiveColor: TColor.mainColor,
                values:values,
              min: _lowerValue,
                max: _upperValue,
                onChanged: (val){
                setState((){
                  print(val);
                  values=val;
                });
                },
              ),
            ),

            commonText('Popular filters'),

          Container(
            // width: Get.size.width,
            // height: Get.size.height*0.3,
            child: Column(

              // direction: Axis.horizontal,
              // runSpacing: 2,
              // spacing: 2,
              // verticalDirection: VerticalDirection.up,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Checkbox(
                              value: isCheck,
                              onChanged: (v){
                                setState((){
                                  isCheck=v!;
                                });
                              },
                            ),
                            Text('Free Breakfast'),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(

                          children: [
                            Checkbox(
                              activeColor: TColor.maingreenColor,
                              value: isCheck,
                              onChanged: (v){
                                setState((){
                                  isCheck=v!;
                                });
                              },
                            ),
                            Text('Free Parking'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Checkbox(
                              value: isCheck,
                              onChanged: (v){
                                setState((){
                                  isCheck=v!;
                                });
                              },
                            ),
                            Text('Pool'),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Checkbox(
                              value: isCheck,
                              onChanged: (v){
                                setState((){
                                  isCheck=v!;
                                });
                              },
                            ),
                            Text('pet Friendly'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Checkbox(
                              value: isCheck,
                              onChanged: (v){
                                setState((){
                                  isCheck=v!;
                                });
                              },
                            ),
                            Text('Free Wifi'),
                          ],
                        ),
                      )
                    ],
                  ),
                )


              ],
            ),
          ),


            commonText('Distance from city center'),
            InputSlider(
              onChange: (value) => print("change: $value"),
              min: 0.0,
              max: 100.0,
              decimalPlaces: 0,
              // value: 50.0,
              // leading: Text("Percentage:"),
              defaultValue: 50,
            ),


            commonText('Type of Accommodation'),
           SwitchListTile(

             activeColor: TColor.maingreenColor,

             value: isradio, onChanged: (index){
             setState((){

               isradio=index;
             });
           },
           title: Text('All'),
           ),
            SwitchListTile( activeColor: TColor.maingreenColor,value: apartment, onChanged: (index){
              setState((){
                apartment=index;
              });
            },
              title: Text('Apartment'),
            ),
            SwitchListTile( activeColor: TColor.maingreenColor,value: home, onChanged: (index){
              setState((){
                home=index;
              });
            },
              title: Text('Home'),
            ),
            SwitchListTile( activeColor: TColor.maingreenColor,value: hotel, onChanged: (index){
              setState((){
                hotel=index;
              });
            },
              title: Text('Hotel'),
            ),
            SwitchListTile( activeColor: TColor.maingreenColor,value: resort, onChanged: (index){
              setState((){
                resort=index;
              });
            },
              title: Text('Resort'),
            ),

            SizedBox(height: Get.size.height*0.06,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: MaterialButton(onPressed: (){},
                minWidth: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text('Apply',style: TextStyle(color: Colors.white),),
              ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              color: TColor.maingreenColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget commonText(String title,){
    return  Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
          child: Text(title),
        ));
  }
}
