import 'package:flutter/material.dart';

import 'dataModal.dart';

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
  "https://m.media-amazon.com/images/I/41gUfQa6mMS.jpg",
  "https://m.media-amazon.com/images/I/81e4Tkj9dNL._UY550_.jpg",
  "https://m.media-amazon.com/images/I/61geYHHkZCL._UY550_.jpg",
  "https://m.media-amazon.com/images/I/61HfQkk1CRL._UY625_.jpg",
  "https://m.media-amazon.com/images/I/61XQFTiaSjL._UX569_.jpg",
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
