import 'package:alxabrand_site/about.dart';
import 'package:alxabrand_site/appbar.dart';
import 'package:alxabrand_site/footer.dart';
import 'package:alxabrand_site/globals.dart';
import 'package:alxabrand_site/main.dart';
import 'package:alxabrand_site/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';

class LkPage extends StatefulWidget {
  const LkPage({super.key});

  @override
  State<LkPage> createState() => _LkPageState();
}

class _LkPageState extends State<LkPage> {
  List<Widget> favorite_list = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < favorite.length; i++) {
      favorite_list.add(SizedBox(
        width: 230,
        height: 230,
        child: Container(
          margin: EdgeInsets.only(right: 20),
          child: Image.asset(
            favorite[i],
            fit: BoxFit.fill,
          ),
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const AppBarProject(),
            const SizedBox(
              height: 30,
            ),
            Container(
                margin: const EdgeInsets.only(left: 100, right: 100),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ЛИЧНЫЙ КАБИНЕТ',
                    style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w500, fontSize: 45),
                  ),
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 100, right: 100),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 400,
                      child: Image.asset(
                        'lk_1.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 400,
                      child: Image.asset(
                        'lk_2.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.only(left: 100, right: 100),
              decoration: BoxDecoration(color: const Color(0xffF5FBFF), border: Border.all(color: const Color(0xff20AFFF))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20, top: 20),
                    child: Text('ИЗБРАННОЕ', style: GoogleFonts.montserratAlternates(fontSize: 35, fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, top: 20, bottom: 30, right: 20),
                    child: Row(
                      children: favorite_list,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const FooterProject()
          ],
        ),
      ),
    );
  }
}
