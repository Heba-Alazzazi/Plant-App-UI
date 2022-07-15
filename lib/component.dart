import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constant.dart';

import 'custom.dart';

class Component1S1 extends StatelessWidget {
  Component1S1({Key? key, required this.size}) : super(key: key);
  Size size;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: size.width,
          height: size.height * .35,
        ),
        Container(
          width: size.width,
          height: size.height * .32,
          decoration: BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)),
          ),
        ),
        Positioned(
            width: size.width,
            top: size.height * .3 * .3,
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Hi UiShopy!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    'assets/images/logo.png',
                    width: 70,
                    height: 70,
                  ),
                ],
              ),
            )),
        Positioned(
            //width: size.width,
            top: size.height * .28,
            left: size.width * .08,
            child: TextField(
              decoration: InputDecoration(
                  constraints:
                      BoxConstraints(maxHeight: 50, maxWidth: size.width * .85),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                  labelText: 'Search',
                  labelStyle: TextStyle(color: Colors.green[300]),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/search.svg',
                      height: 20,
                    ),
                  )),
            )),
      ],
    );
  }
}

class Component2S1 extends StatelessWidget {
  Component2S1({Key? key, required this.size}) : super(key: key);
  Size size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * .37,
      child: ListView(
          padding: EdgeInsets.only(top: 5, bottom: 10),
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(
              width: size.width * .44,
              child: CustomCard(
                text: 'SAMANTHA',
                price: '400\$',
                image: 'assets/images/image_1.png',
              ),
            ),
            SizedBox(
              width: size.width * .42,
              child: CustomCard(
                text: 'ANGELICA',
                price: '540\$',
                image: 'assets/images/image_2.png',
              ),
            ),
            SizedBox(
              width: size.width * .42,
              child: CustomCard(
                text: 'SAMANTHA',
                price: '400\$',
                image: 'assets/images/image_3.png',
              ),
            )
          ]),
    );
  }
}

class Component1S2 extends StatelessWidget {
  Component1S2({Key? key, required this.size}) : super(key: key);
  Size size;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 90),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomIcon(icon: 'assets/icons/sun.svg'),
              CustomIcon(icon: 'assets/icons/icon_2.svg'),
              CustomIcon(icon: 'assets/icons/icon_3.svg'),
              CustomIcon(icon: 'assets/icons/icon_4.svg'),
            ],
          ),
        ),
        Material(
          elevation: 20,
          shadowColor: Colors.green[300],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            topLeft: Radius.circular(30),
          ),
          child: ClipRRect(
            //clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50), topLeft: Radius.circular(30)),
            child: Image.asset(
              'assets/images/img.png',
              height: size.height * .8,
              width: size.width * .7,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
