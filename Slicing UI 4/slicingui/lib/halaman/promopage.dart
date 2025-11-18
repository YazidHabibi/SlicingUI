import 'package:flutter/material.dart';
import 'package:slicingui/komonen2/bannerpromo2.dart';
import 'package:slicingui/komonen2/checkincoin.dart';
import 'package:slicingui/komonen2/eventpromo.dart';
import 'package:slicingui/komonen2/promoliburan.dart';
import 'package:slicingui/komonen2/promomakanan.dart';
import 'package:slicingui/komonen2/promotrasnportasi.dart';
import 'package:slicingui/komonen2/vouchercard.dart';
import 'package:slicingui/komponen1/bannerevent.dart';

class Promopage extends StatelessWidget {
  const Promopage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Vouchercard(),
          SizedBox(height: 20),
          Center(child: Checkincoin()),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(13),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                Eventpromo(text: '11.11'),
                Eventpromo(text: 'Gajian'),
                Eventpromo(text: 'Riding'),
                Eventpromo(text: 'Food'),
                Eventpromo(text: 'Travel'),
                Eventpromo(text: 'Hotel'),
                Eventpromo(text: 'Drinks'),
                Eventpromo(text: 'Vacation'),
                Eventpromo(text: 'Mudik'),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Promo Hari Ini !",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Bannerpromo2(text: 'Diskon Ongkir Hingga 50 % !'),
                Bannerpromo2(text: 'Buy 1 Get 1'),
                Bannerpromo2(text: 'Event Bulan Ini Diskon Hingga 60 %'),
              ],
            ),
          ),
          SizedBox(height: 20,), 
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Promo Hari Ini !",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10,),
          Center(child: Promomakanan()), 
          SizedBox(height: 20,), 
          Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Promo Liburan",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Promoliburan(image: 'images/liburan1.png'),
                  Promoliburan(image: 'images/liburan2.png'),
                  Promoliburan(image: 'images/liburan3.png'),
                ],
              ), 
            ),
             SizedBox(height: 20,), 
          Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Promo Transportasi",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Promotrasnportasi(image: 'images/banner7.png'),
                  Promotrasnportasi(image: 'images/banner8.png'),
                  Promotrasnportasi(image: 'images/banner9.png'),
                ],
              ), 
            ),
            SizedBox(height: 30,),
            Center(
              child: Column(
                spacing: 20,
                children: [
                  Bannerevent(image: 'images/banner4.png'),
                  Bannerevent(image: 'images/banner5.png'),
                  Bannerevent(image: 'images/banner6.png')
                ],
              ),
            ),
        ],
      ),
    );
  }
}
