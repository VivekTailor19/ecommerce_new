import 'package:ecommerce/dataModal.dart';
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

    InfoModal info = ModalRoute.of(context)!.settings.arguments as InfoModal;

    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Container(
            height: 200,
            width: 500,
            color: Colors.white,
            alignment: Alignment.center,
            child: Image.network("${info.photo}",height: 250,width: 300,fit: BoxFit.fill,),
          ),
        ),
        Expanded(
          child: Container(
            height: 250,
            width: 500,
            decoration: BoxDecoration(
                color: Color(0xffE2F8F7),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.lightBlueAccent),
                          child: Icon(Icons.local_mall,
                              size: 22, color: Colors.white)),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            color: Colors.lightBlueAccent
                          ),
                          child: Icon(Icons.favorite,
                              size: 22, color: Colors.white)),
                    ],
                  ),
                ),
                Text(
                  "${info.name}",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                Text("${info.data}",
                    style: TextStyle(
                        fontSize: 13, color: Colors.deepPurpleAccent,),textAlign: TextAlign.center),
                Text(
                  "Quality",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                Container(
                  height: 40,
                  width: 90,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),color: Color(0xffA8D1DF)),
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              count--;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 25,
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.remove,
                              size: 20,
                            ),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),color: Colors.blue),
                          ),
                        ),
                      ),
                      Expanded(child: Text("$count", style: TextStyle(fontSize: 15),textAlign: TextAlign.center,)),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              count++;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 25,
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.add,
                              size: 20,
                            ),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),color: Colors.blue),
                          ),
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
          ),
        )
      ],
    ));
  }
}
