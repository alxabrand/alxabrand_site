import 'package:alxabrand_site/about.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterProject extends StatelessWidget {
  const FooterProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffB7C3AF).withOpacity(0.1),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 70, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'logo_footer.png',
                  width: 226,
                  height: 94,
                ),
                const SizedBox(height: 90),
                Text('Политика конфидициальности', style: TextStyle(color: Colors.black.withOpacity(0.56))),
                Text('Условия использования', style: TextStyle(color: Colors.black.withOpacity(0.56))),
                Text('©ALXABRAND', style: TextStyle(color: Colors.black.withOpacity(0.56))),
                Text('Все права защищены 2023', style: TextStyle(color: Colors.black.withOpacity(0.56))),
                const SizedBox(height: 60),
              ],
            ),
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.only(top: 75, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => AboutPage()));
                  },
                  style: TextButton.styleFrom(padding: EdgeInsets.zero, foregroundColor: Colors.black),
                  child: Text(
                    'О нас',
                    style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w700, fontSize: 16, color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Коллекции',
                  style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                const SizedBox(height: 10),
                Text(
                  'Доставка и оплата',
                  style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 75, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Контакты',
                  style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'phone.png',
                      width: 17,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '+7(952)695-7373 Алина',
                      style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset(
                      'dot.png',
                      width: 17,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'alxa.brand',
                      style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 75, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Следите за нами',
                  style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'vk.png',
                      width: 30,
                    ),
                    SizedBox(width: 30),
                    Image.asset(
                      'inst.png',
                      width: 20,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
