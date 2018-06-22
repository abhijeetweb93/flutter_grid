import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: new TabBarDemo(),
));


class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: new AppBar(
            bottom: new TabBar(
              tabs: [
                new Tab(icon: new Icon(Icons.directions_car)),
                new Tab(icon: new Icon(Icons.directions_transit)),
              ],
            ),
            title: new Text('Tabs Demo'),
          ),
          body: new TabBarView(
            children: [
              new MyAppGridHindi(),
              new MyAppGridEnglish(),
            ],
          ),
      ),
    );
  }
}

class MyAppGridHindi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Grid List',
      home: new Scaffold(
        body: new GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this would produce 2 rows.
          crossAxisCount: 2,
          // Generate 100 Widgets that display their index in the List
          children: new List.generate(100, (index) {
            return new Center(
              child: new Text(
                'Hindi $index',
                style: Theme.of(context).textTheme.headline,
              ),
            );
          }),
        ),
      ),
    );
  }
}

class MyAppGridEnglish extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Grid List';

    return new MaterialApp(
      title: title,
      home: new Container(
        child: new GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this would produce 2 rows.
          crossAxisCount: 2,
          // Generate 100 Widgets that display their index in the List
          children: new List.generate(100, (index) {
            return new Center(
              child: new Text(
                'English $index',
                style: Theme.of(context).textTheme.headline,
              ),
            );
          }),
        ),
      ),
    );
  }
}


