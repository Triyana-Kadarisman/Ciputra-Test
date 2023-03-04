import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Test_Dua extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Test_Dua> {
  int _counter = 0;
  late Timer _timer;
  late FlutterLocalNotificationsPlugin _notifications;

  @override
  void initState() {
    super.initState();
    _notifications = FlutterLocalNotificationsPlugin();
    var initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    var initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);
    _notifications.initialize(initializationSettings);
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        _counter++;
        if (_counter % 6 == 0) {
          _sendNotification();
          print(_sendNotification());
        }
      });
      if (_counter == 6) {
        setState(() {});
        print(_counter);
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  Future<void> _sendNotification() async {
    // ignore: prefer_const_constructors
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'channel_id', 'channel_name',
        importance: Importance.max, priority: Priority.high);
    var platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    await _notifications.show(
        0, 'Counter Value', '$_counter', platformChannelSpecifics);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Increment Counter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$_counter',
                style: TextStyle(fontSize: 32),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Kembali"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
