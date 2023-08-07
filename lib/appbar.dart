import 'package:alxabrand_site/about.dart';
import 'package:alxabrand_site/auth.dart';
import 'package:alxabrand_site/can.dart';
import 'package:alxabrand_site/collection.dart';
import 'package:alxabrand_site/lk.dart';
import 'package:alxabrand_site/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;

import 'globals.dart';

class AppBarProject extends StatefulWidget {
  const AppBarProject({super.key});

  @override
  State<AppBarProject> createState() => _AppBarProjectState();
}

class _AppBarProjectState extends State<AppBarProject> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.07,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MainPage()));
            },
            child: Image.asset(
              'logo.png',
              width: 221,
              height: 42,
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const AboutPage()));
            },
            style: TextButton.styleFrom(padding: EdgeInsets.zero, foregroundColor: Colors.black),
            child: Text(
              'О нас',
              style: GoogleFonts.raleway(textStyle: const TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
            ),
          ),
          const SizedBox(
            width: 60,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const CollectionPage()));
            },
            style: TextButton.styleFrom(padding: EdgeInsets.zero, foregroundColor: Colors.black),
            child: Text('Коллекции', style: GoogleFonts.raleway(textStyle: const TextStyle(fontWeight: FontWeight.w600, color: Colors.black))),
          ),
          const SizedBox(
            width: 100,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => AuthPage()));
            },
            child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: Image.asset(
                'lk.png',
                width: 17,
                height: 20,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => LkPage()));
            },
            child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: Image.asset(
                'favorite.png',
                width: 20,
                height: 19,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CanPage()));
            },
            child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: badges.Badge(
                badgeContent: Text(can.length.toString(), style: TextStyle(fontSize: 10, color: Colors.white),),
                badgeStyle: badges.BadgeStyle(badgeColor: Color(0xffE48060)),
                child: Image.asset(
                  'can.png',
                  width: 30,
                  height: 29,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 70,
          )
        ],
      ),
    );
  }
}
