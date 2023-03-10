import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int i = 2;
List item_electro_name = [
  'Sony Bravia 55" Classic',
  'Iphone 13 Pro',
  'Lenovo ThinkBook 15 Gen',
  'Parasonic 44" Premium',
  'Iphone 12 Pro Max',

];
List photo_electro = [
  "assets/images/electronics/tv1.jpg",
  "assets/images/electronics/iphone1.jpg",
  "assets/images/electronics/laptop1.jpg",
  "assets/images/electronics/tv2.jpg",
  "assets/images/electronics/iphone2.jpg",

];
List data_electro = [
  "Sony dual Audio , LED Display with 55inch 4k screen smartTV with given 5 year screen warrantry and 10 year processor warrantry ",
  "iPhone 13 models come in 5.4 and 6.1-inch sizes, with the 5.4-inch iPhone 13 Pro positioned as Apple's smallest iPhone. ",
  "Lenovo 12th Generation Intel® Core™ i5-1235U Processor (E-cores up to 3.30 GHz P-cores up to 4.40 GHz)Windows 11 Pro 64",
  "Parasonic dual Audio , LED Display with 44inch 4k screen smartTV with given 5 year screen warrantry and 10 year processor warrantry ",
  "The iPhone 12 was Apple's mainstream flagship iPhone for 2020. Available in a 6.1-inch size, the iPhone 12 offers 5G, an OLED display, improved cameras, and Apple's A14 chip.",

];
List item_fashion_name = [
  "Belt",
  "Pents",
  "Shirts",
  "Shoes",
  "T-shirts",
];
List photo_fashion = [
  "assets/images/fashion/belt.jpg",
  "assets/images/fashion/pents.jpg",
  "assets/images/fashion/shirts.jpg",
  "assets/images/fashion/shoes.jpg",
  "assets/images/fashion/t_shirt.jpg",
];
List data_fashion = [
  "Belt 1000",
  "Pents10000",
  "Shirts25",
  "Shoes 10",
  "T-shirts 9009",
];
List item_home_name = [
  'Iphone 12 Pro Max',
  'HP Pavillion 11 Gen',
  'LG 72" Edge',
  'Iphone 11 Pro',
  'Dell Inspiron 16',
];
List photo_home = [
  "assets/images/electronics/iphone2.jpg",
  "assets/images/electronics/laptop2.jpg",
  "assets/images/electronics/tv3.jpg",
  "assets/images/electronics/iphone2.jpg",
  "assets/images/electronics/laptop3.jpg",
];
List data_home = [
  "The iPhone 12 was Apple's mainstream flagship iPhone for 2020. Available in a 6.1-inch size, the iPhone 12 offers 5G, an OLED display, improved cameras, and Apple's A14 chip.",
  "HP 12th Generation Intel® Core™ i5 processor Windows 11 Home 35.6 cm (14) diagonal IPS Brightview 250 nits display (1920X1080) ",
  "LG Audio , LED Display with 72inch 4k screen smartTV with given 5 year screen warrantry and 10 year processor warrantry ",
  "iphone 11 6.1-inch display, the iPhone 11 is between the 5.4-inch ",
  "Dell 11th Gen Intel® Core™ i3-1115G4 (6 MB cache, 2 cores, 4 threads, 3.00 GHz to 4.10 GHz Turbo)",
];

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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Items("assets/images/electronics/iphone2.jpg"),
                  Items("assets/images/electronics/iphone3.jpg"),
                  // Items("assets/images/electronics/iphone3.jpg"),
                  // Items("assets/images/electronics/iphone3.jpg"),
                  // Items("assets/images/electronics/iphone3.jpg"),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Icon(Icons.favorite_border, color: Colors.black),
                ),
                SizedBox(width: 10),
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Icon(Icons.tune_outlined, color: Colors.black),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, "view");
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    alignment: Alignment.center,
                    color: Colors.white,
                    child: Icon(Icons.local_mall_outlined, color: Colors.black),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget Items(String img) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        height: 250,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite,
                      size: 20,
                      color: Colors.blueAccent,
                      shadows: [Shadow(color: Colors.black12, blurRadius: 3)]),
                  Icon(Icons.local_mall,
                      size: 20,
                      color: Colors.blueAccent,
                      shadows: [Shadow(color: Colors.black12, blurRadius: 3)]),
                ],
              ),
            ),
            SizedBox(height: 5),
            Image.asset("$img", height: 75, width: 75, fit: BoxFit.fill),
            Text("Item_name",
                style: TextStyle(fontSize: 35, color: Colors.blue)),
            Text("⭐⭐⭐⭐⭐", style: TextStyle(fontSize: 15)),
            SizedBox(height: 20),
            Text("See the details >",
                style: TextStyle(fontSize: 18, color: Colors.lightBlue)),
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