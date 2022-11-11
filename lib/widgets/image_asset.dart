import 'package:flutter/material.dart'; 

// ignore: must_be_immutable
class ImageAsset extends StatelessWidget {
  String name;
    ImageAsset(this.name,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Image.asset(name));
  }
}
