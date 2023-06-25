import 'package:alxabrand_site/about.dart';
import 'package:alxabrand_site/appbar.dart';
import 'package:alxabrand_site/footer.dart';
import 'package:alxabrand_site/main.dart';
import 'package:alxabrand_site/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

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
              child: Row(children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const MainPage()), (route) => false);
                    },
                    child: Text(
                      'Главная',
                      style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w400, color: Colors.black.withOpacity(0.5)),
                    )),
                const Icon(Icons.arrow_right),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Коллекции',
                      style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w400, color: Colors.black.withOpacity(0.5)),
                    )),
              ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                margin: const EdgeInsets.only(left: 100, right: 100),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'VUXSAR',
                    style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 45),
                  ),
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 100, right: 100),
              width: MediaQuery.of(context).size.width,
              child: SizedBox(
                height: 633,
                child: Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ProductPage(
                                  image: 'vuxsar_1.png',
                                )));
                      },
                      child: SizedBox(
                        height: 700,
                        child: Image.asset(
                          'vuxsar_1.png',
                          fit: BoxFit.fill,
                        ),
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
                              child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const ProductPage(
                                        image: 'vuxsar_2.png',
                                      )));
                            },
                            child: Image.asset('vuxsar_2.png'),
                          )),
                          const SizedBox(height: 15),
                          Expanded(
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => const ProductPage(
                                              image: 'vuxsar_3.png',
                                            )));
                                  },
                                  child: Container(margin: const EdgeInsets.only(bottom: 0), child: Image.asset('vuxsar_3.png')))),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Expanded(
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const ProductPage(
                                            image: 'vuxsar_4.png',
                                          )));
                                },
                                child: Container(margin: const EdgeInsets.only(bottom: 0), child: Image.asset('vuxsar_4.png')))),
                        const SizedBox(
                          height: 15,
                        ),
                        Expanded(
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const ProductPage(
                                            image: 'vuxsar_5.png',
                                          )));
                                },
                                child: Container(
                                    margin: const EdgeInsets.only(bottom: 0),
                                    child: Image.asset('vuxsar_5'
                                        '.png')))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
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
                      child: Image.asset(
                        'vuxsar_6.png',
                      ),
                    )),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: SizedBox(
                      child: Image.asset(
                        'vuxsar_7.png',
                      ),
                    )),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
                margin: const EdgeInsets.only(left: 100, right: 100),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Дети севера',
                    style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w500, fontSize: 45),
                  ),
                )),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 100, right: 100),
              child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 309,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Image.asset('vuxsar_8.png'),
                            ),
                            const SizedBox(width: 15),
                            Expanded(child: Image.asset('vuxsar_9.png')),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 700,
                        child: Image.asset(
                          'vuxsar_10.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 700,
                        child: Image.asset(
                          'vuxsar_11.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        height: 309,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Image.asset('vuxsar_8.png'),
                            ),
                            const SizedBox(width: 15),
                            Expanded(child: Image.asset('vuxsar_9.png')),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.only(left: 100, right: 100),
              child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 309,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Image.asset('vuxsar_15.png'),
                            ),
                            const SizedBox(width: 15),
                            Expanded(child: Image.asset('vuxsar_16.png')),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        height: 309,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Image.asset('vuxsar_17.png'),
                            ),
                            const SizedBox(width: 15),
                            Expanded(child: Image.asset('vuxsar_18.png')),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 633,
                        child: Image.asset(
                          'vuxsar_19.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ),
            const FooterProject()
          ],
        ),
      ),
    );
  }
}
