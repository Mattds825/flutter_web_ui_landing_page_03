import 'package:flutter/material.dart';

import 'components/main_content_area.dart';
import 'components/side_bar.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            SideBar(),
            MainContentArea(),
          ],
        ),
      ),
    );
  }
}
