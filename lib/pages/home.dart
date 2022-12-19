import 'package:flutter/material.dart';
import 'package:movies_app/constants/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: HexColor('#49608C'),
        ),
        Container(
          child: Text(
            'Now Playing',
            style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'verdana.tff',
                fontWeight: FontWeight.w400,
                fontSize: 40,
                color: HexColor('#FFFFFF')),
          ),
          margin: EdgeInsets.all(48),
        )
      ],
    );
  }
}
