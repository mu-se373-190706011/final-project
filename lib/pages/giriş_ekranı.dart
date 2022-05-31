import 'package:city_tourr/pages/home_page.dart';
import 'package:city_tourr/pages/navpages/main_page.dart';
import 'package:city_tourr/widgets/app_large_texts.dart';
import 'package:city_tourr/widgets/responsive_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/app_texts.dart';

class GirisEkrani extends StatefulWidget {
  GirisEkrani({Key? key}) : super(key: key);

  @override
  State<GirisEkrani> createState() => _GirisEkraniState();
}

class _GirisEkraniState extends State<GirisEkrani> {
  List images = ["giris1.jpg", "giris2.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/" + images[index]),
                      fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "CİTY TOUR"),
                        AppText(text: "OTELLER", size: 26),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            width: 250,
                            child: AppText(
                                text:
                                    "Bu şehirdeki otellere göz atmak için aşağıdaki butona tıklayınız..",
                                color: Colors.blueGrey,
                                size: 14)),
                        SizedBox(
                          height: 40,
                        ),
                        IconButton(
                          icon: Icon(Icons.double_arrow_rounded),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainPage()),
                          ),
                          splashColor: Color.fromARGB(179, 84, 88, 141),
                          iconSize: 50,
                        )
                      ],
                    ),
                    Column(
                      children: List.generate(2, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 3),
                          width: 8,
                          height: index == indexDots ? 20 : 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color.fromARGB(179, 84, 88, 141)),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
