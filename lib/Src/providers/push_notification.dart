  import 'package:firebase_messaging/firebase_messaging.dart';
  import 'dart:async';
  import 'dart:io';


  class PushNotificationProvider{
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  final _mensajesStreamController = StreamController<String>.broadcast();
  Stream<String> get mensajes => _mensajesStreamController.stream;




  initNotifications(){

    _firebaseMessaging.requestNotificationPermissions();
    //======= function Get Token ==========
    _firebaseMessaging.getToken().then((token){
      print("===== FCM Token =======");
      print(token);
    });

    _firebaseMessaging.configure(

    onMessage: (info){
        print("=========== on Message =========");
        print(info);

            String argumento = "no_data";
          if(Platform.isAndroid){
             argumento = info["data"]["comida"] ?? "no-data";
          }
              _mensajesStreamController.sink.add(argumento);
      },

      onLaunch: (info){
        print("=========== on onLaunch =========");
        print(info);
      },


      onResume: (info){
        print("=========== on onResume =========");
        print(info);
      },



    );



  }

    dispose(){
      _mensajesStreamController?.close();
    }



  }
