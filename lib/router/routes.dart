import 'package:flutter/material.dart';
import 'package:components_app/models/models.dart';
import 'package:components_app/screens/screens.dart';

class Routes {
  //propiedades o metodos staticos se pueden acceder sin instanciar como algo global
  static const initialRoute = '/home';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: '/home',
    //     icon: Icons.list_alt_outlined,
    //     name: 'Home',
    //     screen: const HomeScreen()),
    MenuOption(
        route: '/listview1',
        icon: Icons.list_alt_outlined,
        name: 'Lista tipo uno',
        screen: const ListView1Screen()),
    MenuOption(
        route: '/listview2',
        icon: Icons.list_alt_rounded,
        name: 'Lista tipo dos',
        screen: const ListView2Screen()),
    MenuOption(
        route: '/card',
        icon: Icons.card_giftcard,
        name: 'Card',
        screen: const CardScreen()),
    MenuOption(
        route: '/alert',
        icon: Icons.card_giftcard,
        name: 'Alert',
        screen: const AlertScreen()),
    MenuOption(
        route: '/avatar',
        icon: Icons.person,
        name: 'Avatar',
        screen: const AvatarScreen()),
    MenuOption(
        route: '/animated',
        icon: Icons.play_circle_outline_outlined,
        name: 'Animated',
        screen: const AnimatedScreen()),
    MenuOption(
        route: '/inputs',
        icon: Icons.input,
        name: 'Inputs',
        screen: const InputsScreen()),
    MenuOption(
        route: '/slider',
        icon: Icons.slow_motion_video_rounded,
        name: 'Slider',
        screen: const SliderScreen()),
    MenuOption(
        route: '/listbuilder',
        icon: Icons.build_circle_outlined,
        name: 'Infinite scroll & Pull request',
        screen: const ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'/home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   '/home': (BuildContext context) => const HomeScreen(),
  //   '/listview1': (BuildContext context) => const ListView1Screen(),
  //   '/listview2': (BuildContext context) => const ListView2Screen(),
  //   '/card': (BuildContext context) => const CardScreen(),
  //   '/alter': (BuildContext context) => const AlertScreen(),
  // };

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    print(settings);
    return MaterialPageRoute(builder: ((context) => const HomeScreen()));
  }
}
