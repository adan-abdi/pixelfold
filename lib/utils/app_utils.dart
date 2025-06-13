import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension BuildContextX on BuildContext {
  void safePop() {
    if (canPop()) {
      pop();
    }
  }
}

extension MediaQueryX on MediaQueryData {
  Size get size => Size(this.size.width, this.size.height);
}
