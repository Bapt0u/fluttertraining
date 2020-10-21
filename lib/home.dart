import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Noraj"),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: "Menu",
          ),
          onPressed: () {
            print("Menu button");
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: (){
              // todo
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: (){
              //todo
            },
          )
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 8.0/ 9.0,
        children: <Widget>[
          Card(),
          Card(),
          Card()
        ],
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
