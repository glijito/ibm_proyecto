import 'package:flutter/material.dart';
import 'package:ibm_proyecto/models/menu_options.dart';
import '../screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';
  
  static final menuOptions = <MenuOptions>[
    MenuOptions(route: 'home', name: 'Home', screen: HomeScreen(),  icon: Icons.home),
    MenuOptions(route: 'listview1', name: 'Listview Tipo 1', screen: Listview1Screen(),  icon: Icons.list),
    MenuOptions(route: 'listview2', name: 'Listview Tipo 2', screen: Listview2Screen(),  icon: Icons.list_alt),
    MenuOptions(route: 'alert_screen', name: 'Alerts', screen: AlertScreen(),  icon: Icons.add_alert),
    MenuOptions(route: 'card_screen', name: 'Tarjetas', screen: CardScreen(),  icon: Icons.card_giftcard),
  ];

  static Map<String, Widget Function(BuildContext)> getMenuRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes ={};

    for (var element in menuOptions) {
      appRoutes.addAll({element.route: (BuildContext context) => element.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(
        builder: (context)=> const AlertScreen()
    );
  }

}