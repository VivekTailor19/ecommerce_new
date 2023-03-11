import 'package:ecommerce/dataModal.dart';
import 'package:flutter/material.dart';

class Electronics extends StatefulWidget {
  const Electronics({Key? key}) : super(key: key);

  @override
  State<Electronics> createState() => _ElectronicsState();
}

List item_name = [
  'Sony Bravia 55" Classic',
  'Iphone 13 Pro',
  'Lenovo ThinkBook 15 Gen',
  'Parasonic 44" Premium',
  'Iphone 12 Pro Max',

];
List photo = [
  "assets/images/electronics/tv1.jpg",
  "assets/images/electronics/iphone1.jpg",
  "assets/images/electronics/laptop1.jpg",
  "assets/images/electronics/tv2.jpg",
  "assets/images/electronics/iphone2.jpg",

];
List data = [
  "Sony dual Audio , LED Display with 55inch 4k screen smartTV with given 5 year screen warrantry and 10 year processor warrantry ",
  "iPhone 13 models come in 5.4 and 6.1-inch sizes, with the 5.4-inch iPhone 13 Pro positioned as Apple's smallest iPhone. ",
  "Lenovo 12th Generation Intel® Core™ i5-1235U Processor (E-cores up to 3.30 GHz P-cores up to 4.40 GHz)Windows 11 Pro 64",
  "Parasonic dual Audio , LED Display with 44inch 4k screen smartTV with given 5 year screen warrantry and 10 year processor warrantry ",
  "The iPhone 12 was Apple's mainstream flagship iPhone for 2020. Available in a 6.1-inch size, the iPhone 12 offers 5G, an OLED display, improved cameras, and Apple's A14 chip.",

];

class _ElectronicsState extends State<Electronics> {
  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
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
        height: 300,
        width: 200,
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
              Image.asset("${img}",height: 250,width: 150,fit: BoxFit.fill),
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
