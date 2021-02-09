import 'package:bagecomerce/components/catagories.dart';
import 'package:bagecomerce/components/itemcard.dart';
import 'package:bagecomerce/constants.dart';
import 'package:bagecomerce/details/detailscreen.dart';
import 'package:bagecomerce/models/product.dart';

import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "women",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Catagories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: kDefaultPaddin,

                  crossAxisSpacing: kDefaultPaddin
                  ),
              itemBuilder: (context, index) => 
              ItemCard(product: products[index],
              press: ()=>Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(product: products[index],)
                )
              ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

