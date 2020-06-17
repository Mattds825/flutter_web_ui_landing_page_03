import 'package:flutter/material.dart';

class MainContentArea extends StatelessWidget {
  const MainContentArea({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100.0,
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 150.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              'Home',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w200,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30.0,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Hotels',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  Icon(Icons.keyboard_arrow_down)
                                ],
                              ),
                              Image.asset('assets/line.png')
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Contact',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w200,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(
                          width: 40.0,
                        ),
                        Text(
                          'About Us',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w200,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          height: 100.0,
                          width: 200.0,
                          color: Color(0xff8AFF8E),
                          child: Center(
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.search),
                                Icon(Icons.lock),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Image.asset('assets/bg.png'),
                      ),
                      Positioned(
                        left: 90,
                        top: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Search'.toUpperCase(),
                              style: TextStyle(
                                color: Color(0xffFF7184),
                                fontSize: 36.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              'Hotels'.toUpperCase(),
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 36.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 80.0,
                            ),
                            BorderOptionBox(type: OptionType.type),
                            SizedBox(
                              height: 20.0,
                            ),
                            BorderOptionBox(type: OptionType.type),
                            SizedBox(
                              height: 20.0,
                            ),
                            BorderOptionBox(type: OptionType.type),
                            SizedBox(
                              height: 60.0,
                            ),
                            Container(
                              width: 150,
                              height: 50,
                              color: Colors.black,
                              child: Center(
                                child: Text(
                                  'Search',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        left: 90.0,
                        bottom: 100.0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '02'.toUpperCase(),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 34.0,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.4,
                              ),
                            ),
                            SizedBox(
                              width: 35.0,
                            ),
                            Image.asset('line2.png'),
                            SizedBox(
                              width: 6.0,
                            ),
                            Image.asset('line.png'),
                            SizedBox(
                              width: 6.0,
                            ),
                            Image.asset('line2.png'),
                            SizedBox(
                              width: 6.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            bottom: 0,
            left: 400,
            child: Container(
              width: 900.0,
              height: 150.0,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(left: 60.0, right: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 280,
                      height: 50,
                      child: Text(
                        'Last Minute Festive Packages From Superbreak',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffF9F13E),
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward, color: Color(0xffFF7184),),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BorderOptionBox extends StatelessWidget {
  final OptionType type;

  const BorderOptionBox({Key key, this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 300.0,
      decoration: BoxDecoration(
        border: Border.all(width: 3.0, color: Colors.black),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: (type != OptionType.date)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      (type == OptionType.type) ? 'Type Of Room' : 'Rooms',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Jun 4, 2020',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Text(
                      '-',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Text(
                      'Jun 20, 2020',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}

enum OptionType {
  type,
  date,
  roo,
}
