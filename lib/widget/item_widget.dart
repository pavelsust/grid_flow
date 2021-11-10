

import 'package:flutter/material.dart';
import 'package:flutter_grid_flow/utils/Constants.dart';

class ItemWidget extends StatelessWidget{


  String? title;
  IconData? icon;

  ItemWidget(this.title , this.icon);

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Card(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        height: size.height*0.15,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Icon(
              icon,
              color: primaryColor,
              size: 50,
            ),
            Container(
              margin: EdgeInsets.only(top: 6),
              child: Text("${title}",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15
              ),),
            )
          ],
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),

      ),
      elevation: 4,
    );
  }

}