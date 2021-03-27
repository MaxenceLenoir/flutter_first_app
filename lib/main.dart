import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Les widgets basiques',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      debugShowCheckedModeBanner: false,
      home: new Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Home();
  }
}

class _Home extends State<Home> {
  bool oui = false;

  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    return new Scaffold(
      appBar: AppBar(
        title: Text('Salut'),
        leading: Icon(Icons.account_circle),
        actions: <Widget>[
          Icon(Icons.access_alarm),
          Icon(Icons.golf_course),
          Icon(Icons.directions_bike),
        ],
        elevation: 10.0,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Salut les codeurs',
            style: TextStyle(
              color: (oui) ? Colors.grey[900] : Colors.green[500],
              fontSize: 32.0,
              )
            ),
            Card(
              child: Container(
                width: MediaQuery.of(context).size.width/1.5,
                height: 200.0
              )
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                setState(() {oui = !oui;});
                print('On a appuyé sur le bouton');
              }
            ),
            Container(
              height: 100,
              color: Colors.orange,
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.thumb_up,
                  color: Colors.white,
                  size: largeur/10),
                  Icon(Icons.thumbs_up_down,
                      color: Colors.white,
                      size: largeur/10),
                  Icon(Icons.directions_bike,
                      color: Colors.white,
                      size: largeur/10),
                  Icon(Icons.car_repair,
                      color: Colors.white,
                      size: largeur/10)
                ]
              )
            )
          ]
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: buttonApp,
        elevation: 8,
        child: Icon(Icons.add)
      ),
    );
  }
  void buttonApp() {
    setState((){
      oui = !oui;
    });
  }
}
