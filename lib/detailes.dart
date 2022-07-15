import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/component.dart';
import 'package:plant_app/constant.dart';
import 'package:plant_app/custom.dart';

class Detailes extends StatelessWidget {
  Detailes({Key? key}) : super(key: key);
  var size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/back_arrow.svg',
            height: 20,
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/more.svg'),
            onPressed: () {},
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Component1S2(size: size),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
              child: ListTile(
                title: Text(
                  'Angelica',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
                subtitle: Text(
                  'RUSSIA',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.green[300],
                      letterSpacing: 2),
                ),
                trailing: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '440\$',
                      style: TextStyle(color: Colors.green[300], fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 70,
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              height: 70,
              width: size.width * .5,
              decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(40))),
              child: Text(
                'Buy Now',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 70,
              width: size.width * .5,
              child: Text(
                'Descreption',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     unselectedItemColor: mainColor,
      //     showSelectedLabels: false,
      //     showUnselectedLabels: false,
      //     selectedItemColor: mainColor,
      //     items: [
      //       BottomNavigationBarItem(
      //           backgroundColor: mainColor,
      //           icon: Container(
      //             alignment: Alignment.center,
      //             width: size.width * .5,
      //             height: 40,
      //             decoration: BoxDecoration(color: mainColor),
      //             child: Text(
      //               'Buy Now',
      //               style: TextStyle(fontSize: 20),
      //             ),
      //           ),
      //           label: ''),
      //       BottomNavigationBarItem(
      //           icon: Text('Description', style: TextStyle(fontSize: 20)),
      //           label: ''),
      //     ]),
    );
  }
}
