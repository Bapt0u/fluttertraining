import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      // TODo: Change home: to a Backdrop with a HomePage frontLayer (104)
      home: HomePage(),
      // TODo: Make currentCategory field take _currentCategory (104)
      // TODo: Pass _currentCategory for frontLayer (104)
      // TODo: Change backLayer field value to CategoryMenuPage (104)
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
      // TODo: Add a theme (103)
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => LoginPage(),
      fullscreenDialog: true,
    );
  }
}