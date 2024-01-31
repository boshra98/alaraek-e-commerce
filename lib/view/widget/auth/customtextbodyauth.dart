import 'package:flutter/material.dart';

class CustomTextBodyauth extends StatelessWidget {
  final String text;
  const CustomTextBodyauth({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Text(text ,textAlign:TextAlign.center,
        style: Theme.of(context).textTheme.bodyText1,),
    );
  }
}