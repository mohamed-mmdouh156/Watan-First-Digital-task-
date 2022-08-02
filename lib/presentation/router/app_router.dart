import 'package:flutter/material.dart';
import 'package:watan_task1/presentation/screens/shared/moto_second_screen.dart';
import 'package:watan_task1/presentation/screens/shared/start_screen.dart';
import 'package:watan_task1/presentation/styles/string_manager.dart';


class RoutesManager {
  static const String startRoute = '/';
  static const String motoSecondRoute = '/motoSecond';
}

class RoutesGenerator {

  static Route<dynamic> getRoutes (RouteSettings settings)
  {
    switch (settings.name)
    {
      case RoutesManager.startRoute :
        return MaterialPageRoute(builder: (_) => const StartScreen());
      case RoutesManager.motoSecondRoute :
        return MaterialPageRoute(builder: (_) => const MotoSecondScreen());
      default :
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute (){
    return MaterialPageRoute(builder: (_) => Scaffold(
      appBar: AppBar(
        title: const Text(
          StringManager.undefinedRoute,
        ),
      ),
      body: const Center(
        child: Text(
          StringManager.undefinedRoute,
        ),
      ),
    ));

  }

}