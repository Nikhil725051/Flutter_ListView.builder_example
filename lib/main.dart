
import 'package:flutter/material.dart';

void main(){
  runApp(MyListViewApp());
}

class MyListViewApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text("ListView Example")
            ),
            body: MyListView()
        )
    );
  }
}

class MyListView extends StatelessWidget
{

  final List<String> listItems = <String>['Item1', 'Item2', 'Item3', 'Item4', 'Item5' ,'Item6', 'Item7', 'Item8'];
  final List<int> colorCodes = <int>[900, 800, 700, 600, 500, 400 ,300 ,100];
  @override
  Widget build(BuildContext build)
  {
    return

    ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: listItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 80,
            margin: EdgeInsets.all(8.0),
            color: Colors.pink[colorCodes[index]],
            child: Center(child: Text(listItems[index])),
          );
        }
    );
  }
}