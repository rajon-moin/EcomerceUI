
import 'package:bagecomerce/components/body.dart';
import 'package:bagecomerce/constants.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(),
      body: Body(),
    );
  }

  AppBar newMethod() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: (){},
        
        ),
        actions:<Widget> [
          IconButton(icon: SvgPicture.asset("assets/icons/search.svg",
          color: kTextColor,
          ),
          onPressed: (){

          },
          ),
          IconButton(icon: SvgPicture.asset("assets/icons/cart.svg",
          color: kTextColor,
          ),
          onPressed: (){

          },
          ),
          SizedBox(width: kDefaultPaddin/2,)
        ],
    );
  }
}