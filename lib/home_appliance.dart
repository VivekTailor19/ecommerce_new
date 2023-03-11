import 'package:flutter/material.dart';

class HomeAppliance extends StatefulWidget {
  const HomeAppliance({Key? key}) : super(key: key);

  @override
  State<HomeAppliance> createState() => _HomeApplianceState();
}

List item_name = [
  'Iphone 12 Pro Max',
  'HP Pavillion 11 Gen',
  'LG 72" Edge',
  'Iphone 11 Pro',
  'Dell Inspiron 16',
];

List photo = [
  "assets/images/electronics/iphone2.jpg",
  "assets/images/electronics/laptop2.jpg",
  "assets/images/electronics/tv3.jpg",
  "assets/images/electronics/iphone2.jpg",
  "assets/images/electronics/laptop3.jpg",
];

List data = [
  "The iPhone 12 was Apple's mainstream flagship iPhone for 2020. Available in a 6.1-inch size, the iPhone 12 offers 5G, an OLED display, improved cameras, and Apple's A14 chip.",
  "HP 12th Generation Intel® Core™ i5 processor Windows 11 Home 35.6 cm (14) diagonal IPS Brightview 250 nits display (1920X1080) ",
  "LG Audio , LED Display with 72inch 4k screen smartTV with given 5 year screen warrantry and 10 year processor warrantry ",
  "iphone 11 6.1-inch display, the iPhone 11 is between the 5.4-inch ",
  "Dell 11th Gen Intel® Core™ i3-1115G4 (6 MB cache, 2 cores, 4 threads, 3.00 GHz to 4.10 GHz Turbo)",
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
                 // InfoModal info = InfoModal(name: item_name.toString(),photo: photo.toString(),data: data.toString());
                //  Navigator.pushNamed(context, "view" , arguments: info);
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
        height: 250,
        width: 150,
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
              Image.asset("${img}"),
              Text("${item_name}",
                  style: TextStyle(fontSize: 15, color: Colors.blue),textAlign: TextAlign.left),
              Text("⭐⭐⭐⭐⭐", style: TextStyle(fontSize: 11)),
              SizedBox(height: 20),
              Text("See the details >",
                  style: TextStyle(fontSize: 12, color: Colors.lightBlue)),
            ],
          ),
        ),
      ),
    );
  }

}
