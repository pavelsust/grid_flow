

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_grid_flow/screen/dashboard.dart';

class SplashScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }

}

class _SplashScreen extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {


    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
        return DashboardScreen();
      }));
    });

    return Scaffold(
      body: Container(
        height: double.infinity,
        child: const Center(
          child: Text(
            "Grid Flow",
            style: TextStyle(fontSize: 50 , fontWeight: FontWeight.bold, color: Colors.black54),
          ),
        ),
      ),
    );
  }

  // Future<void> isUpdateAvailable() async {
  //   await FlutterAppUpdate.isAppUpdate.then((value){
  //     print("app update ${value["update"] as bool}");
  //     print("app version ${value["version"] as String}");
  //
  //     bool isUpdate = value["update"] as bool;
  //     if(isUpdate){
  //       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
  //         return UpdateScreen();
  //       }));
  //     } else {
  //       if (SpUtil.getBool(IS_LOGIN, defValue: false)!) {
  //         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
  //           return MainScreen();
  //         }));
  //       } else {
  //         Navigator.of(context).pushReplacement(MaterialPageRoute(
  //             builder: (BuildContext context) => LoginScreen()));
  //       }
  //     }
  //
  //   }).catchError((error){
  //     print("update error is ${error.toString()}");
  //   });
  // }

}
