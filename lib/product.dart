import 'package:alxabrand_site/appbar.dart';
import 'package:alxabrand_site/collection.dart';
import 'package:alxabrand_site/footer.dart';
import 'package:alxabrand_site/globals.dart';
import 'package:alxabrand_site/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key, required this.image});

  final String image;

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const AppBarProject(),
            const SizedBox(
              height: 20,
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
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CollectionPage()));
                    },
                    child: Text(
                      'Коллекции',
                      style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w400, color: Colors.black.withOpacity(0.5)),
                    )),
                const Icon(Icons.arrow_right),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Товар',
                      style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w400, color: Colors.black.withOpacity(0.5)),
                    )),
              ]),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 100, right: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(widget.image),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            '3690 р',
                            style: GoogleFonts.montserratAlternates(
                              fontWeight: FontWeight.w600,
                              fontSize: 30,
                              color: const Color(0xFF7EC052),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    can.contains(widget.image) ? can.remove(widget.image) : can.add(widget.image);
                                    setState(() {});
                                  },
                                  style: TextButton.styleFrom(
                                      foregroundColor: Colors.black,
                                      backgroundColor: const Color(0xffF5FBFF),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(0.0), side: const BorderSide(color: Color(0xff00A3FF)))),
                                  child: Container(
                                    padding: const EdgeInsets.all(20),
                                    child: Text(
                                      can.contains(widget.image) ? 'Удалить' : 'В корзину',
                                      style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w600, fontSize: 30),
                                    ),
                                  )),
                              const SizedBox(
                                width: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  favorite.contains(widget.image) ? favorite.remove(widget.image) : favorite.add(widget.image);
                                  setState(() {});
                                },
                                child: favorite.contains(widget.image)
                                    ? Image.asset(
                                        'like_on.png',
                                        width: 30,
                                      )
                                    : Image.asset(
                                        'like.png',
                                        width: 30,
                                      ),
                              )
                            ],
                          ),
                        ],
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Text('ХУДИ "VUXAR"', style: GoogleFonts.montserratAlternates(fontSize: 35, fontWeight: FontWeight.w600)),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Размер',
                        style: GoogleFonts.montserratAlternates(fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xff1FAEFF)),
                              color: const Color(0xffF5FCFF),
                            ),
                            child: Center(
                                child: Text(
                              'S',
                              style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w300, fontSize: 25),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xff1FAEFF)),
                              color: const Color(0xffF5FCFF),
                            ),
                            child: Center(
                                child: Text(
                              'M',
                              style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w300, fontSize: 25),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xff1FAEFF)),
                              color: const Color(0xffF5FCFF),
                            ),
                            child: Center(
                                child: Text(
                              'L',
                              style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w300, fontSize: 25),
                            )),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Цвет:',
                            style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                          Text(
                            ' белый',
                            style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w400, fontSize: 20),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Уход за изделием: ',
                        style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'polygon.png',
                            color: const Color(0xff92AAB8),
                            width: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Машинная стирка при максимальной температуре 30 градусов. ',
                                  style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w500, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 0),
                            child: Image.asset('polygon.png', color: const Color(0xff92AAB8)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Гладить при температуре не более 180  градусов, через слегка увлажненную ткань. Или использовать утюг с '
                                  'пароувлажнителем.   ',
                                  style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w500, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 0),
                            child: Image.asset('polygon.png', color: const Color(0xff92AAB8)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Химическая стирка запрещена.',
                                  style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w500, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            'Состав:',
                            style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                          Text(
                            ' 80% Хлопок 20% Полиэстер',
                            style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w400, fontSize: 20),
                          )
                        ],
                      ),
                      //
                    ]),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            const FooterProject()
          ],
        ),
      ),
    );
  }
}
