import 'package:electronic_shop/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimryColor,
      appBar: HomeAppBar(),
      body: HomeBody(),
    );
  }

  AppBar HomeAppBar() {
    return AppBar(
      backgroundColor: kprimryColor,
      elevation: 0,
      centerTitle: false,
      title: Text(
        'مرحبا بكم في متجر الإلكترونات',
        //style: GoogleFonts.getFont('Almarai'),
      ),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
    );
  }
}
