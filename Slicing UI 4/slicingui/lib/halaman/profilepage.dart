import 'package:flutter/material.dart';
import 'package:slicingui/komponen3/option.dart';
import 'package:slicingui/komponen3/profilecard.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Text('My Profile', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),), 
                Spacer(), 
                Icon(Icons.edit)
              ],
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Profilecard(),
            ],
          ),
          SizedBox(height: 50,),
          Column(
            children: [
              Option(text: 'My Orders', icon: Icon(Icons.list_alt_rounded)),
              SizedBox(width: 460,child: Divider()),
              Option(text: 'My Subscription', icon: Icon(Icons.filter_list)),
              SizedBox(width: 460,child: Divider()),
              Option(text: 'Promo', icon: Icon(Icons.percent_outlined)),
              SizedBox(width: 460,child: Divider()),
              Option(text: 'Payment', icon: Icon(Icons.card_membership_outlined)),
              SizedBox(width: 460,child: Divider()),
              Option(text: 'Help', icon: Icon(Icons.help)),
              SizedBox(width: 460,child: Divider()),
              Option(text: 'Language', icon: Icon(Icons.g_translate)),
              SizedBox(width: 460,child: Divider()),
              Option(text: 'Log Out', icon: Icon(Icons.logout)),
              SizedBox(width: 460,child: Divider()),
            ],
          )
        ],
      ),
    );
  }
}
