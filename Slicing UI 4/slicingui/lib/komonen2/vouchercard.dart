import 'package:flutter/material.dart';
import 'package:slicingui/komonen2/vouchertext.dart';

class Vouchercard extends StatelessWidget {
  const Vouchercard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // height: 120,
        width: 450,
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.8),
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(color: Colors.grey, offset: Offset(2, 1), blurRadius: 2),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15  ),
              child: Row(
                children: [
                  Vouchertext(text: '15 Vouchers', text2: 'Pakai Yuk !'),
                  Spacer(),
                  Vouchertext(
                    text: 'Voucher Plus',
                    text2: 'Langganan Sekarang1',
                  ),
                ],
              ),
            ),
            SizedBox(width: 440,child: Divider(color: Colors.white, thickness: 2,)), 
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: 400,  
                height: 35, 
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.6), 
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(28)), 
                    prefixIcon: Icon(Icons.percent), 
                    hint: Text('Masukan code voucher'),
                    suffixIcon: Icon(Icons.arrow_forward_ios)
                  ),
                ),
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}
