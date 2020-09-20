import 'package:flutter/material.dart';

class Mensaje_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final arg = ModalRoute.of(context).settings.arguments;
    
    return Scaffold(
      appBar: AppBar(
        title:Text("Mensaje Page") ,
      ),

      body: Center(
        child: Text("aSDA"),
      ),


    );
  }
}
