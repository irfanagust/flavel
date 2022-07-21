import 'package:carousel_slider/carousel_slider.dart';
import 'package:flavel/theme.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final List listImages = [
    'assets/image_shoes.png',
    'assets/image_shoes2.png',
    'assets/image_shoes3.png'
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget indicatorCarousel(int index) {
      return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 2,
        ),
        width: currentIndex == index ? 16 : 4,
        height: 4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? primaryColor : const Color(0xffC4C4C4),
        ),
      );
    }

    Widget header() {
      int index = -1;

      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  // ignore: prefer_const_constructors
                  child: Icon(
                    Icons.arrow_back_ios_new,
                  ),
                ),
                // ignore: prefer_const_constructors
                Icon(
                  Icons.shopping_bag,
                ),
              ],
            ),
          ),
          CarouselSlider(
            items: listImages
                .map(
                  (e) => Image.asset(
                    e,
                    width: MediaQuery.of(context).size.width,
                    height: 310,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(
                initialPage: 0,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: listImages.map((e) {
              index = index + 1;
              return indicatorCarousel(index);
            }).toList(),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColor6,
      body: ListView(
        children: [
          header(),
        ],
      ),
    );
  }
}
