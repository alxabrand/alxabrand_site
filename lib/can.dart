import 'package:alxabrand_site/appbar.dart';
import 'package:alxabrand_site/collection.dart';
import 'package:alxabrand_site/footer.dart';
import 'package:alxabrand_site/globals.dart';
import 'package:alxabrand_site/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CanPage extends StatefulWidget {
  const CanPage({super.key});

  @override
  State<CanPage> createState() => _CanPageState();
}

class _CanPageState extends State<CanPage> {
  var isSelected = false;

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
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'КОРЗИНА',
                    style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w500, fontSize: 45),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 100, right: 100, bottom: 20),
              child: ListView.separated(
                itemBuilder: (context, count) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset(can[count]),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Худи "VUXAR"', style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w600, fontSize: 35)),
                                Spacer(),
                                Text(
                                  '3690 р',
                                  style: GoogleFonts.montserratAlternates(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 30,
                                    color: const Color(0xFF7EC052),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 70,
                            ),
                            Text(
                              'Размер',
                              style: GoogleFonts.montserratAlternates(fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10,
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
                                'S',
                                style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w300, fontSize: 25),
                              )),
                            ),
                            SizedBox(
                              height: 80,
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
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    favorite.contains(can[count]) ? favorite.remove(can[count]) : favorite.add(can[count]);
                                    setState(() {});
                                  },
                                  child: favorite.contains(can[count])
                                      ? Image.asset(
                                          'like_on.png',
                                          width: 30,
                                        )
                                      : Image.asset(
                                          'like.png',
                                          width: 30,
                                        ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      can.remove(can[count]);
                                      setState(() {});
                                    },
                                    child: Image.asset(
                                      'trash.png',
                                      width: 30,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                },
                itemCount: can.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 20,
                  );
                },
                shrinkWrap: true,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 100, right: 100, bottom: 20, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    (can.length * 3690).toString() + ' р',
                    style: GoogleFonts.montserratAlternates(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: const Color(0xFF7EC052),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 100, right: 100, bottom: 20, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                      value: isSelected,
                      onChanged: (value) {
                        isSelected = !isSelected;
                        setState(() {});
                      }),
                  Text(
                    'Соглашаюсь с правилами торговой площадки и возварата',
                    style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w400, fontSize: 20),
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: () {
                        can = [];
                        setState(() {});
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Container(
                                margin: EdgeInsets.all(100),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.check, size: 200, color: Color(0xff82E142),),
                                    Text('Спасибо\nза покупку!', textAlign: TextAlign.center, style: GoogleFonts.montserratAlternates(fontWeight: FontWeight
                                        .w500,
                                        fontSize:
                                    45),),
                                  ],
                                ),
                              ),

                            );
                          },
                        );
                      },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: const Color(0xffF5FBFF),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0), side: const BorderSide(color: Color(0xff00A3FF)))),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Заказать',
                          style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                      ))
                ],
              ),
            ),
            const FooterProject()
          ],
        ),
      ),
    );
  }
}
