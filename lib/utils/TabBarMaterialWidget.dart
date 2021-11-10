import 'package:flutter/material.dart';

import 'extension.dart';


class TabBarMaterialWidget extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChangedTab;

  const TabBarMaterialWidget({
    required this.index,
    required this.onChangedTab
  });

  @override
  _TabBarMaterialWidgetState createState() => _TabBarMaterialWidgetState();
}

class _TabBarMaterialWidgetState extends State<TabBarMaterialWidget> {
  @override
  Widget build(BuildContext context) {
    final placeholder = Opacity(
      opacity: 0,
      child: IconButton(icon: Icon(Icons.no_cell), onPressed: null),
    );

    return Container(
      height: MediaQuery.of(context).size.height / 13.8,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [HexColor('34C06C'), HexColor('46B269')],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 0.8],
          tileMode: TileMode.clamp,
        ),
      ),
      child: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
         shape: CircularNotchedRectangle(),
        // notchMargin: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildTabItem(
              index: 0,
              label: 'Home',
              icon: Icon(Icons.home_outlined),
            ),
            buildTabItem(
              index: 1,
              label: 'Stat',
              icon: Icon(Icons.cached),
            ),

            buildTabItem(
              index: 2,
              label: 'Order',
              // icon: Icon(Icons.supervisor_account),
              icon: Icon(Icons.face),
            ),
            buildTabItem(
              index: 3,
              label: 'Store',
              icon: Icon(Icons.drag_indicator),
            ),
            buildTabItem(
              index: 4,
              label: 'profile',
              icon: Icon(Icons.drag_indicator),
            ),

          ],
        ),
      ),
    );
  }

  Widget buildTabItem({
    required int index,
    required Icon icon,
    required String label,
  }) {
    final isSelected = index == widget.index;
    TextStyle style;
    if(index == widget.index){
      style= TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold);
    }else{
      style= TextStyle(
          color: Colors.grey[350], fontWeight: FontWeight.normal);
    }
    return IconTheme(
      data: IconThemeData(
        color: isSelected ? Colors.white : Colors.grey[350],
      ),
      child: GestureDetector(
        onTap: () => widget.onChangedTab(index),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 1,
              child: IconButton(
                icon: icon,
                color: isSelected ? Colors.white : Colors.grey[350],
                onPressed: () => widget.onChangedTab(index),
              ),
            ),
            Expanded(
                flex: 1,
                child: Center(
                    child: Text(
                      label,
                      textAlign: TextAlign.center,
                      style: style,
                    ))),
          ],
        ),
      ),
    );
  }
}
