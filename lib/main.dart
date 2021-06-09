import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          color: Colors.green[200],
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              FlutterLogo(
                size: 50,
              ),
              Expanded(
                child: ListView(
                  children: [
                    for(int i=0;i<10;i++)
                      Text("List View $i")
                  ],
                ),
              ),
              FlutterLogo(
                size: 50,
              ),
            ],
            // children: <Widget>[
            //   ElevatedButton(onPressed: () {}, child: Text("")),
            //   ElevatedButton(onPressed: () {}, child: Text("")),
            //   Expanded(
            //     flex: 2, //比例
            //     child: Container(
            //       height: 20,
            //       width: 20,
            //       color: Colors.red[200],
            //     ),
            //   ),
            //   LayoutBuilder(
            //     builder: (_, cons) {
            //       print("cons: $cons");
            //       return FlutterLogo(size: 50);
            //     },
            //   ),
            //   Expanded(
            //     flex: 1,
            //     child: Container(
            //       height: 20,
            //       width: 20,
            //       color: Colors.red[200],
            //     ),
            //   ),
            // ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
