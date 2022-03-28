import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SocilButton extends StatelessWidget {
  String imageUrl;
  Function ontap;
  SocilButton({required this.imageUrl, required this.ontap});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        ontap;
      },
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.contain,
            )),
      ), //
    );
  }
}
