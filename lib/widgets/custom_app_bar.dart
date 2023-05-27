import 'package:flutter/material.dart';
import 'custom_serach_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon, this.onTap})
      : super(key: key);

  final String title;

  final IconData icon;

  final void Function()? onTap ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 24),
        ),
        const Spacer(),
        GestureDetector(
          onTap: onTap,
          child: CustomSearchIcon(
            icon: icon,
          ),
        ),
      ],
    );
  }
}
