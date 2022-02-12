import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class BottomNavControllerNotifier
    extends StateNotifier<PersistentTabController> {
  BottomNavControllerNotifier() : super(PersistentTabController());
}
