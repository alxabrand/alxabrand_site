import 'package:alxabrand_site/lk.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  child: Text(
                    'ВОЙТИ ИЛИ СОЗДАТЬ ПРОФИЛЬ',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserratAlternates(fontSize: 35, fontWeight: FontWeight.w500, color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 600,
                  height: 60,
                  child: Container(
                    width: 788,
                    height: 60,
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Номер телефона'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LkPage()));
                  },
                  child: Container(
                    width: 600,
                    height: 60,
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    decoration: const ShapeDecoration(
                      color: Color(0xFFF5FBFF),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF00A3FF)),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Получить код',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserratAlternates(fontSize: 26, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 600,
                  child: Row(
                    children: [
                      const Expanded(
                        child: SizedBox(
                          height: 20,
                          child: Divider(
                            color: Color(0xA8A98FA3),
                            thickness: 1.5,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text('или',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserratAlternates(
                              fontWeight: FontWeight.w400,
                              fontSize: 23,
                              color: Colors.black.withOpacity(0.5),
                              letterSpacing: 0.54,
                            )),
                      ),
                      const Expanded(
                        child: SizedBox(
                          height: 12,
                          child: Divider(
                            color: Color(0xA8A98FA3),
                            thickness: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 600,
                  height: 60,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF92AAB8)),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Войти через Вконтакте',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserratAlternates(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (bool? value) {},
                    ),
                    Text(
                      'Соглашаюсь с правилами торговой площадки и возварата',
                      style: GoogleFonts.montserratAlternates(
                        color: Colors.black.withOpacity(0.6600000262260437),
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ));
  }
}
