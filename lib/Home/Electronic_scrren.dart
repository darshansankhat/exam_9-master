import 'package:flutter/material.dart';

class Electronic_scrren extends StatefulWidget {
  const Electronic_scrren({Key? key}) : super(key: key);

  @override
  State<Electronic_scrren> createState() => _Electronic_scrrenState();
}

class _Electronic_scrrenState extends State<Electronic_scrren> {

  List img=[
    "assetc/image/Electronic/1.jpeg",
    "assetc/image/Electronic/2.jpeg",
    "assetc/image/Electronic/3.jpeg",
    "assetc/image/Electronic/4.jpeg",
    "assetc/image/Electronic/5.jpeg",
    "assetc/image/Electronic/6.jpeg",
    "assetc/image/Electronic/7.jpeg",
    "assetc/image/Electronic/8.jpeg",
    "assetc/image/Electronic/9.jpeg",
    "assetc/image/Electronic/10.jpeg",
    "assetc/image/Electronic/11.jpeg",
    "assetc/image/Electronic/12.jpeg",
    "assetc/image/Electronic/13.jpeg",
    "assetc/image/Electronic/14.jpeg",
    "assetc/image/Electronic/15.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(
          children: img.asMap().entries.map((e) => InkWell(onTap: () {
            Navigator.pushNamed(context, "privu",arguments: img[e.key]);
          },child: Page(img[e.key]))).toList(),
        ),
      ),
    );
  }
  Widget Page(String m)
  {
    return Row(
      children: [
        Container(
          height: 450,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            children: [
              //like cart
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 20),
                  child: Icon(Icons.favorite,size: 30,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,right: 20),
                  child: Icon(Icons.shopping_bag,size: 30,),
                ),
                ],
              ),
              SizedBox(height: 0),
              Image.asset("$m",width: 150,height: 150),
              SizedBox(height: 10),
              Text("\$500.00",style: TextStyle(fontSize: 20,color: Colors.black),),
              Text("All Electronic item on all Sale",style: TextStyle(fontSize: 20,color: Colors.black54),),
              Image.asset("assetc/image/star.png"),
            ],
          ),
        ),
        SizedBox(width: 30),
      ],
    );
  }
}
