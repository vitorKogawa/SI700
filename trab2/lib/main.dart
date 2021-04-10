import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.light(),
        home: Scaffold(
          appBar: AppBar(title: Text('Thor e seu Martelo')),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Wrap(
                  children: buildSquares(),
                )
              ],
            ),
          ),
        ));
  }
}

List<Widget> buildSquares() {
  List<Widget> squares = [];
  List<List<int>> thorPath = [
    [0, 0],
    [1, 0],
    [2, 0],
    [3, 0],
    [3, 1],
    [3, 2],
    [2, 2],
    [2, 3],
    [2, 4],
    [3, 4],
    [4, 4]
  ];

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      squares.add(Container(
          decoration: BoxDecoration(color: Colors.green),
          height: 100,
          width: 60,
          key: Key("$i$j"),
          margin: EdgeInsets.all(5)));
    }
  }

  for (int i = 0; i < thorPath.length; i++) {
    for (int j = 0; j < squares.length; j++) {
      var aux = Key("${thorPath[i][0]}${thorPath[i][1]}");
      if (aux == squares[j].key) {
        squares[j] = Container(
          decoration: BoxDecoration(color: Colors.blue),
          height: 100,
          width: 60,
          margin: EdgeInsets.all(5));
      }
    }
  }

  return squares;
}
