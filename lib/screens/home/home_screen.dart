import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_plant_app/components/bottom_nav_bar.dart';
import 'package:ui_plant_app/screens/home/components/body.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        onPressed: (){},
        icon: SvgPicture.asset('assets/icons/menu.svg'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: const Body(),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}


