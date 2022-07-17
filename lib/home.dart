import 'package:menu_animated/home_menu.dart';
import 'package:flutter/material.dart';

class HomeMenu extends StatefulWidget {
  HomeMenu({Key? key}) : super(key: key);

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Menu Animated"),
      ),
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Menu(),
            ],
          ),
        ),
      ),
    );
  }
}
