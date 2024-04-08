import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData leadingIcon;
  final IconData trailingIcon;
  final backgroundColor;
  final VoidCallback? onLeadingPressed;
  final VoidCallback? onTrailingPressed;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.leadingIcon,
    required this.trailingIcon,
    this.onLeadingPressed,
    this.onTrailingPressed,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      leading: IconButton(
        icon: Icon(leadingIcon,color: const Color(0xffF65857),),
        onPressed: onLeadingPressed,
      ),
      title: Text(title,style: const TextStyle(color: Color(0xffF65857)),),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(trailingIcon,color: const Color(0xffF65857),),
          onPressed: onTrailingPressed,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
