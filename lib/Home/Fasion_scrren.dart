import 'package:flutter/material.dart';

class Fasiohn_scrren extends StatefulWidget {
  const Fasiohn_scrren({Key? key}) : super(key: key);

  @override
  State<Fasiohn_scrren> createState() => _Fasiohn_scrrenState();
}

class _Fasiohn_scrrenState extends State<Fasiohn_scrren> {

  List img=[
    "assetc/image/fasion/1.jpeg",
    "assetc/image/fasion/2.jpeg",
    "assetc/image/fasion/3.jpeg",
    "assetc/image/fasion/4.jpeg",
    "assetc/image/fasion/5.jpeg",
    "assetc/image/fasion/6.jpeg",
    "assetc/image/fasion/7.jpeg",
    "assetc/image/fasion/8.jpeg",
    "assetc/image/fasion/9.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
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
                    padding: const EdgeInsets.only(top: 2,left: 20),
                    child: Icon(Icons.favorite,size: 30,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2,right: 20),
                    child: Icon(Icons.shopping_bag,size: 30,),
                  ),
                ],
              ),
              Image.asset("$m",width: 200,height: 200),
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
