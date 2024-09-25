import 'package:flutter/material.dart';

class Drawertile extends StatelessWidget {
  final String text;
  final IconData? icon;
  final void Function()? onTap;
  const Drawertile(
      {super.key, required this.text, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      onTap: onTap,
    );
  }
}
