import 'package:alxabrand_site/about.dart';
import 'package:alxabrand_site/appbar.dart';
import 'package:alxabrand_site/collection.dart';
import 'package:alxabrand_site/footer.dart';
import 'package:alxabrand_site/globals.dart';
import 'package:alxabrand_site/lk.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';

void main() {
  initPrefs();
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              AppBarProject(),
              const SizedBox(
                height: 10,
              ),
              Image.asset('bg_1.png'),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 30,
                margin: const EdgeInsets.symmetric(vertical: 50),
                child: Marquee(
                  blankSpace: 100,
                  text: '# Д Е Т И С Е В Е Р А',
                  style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w400),
                ),
              ),
              Stack(
                children: [
                  Image.asset('bg_2.png'),
                  Positioned(
                    bottom: 100,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      child: Marquee(
                        blankSpace: 100,
                        text: '# Д Е Т И С Е В Е Р А',
                        textDirection: TextDirection.rtl,
                        style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w400),
                      ),
                    ),
                  )
                ],
              ),
              Text('Новая коллекция', style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w500, fontSize: 45)),
              const SizedBox(
                height: 50,
              ),
              Container(
                margin: const EdgeInsets.only(left: 100, right: 100),
                width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  height: 700,
                  child: Row(
                    children: [
                      Expanded(
                          child: SizedBox(
                        height: 700,
                        child: Image.asset(
                          'vuxsar_1.png',
                          fit: BoxFit.fill,
                        ),
                      )),
                      const SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Container(
                              child: Image.asset('vuxsar_2.png'),
                            )),
                            const SizedBox(height: 15),
                            Expanded(child: Container(margin: const EdgeInsets.only(bottom: 0), child: Image.asset('vuxsar_3.png'))),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          Expanded(child: Container(margin: const EdgeInsets.only(bottom: 0), child: Image.asset('vuxsar_4.png'))),
                          const SizedBox(
                            height: 15,
                          ),
                          Expanded(child: Container(margin: const EdgeInsets.only(bottom: 0), child: Image.asset('vuxsar_5.png'))),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CollectionPage()));
                  },
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: const Color(0xffF5FBFF),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0), side: const BorderSide(color: Color(0xff00A3FF)))),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'Смотреть всё',
                      style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w600, fontSize: 36),
                    ),
                  )),
              const SizedBox(height: 20),
              FooterProject()
            ],
          ),
        ),
      ),
    );
  }
}
