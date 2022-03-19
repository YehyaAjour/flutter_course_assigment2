import 'package:flutter/material.dart';

import '../style.dart';
import 'custom_widget/custom_drawer_widget.dart';
import 'custom_widget/custom_element_item.dart';

class OrientationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) =>
          orientation == Orientation.portrait
              ? portraitOrientationScreen()
              : landscapeOrientationScreen(),
    );
  }
}

Widget portraitOrientationScreen() {
  return Scaffold(
    backgroundColor: Colors.red,
    appBar: AppBar(
      title: const Text('SECOND ASSIGMENT'),
      backgroundColor: purpleColor,
    ),
    drawer: const CustomDrawerWidget(),
  );
}

Widget landscapeOrientationScreen() {
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      title: const Text('SECOND ASSIGMENT'),
      backgroundColor: purpleColor,
    ),
    body: Row(
      children: [
        Expanded(
            child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  CustomElementItem(title: 'FIRST ELEMENT', onTap: () {}),
                  CustomElementItem(title: 'SECOND ELEMENT', onTap: () {}),
                  CustomElementItem(title: 'THIRD ELEMENT', onTap: () {}),
                  CustomElementItem(title: 'FORTH ELEMENT', onTap: () {}),
                  CustomElementItem(title: 'FIFTHE ELEMENT', onTap: () {}),
                ],
              ),
            ),
          ),
        )),
        Expanded(
            child: Container(
          decoration: const BoxDecoration(color: Colors.red),
        )),
      ],
    ),
  );
}
