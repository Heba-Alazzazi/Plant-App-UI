import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/Home.dart';
import 'package:plant_app/constant.dart';
import 'package:plant_app/detailes.dart';

class CustomRow extends StatelessWidget {
  CustomRow({Key? key, required this.text}) : super(key: key);
  String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Positioned(
              bottom: 5,
              child: Container(
                height: 5,
                width: 120,
                color: Colors.green[100],
              ),
            ),
            Text(
              text,
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                primary: mainColor),
            onPressed: () {},
            child: Text(
              'More',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ))
      ],
    );
  }
}

class CustomCard extends StatelessWidget {
  CustomCard(
      {Key? key, required this.text, required this.price, required this.image})
      : super(key: key);
  String text;
  String price;
  String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Detailes()));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Image.asset(
                image,
                fit: BoxFit.fill,
              ),
              ListTile(
                title: Text(
                  text,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'RUSSIA',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.green[300]),
                ),
                trailing: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          color: Colors.green[300],
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomIcon extends StatelessWidget {
  CustomIcon({Key? key, required this.icon}) : super(key: key);
  String icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.all(20),
        elevation: 7,
        shadowColor: Colors.green[300],
        child: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            icon,
            height: 30,
            //width: 50,
          ),
        ),
      ),
    );
  }
}
