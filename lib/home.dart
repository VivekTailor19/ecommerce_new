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



class _HomeScreenState extends State<HomeScreen> {



  List<InfoModal> items = [
    InfoModal(name: "Mixer" , photo: "https://m.media-amazon.com/images/I/61zhqJg1bTL._SX425_.jpg" , data: "Lifelong LLMG23 Power Pro 500-Watt Mixer Grinder with 3 Jars (Liquidizing, Wet Grinding and Chutney Jar), Stainless Steel blades, 1 Year Warranty (Black)" , category: "Home-Appliance" ),
    InfoModal(name: "Iron" , photo: "https://m.media-amazon.com/images/I/31WXnM9XIYL._SY300_SX300_.jpg" , data: "USHA Armor AR1100WB 1100 W Dry Iron with Black Weilburger Soleplate (Purple)" , category: "Home-Appliance" ),
    InfoModal(name: "Washing Machine" , photo: "https://m.media-amazon.com/images/I/61Mt19diw9L._SY500_.jpg" , data: "Samsung 6.5 Kg 5 Star Inverter Fully-Automatic Top Loading Washing Machine (WA65T4262FS/TL , Silver, Wobble technology)" , category: "Home-Appliance" ),
    InfoModal(name: "AC" , photo: "https://m.media-amazon.com/images/I/31qTfGNvNRL._SX342_SY445_.jpg" , data: "Panasonic 1.5 Ton 5 Star Wi-Fi Inverter Smart Split AC (Copper Condenser, 7 in 1 Convertible with additional AI Mode, 4 Way Swing, PM 0.1 Air Purification Filter, CS/CU-NU18YKY5W,2023 Model, White)" , category: "Home-Appliance" ),
    InfoModal(name: "Fan" , photo: "https://m.media-amazon.com/images/I/41XJ2wk4M1L._SX425_.jpg" , data: "Bajaj Frore 1200 mm Ceiling Fan (Brown)" , category: "Home-Appliance" ),
    InfoModal(name: "Sony Bravia 55\" Classic" , photo: "https://m.media-amazon.com/images/I/81wxS8abrgL._SL1500_.jpg" , data: "Sony dual Audio , LED Display with 55inch 4k screen smartTV with given 5 year screen warrantry and 10 year processor warrantry " , category: "Electronics" ),
    InfoModal(name: "Iphone 13 Pro" , photo: "https://m.media-amazon.com/images/I/71fVoqRC0wL._SL1500_.jpg" , data: "iPhone 13 models come in 5.4 and 6.1-inch sizes, with the 5.4-inch iPhone 13 Pro positioned as Apple's smallest iPhone. " , category: "Electronics" ),
    InfoModal(name: "Lenovo ThinkBook 15 Gen" , photo: "https://m.media-amazon.com/images/I/81HmU0UvXZL._SL1500_.jpg" , data: "Lenovo 12th Generation Intel® Core™ i5-1235U Processor (E-cores up to 3.30 GHz P-cores up to 4.40 GHz)Windows 11 Pro 64" , category: "Electronics" ),
    InfoModal(name: "Parasonic 44\" Premium" , photo: "https://rukminim1.flixcart.com/image/416/416/xif0q/television/v/u/e/th-40ls670dx-th-40ls670dx-panasonic-original-imagg3fvnu3cazph.jpeg?q=70" , data: "Parasonic dual Audio , LED Display with 44inch 4k screen smartTV with given 5 year screen warrantry and 10 year processor warrantry " , category: "Electronics" ),
    InfoModal(name: "Iphone 12 Pro Max" , photo: "https://m.media-amazon.com/images/I/417PwBC+iEL._SX342_SY445_.jpg" , data: "The iPhone 12 was Apple's mainstream flagship iPhone for 2020. Available in a 6.1-inch size, the iPhone 12 offers 5G, an OLED display, improved cameras, and Apple's A14 chip." , category: "Electronics" ),
    InfoModal(name: "Belt" , photo: "https://m.media-amazon.com/images/I/41gUfQa6mMS.jpg" , data: "Belt 1000" , category: "fashion" ),
    InfoModal(name: "Pents" , photo: "https://m.media-amazon.com/images/I/81e4Tkj9dNL._UY550_.jpg" , data: "Pents10000" , category: "fashion" ),
    InfoModal(name: "Shirts" , photo: "https://m.media-amazon.com/images/I/61geYHHkZCL._UY550_.jpg" , data: "Shirts25" , category: "fashion" ),
    InfoModal(name: "Shoes" , photo: "https://m.media-amazon.com/images/I/61HfQkk1CRL._UY625_.jpg" , data: "Shoes 10" , category: "fashion" ),
    InfoModal(name: "T-shirts" , photo: "https://m.media-amazon.com/images/I/61XQFTiaSjL._UX569_.jpg" , data: "T-shirts 9009" , category: "fashion"),

  ];

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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(height: 25,
                child: Expanded(
                  child: ListView(scrollDirection: Axis.horizontal,

                  children: [
                    Text("Items",
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                    SizedBox(width: 10),
                    Text("Electronics",
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                    SizedBox(width: 10),
                    Text("Fashion",
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                    SizedBox(width: 10),
                    Text("Home Appliance",
                        style: TextStyle(fontSize: 18, color: Colors.white)),

                  ],),
                ),
              ),
            ),
          
            
            SizedBox(height: 25),

            ListView.builder(itemBuilder: (context, index) {

              },
            scrollDirection: Axis.horizontal,itemCount: items.length),


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