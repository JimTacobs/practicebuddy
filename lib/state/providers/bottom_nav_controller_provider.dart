import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../state_notifiers.dart';

final StateNotifierProvider<BottomNavControllerNotifier,
        PersistentTabController> bottomNavControllerProvider =
    StateNotifierProvider((ref) => BottomNavControllerNotifier());
