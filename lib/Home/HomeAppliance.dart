import 'package:flutter/material.dart';

class HomeAppliance extends StatefulWidget {
  const HomeAppliance({Key? key}) : super(key: key);

  @override
  State<HomeAppliance> createState() => _HomeApplianceState();
}

class _HomeApplianceState extends State<HomeAppliance> {

  List img=[
    'assetc/image/Homeappli/16.jpeg',
    'assetc/image/Homeappli/17.jpeg',
    'assetc/image/Homeappli/18.jpeg',
    'assetc/image/Homeappli/19.jpeg',
    'assetc/image/Homeappli/20.jpeg',
    'assetc/image/Homeappli/21.png',
    'assetc/image/Homeappli/22.jpeg',
    'assetc/image/Homeappli/23.jpeg',
    'assetc/image/Homeappli/1.jpeg',
    'assetc/image/Homeappli/2.jpeg',
    'assetc/image/Homeappli/3.jpeg',
    'assetc/image/Homeappli/4.jpeg',
    'assetc/image/Homeappli/5.jpeg',
    'assetc/image/Homeappli/6.jpeg',
    'assetc/image/Homeappli/7.jpeg',
    'assetc/image/Homeappli/8.jpeg',
    'assetc/image/Homeappli/9.jpeg',
    'assetc/image/Homeappli/10.jpeg',
    'assetc/image/Homeappli/11.jpeg',
    'assetc/image/Homeappli/12.jpeg',
    'assetc/image/Homeappli/13.jpeg',
    'assetc/image/Homeappli/14.jpeg',
    'assetc/image/Homeappli/15.jpeg',
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
