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

    final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

    @override
    void initState() {
      // TODO: implement initState
      final pushProvider = new PushNotificationProvider();
      pushProvider.initNotifications();


      pushProvider.mensajes.listen((data) {
      //Navigator.pushNamed(context, "Mensaje");
      print("Argumento Del Push");
      print(data);

      if(data =="1"){
        navigatorKey.currentState.pushNamed("home");
      }else if(data == "2"){
        navigatorKey.currentState.pushNamed("Mensaje");
      }


      });


    }


    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home' : (BuildContext context) =>home_page(),
          'Mensaje' : (BuildContext context) =>Mensaje_page()
        },


      );
    }
  }
