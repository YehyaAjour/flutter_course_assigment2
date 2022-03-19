import 'package:flutter/material.dart';

class CustomElementItem extends StatelessWidget {
  final String? title;
  final VoidCallback? onTap;

  CustomElementItem({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap!,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title ?? "",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
