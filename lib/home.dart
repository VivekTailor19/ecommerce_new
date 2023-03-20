import 'package:ecommerce/electronics.dart';
import 'package:ecommerce/fashion.dart';
import 'package:ecommerce/home_appliance.dart';
import 'package:flutter/material.dart';

import 'dataModal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int i = 0;

//List<InfoModal> ele = [InfoModal(type: "Electronics",name: "${item_electro_name}")];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Column(
          children: [
            Text("Explore Product",
                style: TextStyle(fontSize: 35, color: Colors.white)),
            SizedBox(height: 10),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(Icons.search,size: 25),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text("Enter Items",style: TextStyle(fontSize: 25)),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        i = 0;
                      });
                    },
                    child: Text("Electronics",
                        style: TextStyle(fontSize: 20, color: Colors.white))),
                InkWell(
                    onTap: () {
                      setState(() {
                        i = 1;
                      });
                    },
                    child: Text("Fashion",
                        style: TextStyle(fontSize: 20, color: Colors.white))),
                InkWell(
                    onTap: () {
                      setState(() {
                        i = 2;
                      });
                    },
                    child: Text("Home Appliance",
                        style: TextStyle(fontSize: 20, color: Colors.white))),
              ],
            ),
            SizedBox(height: 25),
            IndexedStack(
              index: i,

              children: [
                Electronics(),
                Fashion(),
                HomeAppliance(),

              ],
            ),


            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white,),
                  child: Icon(Icons.favorite_border_rounded, color: Colors.black,size: 30),

                ),
                SizedBox(width: 10),
                Container(
                  height: 50,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white,),
                  child: Icon(Icons.tune_rounded, color: Colors.black,size: 30),

                ),
                SizedBox(width: 10),
                Container(
                  height: 50,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white,),
                  child: Icon(Icons.local_mall_outlined, color: Colors.black,size: 30),

                ),


              ],
            )
          ],
        ),
      ),
    );
  }


}


/*
Electronics Items

'HP Pavillion 11 Gen',
  'LG 72" Edge',
  'Iphone 11 Pro',
  'Dell Inspiron 16',


   "assets/images/electronics/laptop2.jpg",
  "assets/images/electronics/tv3.jpg",
  "assets/images/electronics/iphone2.jpg",
  "assets/images/electronics/laptop3.jpg",

   "HP 12th Generation Intel® Core™ i5 processor Windows 11 Home 35.6 cm (14) diagonal IPS Brightview 250 nits display (1920X1080) ",
  "LG Audio , LED Display with 72inch 4k screen smartTV with given 5 year screen warrantry and 10 year processor warrantry ",
  "iphone 11 6.1-inch display, the iPhone 11 is between the 5.4-inch ",
  "Dell 11th Gen Intel® Core™ i3-1115G4 (6 MB cache, 2 cores, 4 threads, 3.00 GHz to 4.10 GHz Turbo)",

*/