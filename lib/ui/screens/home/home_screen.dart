import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../../../state/state_providers.dart';
import '../add_piece/add_piece_screen.dart';
import 'widgets/home_widgets.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _addPieceNotifier = ref.watch(addPieceProvider.notifier);
    final _bottomNavState = ref.watch(bottomNavControllerProvider);

    List<Widget> _buildScreens() {
      return [
        Container(),
        const AddPieceScreen(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        createGenericNavBarItem(
          icon: const Icon(CupertinoIcons.home),
          title: 'Home',
          onPressed: (context) {
            _bottomNavState.jumpToTab(0);
          },
        ),
        createGenericNavBarItem(
          icon: const Icon(CupertinoIcons.plus_app),
          title: 'Add piece',
          onPressed: (context) async {
            await _addPieceNotifier.getComposers();
            _bottomNavState.jumpToTab(1);
          },
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: _bottomNavState,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style1, // Choose the nav bar style with this property.
    );
  }
}
