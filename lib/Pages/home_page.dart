import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';

class home_page extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
      ),

     body: Center(
       child: Text(Platform.isAndroid?"Test Push In Android" :"Test Push In IOS"),
     ),


    );
  }
}
