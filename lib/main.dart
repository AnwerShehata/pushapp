import 'package:flutter/material.dart';
import './Src/providers/push_notification.dart';
import 'Pages/Mensaje_page.dart';
import 'Pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    // TODO: implement initState
    final pushProvider = new PushNotificationProvider();
    pushProvider.initNotifications();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: 'home',
      routes: {
        'home' : (BuildContext context) =>home_page(),
        'Mensaje' : (BuildContext context) =>Mensaje_page()
      },


    );
  }
}
