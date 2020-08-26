import 'package:flutter/material.dart';
import 'package:levelmap/tiles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {


  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ScrollController _scrollController;


  ScrollController _mycontroller1 = new ScrollController(); // make seperate controllers
  ScrollController _mycontroller2 = new ScrollController(); // for each scrollables




  @override                                                           // NEW
  void initState() {                                                  // NEW
    super.initState();                                                // NEW
//    _mycontroller1 = new ScrollController(                         // NEW
//      initialScrollOffset: 3000,                                       // NEW
//      keepScrollOffset: true,                                         // NEW
//    );
//
    _mycontroller2 = new ScrollController(                         // NEW
      initialScrollOffset: 1769,                                       // NEW
      keepScrollOffset: true,                                         // NEW
    );


//  _mycontroller2.jumpTo(3000);


  }





  @override
  Widget build(BuildContext context) {


    return MaterialApp(
        home: Scaffold(
//            appBar: AppBar(
//              title: Text(title),
//            ),
          body: Container(
//            height: 100,
            child: NotificationListener<ScrollNotification>(
              child: Stack(
                children: <Widget>[

                  GridView.count(
                    controller: _mycontroller1,
                    crossAxisCount: 8,
                    children: List.generate(
                        tiles.length, (index) {
                      return Center(
                        child: ChoiceCard(tile: tiles[index]),
                      );
                    }),
                  ),
                  GridView.count(
                    controller: _mycontroller2,
                    crossAxisCount: 8,
                    children: List.generate(
                        424, (index) {
                      return Center(
                        child: GestureDetector(
                          onTap: (){
                            print("you Pressed");
                            print(index);
                          },
                            child: Text(index.toString()),
                        ),
                      );
                    }),
                  ),

                ],





              ),



                onNotification: (ScrollNotification scrollInfo) {  // HEY!! LISTEN!!
                  // this will set controller1's offset the same as controller2's
                  _mycontroller1.jumpTo(_mycontroller2.offset);

                  // you can check both offsets in terminal
//                  print('check -- offset Left: '+_mycontroller1.offset.toInt().toString()+ ' -- offset Right: '+_mycontroller2.offset.toInt().toString());
                }



            ),
          ),
        ));
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;

  final IconData icon;
}

class Tile {
  const Tile({this.src});

  final String src;
}

//class MapTile extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    return Image.asset("assets/slices/map_Slice-01.png", width: 60, height: 60);
//  }
//
//}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.tile}) : super(key: key);

  final Tile tile;

  @override
  Widget build(BuildContext context) {
    return Image.asset(tile.src, width: 60, height: 60);
  }
}
