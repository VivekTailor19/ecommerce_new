import 'package:flutter/material.dart';

class Item_View extends StatefulWidget {
  const Item_View({Key? key}) : super(key: key);

  @override
  State<Item_View> createState() => _Item_ViewState();
}

int count = 00;

class _Item_ViewState extends State<Item_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 200,
          width: 500,
          color: Colors.black12,
        ),
        Container(
          height: 250,
          width: 500,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 15,
                        width: 15,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.lightBlueAccent),
                        child: Icon(Icons.local_mall,
                            size: 12, color: Colors.white)),
                    Container(
                        height: 15,
                        width: 15,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.lightBlueAccent),
                        child: Icon(Icons.favorite,
                            size: 12, color: Colors.white)),
                  ],
                ),
              ),
              Text(
                "Item_Name",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.deepPurpleAccent,
                ),
              ),
              Text("Data",
                  style: TextStyle(
                      fontSize: 15, color: Colors.deepPurpleAccent)),
              Text(
                "Quality",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.deepPurpleAccent,
                ),
              ),
              Container(
                height: 25,
                width: 60,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),color: Colors.lightBlueAccent.shade100,),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          count--;
                        });
                      },
                      child: Container(
                        height: 25,
                        width: 20,
                        child: Icon(
                          Icons.remove,
                          size: 15,
                        ),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5))),
                      ),
                    ),
                    Text("$count", style: TextStyle(fontSize: 15)),
                    InkWell(
                      onTap: () {
                        setState(() {
                          count++;
                        });
                      },
                      child: Container(
                        height: 25,
                        width: 20,
                        child: Icon(
                          Icons.add,
                          size: 15,
                        ),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5))),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Money",
                        style: TextStyle(
                            fontSize: 35, color: Colors.blueAccent)),
                    Container(
                      height: 35,
                      width: 120,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.lightBlueAccent),
                      child: Text("Add to cart",
                          style:
                              TextStyle(color: Colors.white, fontSize: 15)),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
