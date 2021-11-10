

import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget{


  String? title;
  Icon? icon;

  ItemWidget(this.title , this.icon);

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Container(
      height: size.height*0.15,

      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            icon,
            size: 50,
          ),
          Text("${title}")
        ],
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),

    ),
  }

}