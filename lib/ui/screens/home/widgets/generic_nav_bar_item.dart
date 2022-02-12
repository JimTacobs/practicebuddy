import 'package:flutter/cupertino.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

PersistentBottomNavBarItem createGenericNavBarItem({
  required Icon icon,
  required String title,
  required dynamic Function(BuildContext?) onPressed,
}) {
  return PersistentBottomNavBarItem(
    icon: icon,
    title: title,
    activeColorPrimary: CupertinoColors.activeBlue,
    inactiveColorPrimary: CupertinoColors.systemGrey,
    onPressed: onPressed,
  );
}
