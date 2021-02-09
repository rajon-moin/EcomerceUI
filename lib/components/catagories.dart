import 'package:bagecomerce/constants.dart';
import 'package:flutter/material.dart';
class Catagories extends StatefulWidget {
  @override
  _CatagoriesState createState() => _CatagoriesState();
}

class _CatagoriesState extends State<Catagories> {
  List<String> catagories = ["handbag", "jwellery", "footwear", "dresses"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: catagories.length,
          itemBuilder: (context, index) => buildCatgories(index),
        ),
      ),
    );
  }

  buildCatgories(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
                  selectedIndex = index;
                });
      },
      child: Padding(padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            catagories[index],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: selectedIndex == index ? kTextColor:kTextLightColor,
            ),

          ),
          Container(
            height: 2,
            margin: EdgeInsets.only(top: kDefaultPaddin/4),
            width: 30,
            color: selectedIndex == index ?Colors.white:Colors.transparent,
          )
        ],
      ),
      

      ),
    );
  }

 
}
