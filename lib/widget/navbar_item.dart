import 'package:flutter/material.dart';

import '../theme.dart';

class BottomNavbarItem extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  final String name;
  final VoidCallback onTap;
  const BottomNavbarItem(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.isActive,
      required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          const Spacer(),
          Image.asset(
            this.imageUrl,
            width: 26,
          ),
          const Spacer(),
          Text(
            this.name,
          ),
          const Spacer(),
          isActive
              ? Container(
                  width: 30,
                  height: 2,
                  decoration: BoxDecoration(
                      color: orangeColor,
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(900))),
                )
              : Container(),
        ],
      ),
    );
  }
}
