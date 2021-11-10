import 'package:flutter/material.dart';
import 'package:flutter_grid_flow/screen/dashboard/dashboard.dart';
import 'package:flutter_grid_flow/screen/splash_screen/SplashScreen.dart';
import 'package:get_it/get_it.dart';
import 'package:sp_util/sp_util.dart';



GetIt locator = GetIt.instance;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SpUtil.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreen(),
    );
  }
}
