import 'package:dicoding/const.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainButton extends StatelessWidget {
  late String text;
  void Function()? onTap;
  Color? primary;

  MainButton({
    required Function()? this.onTap,
    required this.text,
    Color? primary,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: primary ?? primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
      onPressed: onTap,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
