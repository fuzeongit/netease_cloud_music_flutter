import 'package:flutter/material.dart';

class LinkWidget extends MouseRegion {
  LinkWidget({Key? key, GestureTapCallback? onTap, required Widget child})
      : super(
            cursor: SystemMouseCursors.click,
            key: key,
            child: GestureDetector(
              onTap: onTap,
              child: child,
            ));
}
