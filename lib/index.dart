//import 'package:flutter/material.dart';
//import 'package:levelmap/tiles.dart';
//
//void main() {
//  runApp(MyApp());
//}
//
//class MyApp extends StatefulWidget {
//
//
//  @override
//  _MyAppState createState() => _MyAppState();
//}
//
//class _MyAppState extends State<MyApp> {
//  ScrollController _scrollController;
//
//  @override                                                           // NEW
//  void initState() {                                                  // NEW
//    super.initState();                                                // NEW
//    _scrollController = new ScrollController(                         // NEW
//      initialScrollOffset: 3000,                                       // NEW
//      keepScrollOffset: true,                                         // NEW
//    );
//  }
//
//
//  @override
//  Widget build(BuildContext context) {
//
//
//    return MaterialApp(
//        home: Scaffold(
////            appBar: AppBar(
////              title: Text(title),
////            ),
//          body: GridView.count(
//            controller: _scrollController,
//            crossAxisCount: 8,
//            children: List.generate(
//                tiles.length, (index) {
//              return Center(
//                child: GestureDetector(
//                    onTap: (){
//                      print("you Pressed");
//                      print(index);
//                    },
//                    child: ChoiceCard(tile: tiles[index])),
//              );
//            }),
//          ),
//        ));
//  }
//}
//
//class Choice {
//  const Choice({this.title, this.icon});
//
//  final String title;
//
//  final IconData icon;
//}
//
//class Tile {
//  const Tile({this.src});
//
//  final String src;
//}
//
////class MapTile extends StatelessWidget{
////  @override
////  Widget build(BuildContext context) {
////    return Image.asset("assets/slices/map_Slice-01.png", width: 60, height: 60);
////  }
////
////}
//
//class ChoiceCard extends StatelessWidget {
//  const ChoiceCard({Key key, this.tile}) : super(key: key);
//
//  final Tile tile;
//
//  @override
//  Widget build(BuildContext context) {
//    return Image.asset(tile.src, width: 60, height: 60);
//  }
//}
