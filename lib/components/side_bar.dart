import 'package:flutter/material.dart';



class SideBar extends StatelessWidget {
  const SideBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: MediaQuery.of(context).size.width,
      color: Color(0xffFBFA34),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Icon(
                Icons.lightbulb_outline,
                size: 40.0,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Icon(Icons.menu, size: 40.0),
          )
        ],
      ),
    );
  }
}
