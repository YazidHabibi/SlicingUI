import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicingui3/komponen/buttonheader.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
// import 'package:lucide_icons_flutter/lucide_icons.dart';

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({super.key});

  @override
  Widget build(BuildContext context) {
    // return Row(
    //   children: [
    //     Column(
    //       children: [
    //         Text(
    //           "Selamat Pagi Siang Sore",
    //           style: TextStyle(color: Colors.white, fontSize: 15),
    //         ),
    //         Text(
    //           "IsTeqyou",
    //           style: TextStyle(
    //             color: Colors.white,
    //             fontWeight: FontWeight.bold,
    //             fontSize: 17,
    //           ),
    //         ),
    //       ],
    //     ),
    //     SizedBox(width: 5),
    //     IconButton(onPressed: () {}, icon: Icon(LucideIcons.shoppingCart500),
    //     color: Colors.blue,
    //     ),
    //   ],
    // );
    return Padding(
      padding: EdgeInsetsGeometry.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                'Selamat Pagi Siang dan Sore',
                style: GoogleFonts.ptSerif(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'NazDev',
                style: GoogleFonts.ptSerif(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            spacing: 10,
            children: [
              ButtonHeader(icon: Icon(Icons.home)),
              ButtonHeader(icon: Icon(Icons.train_rounded)),
              ButtonHeader(icon: Icon(Icons.flag_rounded)),
            ],
          ),
        ],
      ),
    );
  }
}
