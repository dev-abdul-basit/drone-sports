import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  
  final String imageUrl;

  const CustomAppBar({super.key,  required this.imageUrl});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Image.asset(
        imageUrl,
        fit: BoxFit.fitWidth,
        height: 104,
      ),
    );
  }
}