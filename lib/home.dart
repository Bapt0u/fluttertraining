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
            onPressed: () {
              // todo
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              //todo
            },
          )
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,
        children: _buildGridCards(80),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}

List<Card> _buildGridCards(int count) {
  List<String> imagePath= ["palm-tree.png", "stag.png", "tete.png"];
  List<Card> cards = List.generate(
    count,
    (int index) => Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 18.0 / 11.0,
            child: Image.asset("img/${imagePath[index%3]}", fit: BoxFit.fitWidth),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 12, 16, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Title $index"),
                SizedBox(height: 8.0),
                Text("secondary Text"),
              ],
            ),
          ),
        ],
      ),
    ),
  );

  return cards;
}