import 'package:flutter/material.dart';

import 'dataModal.dart';

class HomeAppliance extends StatefulWidget {
  const HomeAppliance({Key? key}) : super(key: key);

  @override
  State<HomeAppliance> createState() => _HomeApplianceState();
}

List item_name = [
  'Mixer',
  'Iron',
  'Washing Machine',
  'AC',
  'Fan',
];

List photo = [
  "https://m.media-amazon.com/images/I/61zhqJg1bTL._SX425_.jpg",
  "https://m.media-amazon.com/images/I/31WXnM9XIYL._SY300_SX300_.jpg",
  "https://m.media-amazon.com/images/I/61Mt19diw9L._SY500_.jpg",
  "https://m.media-amazon.com/images/I/31qTfGNvNRL._SX342_SY445_.jpg",
  "https://m.media-amazon.com/images/I/41XJ2wk4M1L._SX425_.jpg",
];

List data = [
  "Lifelong LLMG23 Power Pro 500-Watt Mixer Grinder with 3 Jars (Liquidizing, Wet Grinding and Chutney Jar), Stainless Steel blades, 1 Year Warranty (Black)",
  "USHA Armor AR1100WB 1100 W Dry Iron with Black Weilburger Soleplate (Purple)",
  "Samsung 6.5 Kg 5 Star Inverter Fully-Automatic Top Loading Washing Machine (WA65T4262FS/TL , Silver, Wobble technology)",
  "Panasonic 1.5 Ton 5 Star Wi-Fi Inverter Smart Split AC (Copper Condenser, 7 in 1 Convertible with additional AI Mode, 4 Way Swing, PM 0.1 Air Purification Filter, CS/CU-NU18YKY5W,2023 Model, White)",
  "Bajaj Frore 1200 mm Ceiling Fan (Brown)",
];

class _HomeApplianceState extends State<HomeAppliance> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:
          item_name.asMap().entries.map((e) =>
              InkWell(onTap: () {
                setState(() {
                  InfoModal info = InfoModal(name: item_name[e.key],photo: photo[e.key],data: data[e.key]);
                  Navigator.pushNamed(context, "view" , arguments: info);
                });
              },
                  child: Items(item_name[e.key],photo[e.key]))).toList(),)

      // Items("assets/images/electronics/iphone3.jpg"),
    );


  }

  Widget Items(String item_name, String img ) {
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
              Text("⭐⭐⭐⭐⭐", style: TextStyle(fontSize: 15)),
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
