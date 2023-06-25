import 'package:alxabrand_site/appbar.dart';
import 'package:alxabrand_site/footer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              AppBarProject(),
              const SizedBox(
                height: 10,
              ),
              Image.asset('bg_3.png'),
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
                  Image.asset('bg_4.png'),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 141,
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      child: Image.asset('logo_footer.png'),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset('bg_5.png'),
              const SizedBox(height: 20),
              FooterProject()
            ],
          ),
        ),
      );
  }
}
