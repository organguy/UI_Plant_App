import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_plant_app/screens/details/components/icon_card.dart';
import 'package:ui_plant_app/utils/constants.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.85,
      child: Row(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: (){

                        },
                        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                      ),
                    ),
                    const Spacer(),
                    const IconCard(icon: 'assets/icons/sun.svg',),
                    const IconCard(icon: 'assets/icons/icon_2.svg',),
                    const IconCard(icon: 'assets/icons/icon_3.svg',),
                    const IconCard(icon: 'assets/icons/icon_4.svg',),
                  ],
                ),
              )
          ),
          Container(
            width: size.width * 0.75,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63)
              ),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29)
                )
              ],
              image: const DecorationImage(
                alignment: Alignment.centerLeft,
                fit: BoxFit.cover,
                image: AssetImage('assets/images/img.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}