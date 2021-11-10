



import 'package:flutter/material.dart';
import 'package:flutter_grid_flow/screen/others/test_screen.dart';
import 'package:flutter_grid_flow/utils/Constants.dart';
import 'package:flutter_grid_flow/widget/item_widget.dart';

class HomeScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }

}


class _HomeScreen extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height*0.35,
            child: Stack(
              children: [

                Container(
                  height: size.height*0.2,
                  color: primaryColor,
                ),

                Container(
                  margin: EdgeInsets.only(top: size.height*0.01),
                  height: size.height*0.09,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),

                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text(
                          "Md. Hello XXX",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 80 , left: 10 , right: 10),
                  height: size.height*0.25,
                  width: double.infinity,
                  child: Card(
                    elevation: 5,
                    child: SizedBox(
                      height: 100,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        "100",
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: primaryColor
                                        ),
                                      ),

                                      Text(
                                        "Total Distributor",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black54
                                        ),
                                      ),

                                    ],
                                  ),
                                ),


                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        "100",
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: primaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),

                                      Text(
                                        "Total Customer",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black54
                                        ),
                                      ),


                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Expanded(
                            child: Row(
                              children: [

                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        "100",
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: primaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),

                                      Text(
                                        "New Order",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black54
                                        ),
                                      ),

                                    ],
                                  ),
                                ),

                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        "100",
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: primaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),

                                      Text(
                                        "Cencel Order",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black54
                                        ),
                                      ),

                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: size.height*0.33,
            margin: const EdgeInsets.only(left: 10 , right: 10),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                                  return TestScreen();
                                }));
                              },
                              child: ItemWidget("Add Product" , Icons.add_shopping_cart)),
                        ),

                        Expanded(
                          child: ItemWidget("Add OutLet" , Icons.add_shopping_cart),
                        ),

                        Expanded(
                          child: ItemWidget("Add Stock" , Icons.add_shopping_cart),
                        ),

                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Expanded(
                          child: ItemWidget("List Order" , Icons.add_shopping_cart),
                        ),

                        Expanded(
                          child: ItemWidget("Report" , Icons.add_shopping_cart),
                        ),

                        Expanded(
                          child: ItemWidget("State" , Icons.add_shopping_cart),
                        ),

                      ],
                    ),
                  ],
                ),

              ],
            ),
          ),

          SizedBox(
            height: size.height*0.3,
            child: Column(
              children: [

                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text('Orders waiting to be processed'),
                      ),
                      ListTile(
                        title: Text("Waiting to be approval"),
                        leading: Icon(Icons.approval),
                        trailing: Wrap(
                          spacing: 12,
                          children: [
                            Text("10"),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                      ListTile(
                        title: Text("Wating for payment"),
                        leading: Icon(Icons.payment),
                        trailing: Wrap(
                          spacing: 12,
                          children: [
                            Text("100"),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                      ListTile(
                        title: Text("Waiting to be shipped"),
                        leading: Icon(Icons.local_shipping_rounded),
                        trailing: Wrap(
                          spacing: 12,
                          children: [
                            Text("200"),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )

        ],
      ),
    );
  }

}