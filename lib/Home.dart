import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/component.dart';
import 'package:plant_app/constant.dart';
import 'package:plant_app/custom.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  var size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
            height: 12,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Component1S1(size: size),
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  CustomRow(text: 'Recomended'),
                  Component2S1(size: size),
                  CustomRow(text: 'Featured Plants'),
                  SizedBox(
                    height: size.height * .42,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Image.asset(
                          'assets/images/bottom_img_1.png',
                          fit: BoxFit.fill,
                          width: size.width * .7,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'assets/images/bottom_img_2.png',
                          fit: BoxFit.fill,
                          width: size.width * .7,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            label: '', icon: SvgPicture.asset('assets/icons/flower.svg')),
        BottomNavigationBarItem(
            label: '', icon: SvgPicture.asset('assets/icons/heart-icon.svg')),
        BottomNavigationBarItem(
            label: '', icon: SvgPicture.asset('assets/icons/user-icon.svg'))
      ]),
    );
  }
}
