

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_grid_flow/screen/dashboard/home_screen.dart';
import 'package:flutter_grid_flow/screen/dashboard/product_screen.dart';
import 'package:flutter_grid_flow/screen/dashboard/profile_screen.dart';
import 'package:flutter_grid_flow/screen/dashboard/statistics_screen.dart';
import 'package:flutter_grid_flow/screen/dashboard/store_screen.dart';
import 'package:flutter_grid_flow/utils/TabBarMaterialWidget.dart';
import 'package:flutter_grid_flow/utils/extension.dart';


enum ScreenHome { home, secondhome, favourite }


class DashboardScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DashboardScreen();
  }

}

class _DashboardScreen extends State<DashboardScreen> with TickerProviderStateMixin , WidgetsBindingObserver{

  int index = 0;

  List<GlobalKey<NavigatorState>> navigatorKeys = <GlobalKey<NavigatorState>>[
     GlobalKey<NavigatorState>(),
     GlobalKey<NavigatorState>(),
     GlobalKey<NavigatorState>(),
     GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];


  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance!.addObserver(this);

  }


  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance!.removeObserver(this);
  }

  @override
  Future<bool> didPopRoute() async {
    if (navigatorKeys[index].currentState!.canPop()) {
      navigatorKeys[index].currentState!.pop();
    } else {
      // TODO: need to handel back press for application close
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {

    final List<Widget> screens = <Widget>[
      Navigator(
        key: navigatorKeys[0],
        initialRoute: "home",
        onGenerateRoute: (RouteSettings routeSettings) {
          Route? route;
          if (routeSettings.name == "home") {
            route = MaterialPageRoute(builder: (_) => HomeScreen());
          }
          return route;
        },
      ),
      Navigator(
        key: navigatorKeys[1],
        initialRoute: "Stat",
        onGenerateRoute: (RouteSettings routeSettings) {
          Route? route;
          if (routeSettings.name == "Stat") {
            route = MaterialPageRoute(builder: (_) => StatisticsScreen());
          }
          return route;
        },
      ),
      Navigator(
        key: navigatorKeys[2],
        initialRoute: "product",
        onGenerateRoute: (RouteSettings routeSettings) {
          Route? route;
          if (routeSettings.name == "product") {
            route = MaterialPageRoute(builder: (_) => ProductScreen());
          }
          return route;
        },
      ),
      Navigator(
        key: navigatorKeys[3],
        initialRoute: "store",
        onGenerateRoute: (RouteSettings routeSettings) {
          Route? route;
          if (routeSettings.name == "store") {
            route = MaterialPageRoute(builder: (_) => StoreScreen());
          }
          return route;
        },
      ),
      Navigator(
        key: navigatorKeys[3],
        initialRoute: "store",
        onGenerateRoute: (RouteSettings routeSettings) {
          Route? route;
          if (routeSettings.name == "store") {
            route = MaterialPageRoute(builder: (_) => StoreScreen());
          }
          return route;
        },
      ),

      Navigator(
        key: navigatorKeys[4],
        initialRoute: "profile",
        onGenerateRoute: (RouteSettings routeSettings) {
          Route? route;
          if (routeSettings.name == "profile") {
            route = MaterialPageRoute(builder: (_) => StoreScreen());
          }
          return route;
        },
      ),

    ];

    return Container(
      color: HexColor('46B269'),
      child: SafeArea(
        child: Scaffold(
          body: PageTransitionSwitcher(
            child: screens[index],
            duration: const Duration(microseconds: 2000),
            transitionBuilder: (child, animation, secondaryAnimation) =>
                FadeThroughTransition(
                  animation: animation,
                  secondaryAnimation: secondaryAnimation,
                  child: child,
                ),
          ),

          bottomNavigationBar: TabBarMaterialWidget(
            index: index,
            onChangedTab: onChangedTab,
          ),
        ),
      ),
    );
  }

  void onChangedTab(int index) {
    setState(() {
      this.index = index;
    });
  }
}