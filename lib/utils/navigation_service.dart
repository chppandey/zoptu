import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic>? navigateTo(Widget screen) {
    return navigatorKey.currentState!
        .push(MaterialPageRoute(builder: (_) => screen));
  }

  Future<dynamic>? replaceWith(Widget screen) {
    return navigatorKey.currentState!
        .pushReplacement(MaterialPageRoute(builder: (_) => screen));
  }

  Future<dynamic>? removeAndNavigateTo(Widget screen) {
    return navigatorKey.currentState?.pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => screen), (route) => false);
  }

  Future<dynamic>? navigateNamed(String routeName) {
    return navigatorKey.currentState?.pushNamed(routeName);
  }

  Future<dynamic>? replaceWithNamed(String routeName) {
    return navigatorKey.currentState?.pushReplacementNamed(routeName);
  }

  Future<dynamic>? removeAndNavigateNamed(String routeName) {
    return navigatorKey.currentState
        ?.pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void goBack() {
    navigatorKey.currentState?.pop();
  }
}
