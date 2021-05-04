import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_v1/data/fake_data.dart';
import 'package:flutter_ui_v1/profile_top_section.dart';

import 'package:flutter_ui_v1/profiledata/profile.dart';
import 'profiledata/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final Profile profile = fakeProfile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          '프로필',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        titleSpacing: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.add_alert),
            onPressed: null,
          ),
        ],
      ),
      body: Column(
        children: [
          ProfileTopSection(profile),
        ],
      ),
    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Profile>('fakeProfile', fakeProfile));
  }
}