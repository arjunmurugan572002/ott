import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:ott/download.dart';
import 'package:ott/homepage.dart';
import 'package:ott/profile.dart';
import 'package:ott/search.dart';


class bottom extends StatefulWidget {
  const bottom({Key? key}) : super(key: key);

  @override
  State<bottom> createState() => _fileState();
}

class _fileState extends State<bottom> {
  int _index=0;
  final ListQueue<int> _navigationQueue = ListQueue();

  final pages=[
    home(),
    search(),
    download(),
     profile()
  ];
  void tap1(index){
    if(index != _index){
      _navigationQueue.removeWhere((element) => element == index);
      _navigationQueue.addLast(index);
      setState(() {
        _index = index;
      });
    }
  }
  Future<bool> _willpop() async {
    setState(() {
      _navigationQueue.removeLast();
      int position = _navigationQueue.isEmpty ? 0 : _navigationQueue.last;
      _index = position;
    });
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _willpop,
      child: Scaffold(
        body:pages[_index] ,
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled,color: Colors.black),label:"Home",),
            BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black),label: "Search"),

            BottomNavigationBarItem(icon: Icon(Icons.file_download_outlined,color: Colors.black),label: "Downloads"),
            BottomNavigationBarItem(icon: Icon(Icons.menu,color: Colors.black),label: "Menu"),
          ],
          currentIndex: _index,
          onTap:tap1 ,
        ),
      ),
    );
  }
}
