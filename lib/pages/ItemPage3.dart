 import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopping_app/widgets/ItemAppBar.dart';
import 'package:shopping_app/widgets/ItemBottomNavBar.dart';

class ItemPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color(0xFFEDECF2),
        body: ListView(
          children: [
            ItemAppBar(),
            Padding(
              padding: EdgeInsets.all(16),
              child: Image.asset("images/4.jpg", height: 300),
            ),
            Arc(
              edge: Edge.TOP,
              arcType: ArcType.CONVEY,
              height: 30,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 40,
                        bottom: 15,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Oshinoko เล่มที่ 1",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4C53A5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 0,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) => Icon(
                              Icons.favorite,
                              color: Color(0xFF4C53A5),
                            ),
                            onRatingUpdate: (index) {},
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  CupertinoIcons.minus,
                                  size: 18,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "01",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF4C53A5),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  CupertinoIcons.plus,
                                  size: 18,
                                  color: Color(0xFF4C53A5),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        " เรื่องราวของหมอหนุ่ม Amamiya Goro ผู้ทำงานเป็นสูตินรีแพทย์ในเมืองชนบท เขาคลั่งไคล้ไอดอลสาว Hoshino Ai เป็นอย่างมาก วันนึงเขาได้รับฝากครรภ์เด็กสาวคนหนึ่ง ซึ่งเด็กสาวคนนั้นคือ Hoshino Ai นั่นเอง เขาได้ตรวจพบว่าเธอกำลังตั้งท้องลูกแฝด โกโร่ให้โอกาศไอตัดสินใจว่าจะทำอย่างไรต่อไป ไอก็ได้ตัดสินใจแล้วว่าเธอจะใช้ชีวิตในฐานะไอดอลและคุณแม่คนนึง โกโร่เคารพการตัดสินใจของไอและจะคอยดูแลจนถึงที่สุด ทว่าในวันที่ถึงกำหนดคลอดกลับถูกบุคคลปริศนาทำร้ายจนเสียชีวิต ซึ่งนั่นเองทำให้เมื่อเขารู้สึกตัวอีกทีก็ได้มาเกิดใหม่เป็นลูกของ Hoshino Ai ไอดอลสาวที่เขาชื่นชอบไปซะแล้ว เรื่องราวจะเป็นยังไงต่อไป บุคคลที่ทำร้ายเขาคือใคร และใครคือพ่อเด็กต้องไปติดตามชมกันให้ได้นะ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xFF4C53A5),
                        ),
                      ),
                    ),
                    
                  ]),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: ItemBottomNavBar(),
      ),
    );
    
  }
}
