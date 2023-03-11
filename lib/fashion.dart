import 'package:flutter/material.dart';

class Fashion extends StatefulWidget {
  const Fashion({Key? key}) : super(key: key);

  @override
  State<Fashion> createState() => _FashionState();
}

List item_name = [
  "Belt",
  "Pents",
  "Shirts",
  "Shoes",
  "T-shirts",
];
List photo = [
  "assets/images/fashion/belt.jpg",
  "assets/images/fashion/pents.jpg",
  "assets/images/fashion/shirts.jpg",
  "assets/images/fashion/shoes.jpg",
  "assets/images/fashion/t_shirt.jpg",
];
List data = [
  "Belt 1000",
  "Pents10000",
  "Shirts25",
  "Shoes 10",
  "T-shirts 9009",
];

class _FashionState extends State<Fashion> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:
          item_name.asMap().entries.map((e) =>
              InkWell(onTap: () {
                //InfoModal info = InfoModal(name: item_name.toString(),photo: photo.toString(),data: data.toString());
                setState(() {

                  //Navigator.pushNamed(context, "view" , arguments: info);
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
