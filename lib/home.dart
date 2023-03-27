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
    InfoModal(money: "2500",name: "Mixer" , photo: "https://m.media-amazon.com/images/I/61zhqJg1bTL._SX425_.jpg" , data: "Lifelong LLMG23 Power Pro 500-Watt Mixer Grinder with 3 Jars (Liquidizing, Wet Grinding and Chutney Jar), Stainless Steel blades, 1 Year Warranty (Black)" , category: "Home-Appliance" ),
    InfoModal(money: "800",name: "Iron" , photo: "https://m.media-amazon.com/images/I/31WXnM9XIYL._SY300_SX300_.jpg" , data: "USHA Armor AR1100WB 1100 W Dry Iron with Black Weilburger Soleplate (Purple)" , category: "Home-Appliance" ),
    InfoModal(money: "45000",name: "Washing Machine" , photo: "https://m.media-amazon.com/images/I/61Mt19diw9L._SY500_.jpg" , data: "Samsung 6.5 Kg 5 Star Inverter Fully-Automatic Top Loading Washing Machine (WA65T4262FS/TL , Silver, Wobble technology)" , category: "Home-Appliance" ),
    InfoModal(money: "50500",name: "AC" , photo: "https://m.media-amazon.com/images/I/31qTfGNvNRL._SX342_SY445_.jpg" , data: "Panasonic 1.5 Ton 5 Star Wi-Fi Inverter Smart Split AC (Copper Condenser, 7 in 1 Convertible with additional AI Mode, 4 Way Swing, PM 0.1 Air Purification Filter, CS/CU-NU18YKY5W,2023 Model, White)" , category: "Home-Appliance" ),
    InfoModal(money: "2700",name: "Fan" , photo: "https://m.media-amazon.com/images/I/41XJ2wk4M1L._SX425_.jpg" , data: "Bajaj Frore 1200 mm Ceiling Fan (Brown)" , category: "Home-Appliance" ),
    InfoModal(money: "66000",name: "Sony Bravia 55\" Classic" , photo: "https://m.media-amazon.com/images/I/81wxS8abrgL._SL1500_.jpg" , data: "Sony dual Audio , LED Display with 55inch 4k screen smartTV with given 5 year screen warrantry and 10 year processor warrantry " , category: "Electronics" ),
    InfoModal(money: "15500",name: "Iphone 13 Pro" , photo: "https://m.media-amazon.com/images/I/71fVoqRC0wL._SL1500_.jpg" , data: "iPhone 13 models come in 5.4 and 6.1-inch sizes, with the 5.4-inch iPhone 13 Pro positioned as Apple's smallest iPhone. " , category: "Electronics" ),
    InfoModal(money: "72500",name: "Lenovo ThinkBook 15 Gen" , photo: "https://m.media-amazon.com/images/I/81HmU0UvXZL._SL1500_.jpg" , data: "Lenovo 12th Generation Intel® Core™ i5-1235U Processor (E-cores up to 3.30 GHz P-cores up to 4.40 GHz)Windows 11 Pro 64" , category: "Electronics" ),
    InfoModal(money: "82500",name: "Parasonic 44\" Premium" , photo: "https://rukminim1.flixcart.com/image/416/416/xif0q/television/v/u/e/th-40ls670dx-th-40ls670dx-panasonic-original-imagg3fvnu3cazph.jpeg?q=70" , data: "Parasonic dual Audio , LED Display with 44inch 4k screen smartTV with given 5 year screen warrantry and 10 year processor warrantry " , category: "Electronics" ),
    InfoModal(money: "12500",name: "Iphone 12 Pro Max" , photo: "https://m.media-amazon.com/images/I/417PwBC+iEL._SX342_SY445_.jpg" , data: "The iPhone 12 was Apple's mainstream flagship iPhone for 2020. Available in a 6.1-inch size, the iPhone 12 offers 5G, an OLED display, improved cameras, and Apple's A14 chip." , category: "Electronics" ),
    InfoModal(money: "200",name: "Belt" , photo: "https://m.media-amazon.com/images/I/41gUfQa6mMS.jpg" , data: "Belt 1000" , category: "fashion" ),
    InfoModal(money: "500",name: "Pents" , photo: "https://m.media-amazon.com/images/I/81e4Tkj9dNL._UY550_.jpg" , data: "Pents10000" , category: "fashion" ),
    InfoModal(money: "800",name: "Shirts" , photo: "https://m.media-amazon.com/images/I/61geYHHkZCL._UY550_.jpg" , data: "Shirts25" , category: "fashion" ),
    InfoModal(money: "50",name: "Shoes" , photo: "https://m.media-amazon.com/images/I/61HfQkk1CRL._UY625_.jpg" , data: "Shoes 10" , category: "fashion" ),
    InfoModal(money: "500",name: "T-shirts" , photo: "https://m.media-amazon.com/images/I/61XQFTiaSjL._UX569_.jpg" , data: "T-shirts 9009" , category: "fashion"),

  ];
  List<InfoModal> filter = [];
  InfoModal info = InfoModal();



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
                    GestureDetector(onTap: () {
                      setState(() {
                        filter = items;
                      });

                      },
                      child: Text("Items",
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(onTap: () {
                      filter = [];
                      for(int i = 0 ; i<items.length; i++)
                        {
                          if(items[i].category== "Electronics")
                            {
                              setState(() {
                                filter.add(items[i]);
                              });
                            }
                        }

                    },
                      child: Text("Electronics",
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(onTap: () {
                      filter = [];
                      for(int i = 0 ; i<items.length; i++)
                      {
                        if(items[i].category == "fashion")
                        {
                          setState(() {
                            filter.add(items[i]);
                          });
                        }
                      }

                    },
                      child: Text("Fashion",
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(onTap: () {
                      filter = [];
                      for(int i = 0 ; i<items.length; i++)
                      {
                        if(items[i].category == "Home-Appliance")
                        {
                          setState(() {
                            filter.add(items[i]);
                          });
                        }
                      }
                    },
                      child: Text("Home Appliance",
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ),

                  ],),
                ),
              ),
            ),
          
            
            SizedBox(height: 25),

            Container( height: 370,
              
              child: Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return InkWell(onTap: () {
                    info = InfoModal(name: filter[index].name,photo: filter[index].photo,money: filter[index].money,data: filter[index].data);
                    Navigator.pushNamed(context, "view",arguments: info);

                  },child: Items(item_name: filter[index].name , img: filter[index].photo,money: filter[index].money));
                  },
                   scrollDirection: Axis.horizontal,
                    itemCount: filter.length,
                ),
              ),
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

  Widget Items({String? item_name, String? img,String? money }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 350,
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Column(
            //
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.favorite,
                        size: 30,
                        color: Colors.blueAccent,
                        shadows: [Shadow(color: Colors.black12, blurRadius: 3)]),
                    Icon(Icons.local_mall,
                        size: 30,
                        color: Colors.blueAccent,
                        shadows: [Shadow(color: Colors.black12, blurRadius: 3)]),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Image.network("${img}",height: 170,width: 250,fit: BoxFit.fill),
              Text("${item_name}",
                  style: TextStyle(fontSize: 25, color: Colors.blue),textAlign: TextAlign.left),
              Text("₹ $money", style: TextStyle(fontSize: 25)),
              SizedBox(height: 20),
              Text("See the details >",
                  style: TextStyle(fontSize: 20, color: Colors.lightBlue)),
            ],
          ),
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