import 'package:flutter/material.dart';

class ShadowIcon extends StatelessWidget {
  const ShadowIcon(this.icon,
      {Key? key, required this.color, this.size, this.boxShadow})
      : super(key: key);

  final IconData icon;

  final Color color;

  final double? size;

  final BoxShadow? boxShadow;

  @override
  Widget build(BuildContext context) {
    return Text(String.fromCharCode(icon.codePoint),
        style: TextStyle(
            color: color,
            fontFamily: icon.fontFamily,
            fontSize: size ?? IconTheme.of(context).size,
            shadows: [
              boxShadow ??
                  const BoxShadow(
                      color: Colors.black87,
                      offset: Offset(0.1, .5),
                      blurRadius: 3.0)
            ]));
  }
}
