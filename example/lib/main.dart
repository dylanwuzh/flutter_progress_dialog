import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:flutter_progress_dialog/flutter_progress_dialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ProgressDialog(
//      loading: Container(
//        decoration: BoxDecoration(color: Color(0xa0000000), borderRadius: BorderRadius.all(Radius.circular(10.0))),
//        child: SpinKitRipple(size: 120, color: Colors.white),
//      ),
      orientation: ProgressOrientation.vertical,
      loadingText: "Loading...",
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        home: Scaffold(
          appBar: AppBar(title: const Text('ProgressDialog Demo')),
          body: Center(
            child: RaisedButton(
              onPressed: () {
                showProgressDialog();
                Future.delayed(Duration(seconds: 4), () {
                  dismissProgressDialog();
                });
              },
              child: Text("Show ProgressDialog"),
            ),
          ),
        ),
      ),
    );
  }
}
