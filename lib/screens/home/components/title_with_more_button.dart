

import 'package:flutter/material.dart';
import 'package:ui_plant_app/utils/constants.dart';

class TitleWithMoreButton extends StatelessWidget {

  final String title;
  final Function press;

  const TitleWithMoreButton({
    Key? key,
    required this.title,
    required this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleWithCustomUnderline(text: title,),
          TextButton(
              onPressed: press(),
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: kPrimaryColor
              ),
              child: const Text(
                'More',
                style: TextStyle(
                    color: Colors.white
                ),
              )
          )
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {


  final String text;

  const TitleWithCustomUnderline({
    Key? key,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}