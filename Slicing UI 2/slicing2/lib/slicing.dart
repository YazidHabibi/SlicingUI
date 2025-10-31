import 'package:flutter/material.dart';
import 'package:slicing2/komponen1.dart';
import 'package:slicing2/komponen2.dart';
import 'package:slicing2/komponen3.dart';

class SlicingPage extends StatelessWidget {
  const SlicingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 7, right: 5, left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 2,
                          children: [
                            Container(width: 70, height: 20, color: Colors.grey),
                            Container(width: 140, height: 25, color: Colors.grey),
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 450,
                  height: 100,
                  decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start , 
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(width: 150, height: 20, color: Colors.grey),
                            SizedBox(height: 15,),
                            Container(width: 75, height: 20, color: Colors.grey),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 10,
                          children: [
                            Container(width: 40, height: 40, decoration: BoxDecoration(
                            color: Colors.grey, borderRadius: BorderRadius.circular(10)
                            ),),
                            Container(width: 40, height: 40, decoration: BoxDecoration(
                            color: Colors.grey, borderRadius: BorderRadius.circular(10)
                            ),),
                            Container(width: 40, height: 40, decoration: BoxDecoration(
                            color: Colors.grey, borderRadius: BorderRadius.circular(10)
                            ),),
                            Container(width: 40, height: 40, decoration: BoxDecoration(
                            color: Colors.grey, borderRadius: BorderRadius.circular(10)
                            ),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                 SingleChildScrollView(
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Komponen1(),
                      Komponen1(),
                      Komponen1(),
                      Komponen1(),
                      Komponen1(),
                      Komponen1(),
                    ],
                   ),
                 ),
                 SizedBox(height: 30,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Komponen2(),
                    Komponen2(),
                    Komponen2(),
                    Komponen2(),
                    Komponen2(),
                  ],
                 ),
                 SizedBox(height: 30,), 
                 Container(
                  width: 430, 
                  height: 120, 
                  decoration: BoxDecoration(
                    color: Colors.grey, 
                    borderRadius: BorderRadius.circular(10)
                  ),
                 ), 
                 SizedBox(height: 30,) , 
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 25),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 130, 
                        height: 20, 
                        color: Colors.grey,
                      ), 
                      Container(
                        width: 100, 
                        height: 40, 
                        decoration: BoxDecoration(
                          color: Colors.grey, 
                          borderRadius: BorderRadius.circular(14)
                        ),
                      )
                    ],
                   ),
                 ), 
                 SizedBox(height: 30,), 
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 340, 
                      height: 100, 
                      decoration: BoxDecoration(
                        color: Colors.grey, 
                        borderRadius: BorderRadius.circular(12)
                      ),
                    ),
                    Container(
                      width: 100, 
                      height: 100, 
                      decoration: BoxDecoration(
                        color: Colors.grey, 
                        borderRadius: BorderRadius.circular(12)
                      ),
                    )
                  ],
                 )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Komponen3(),
            Komponen3(),
            Komponen3(),
            Komponen3(),
            Komponen3(),
          ],
        ),
      ),
    );
  }
}
