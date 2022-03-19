import 'package:flutter/material.dart';

import 'custom_element_item.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Drawer(
       elevation: 0,
       backgroundColor: Colors.white.withOpacity(0.7),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 120,),
            CustomElementItem(title: 'FIRST ELEMENT',onTap: (){}),
            CustomElementItem(title: 'SECOND ELEMENT',onTap: (){}),
            CustomElementItem(title: 'THIRD ELEMENT',onTap: (){}),
            CustomElementItem(title: 'FORTH ELEMENT',onTap: (){}),
            CustomElementItem(title: 'FIFTHE ELEMENT',onTap: (){}),
          ],
        ),
      ),
    );
  }
}
