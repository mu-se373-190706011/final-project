import 'package:city_tourr/pages/giri%C5%9F_ekran%C4%B1.dart';
import 'package:city_tourr/pages/home_page.dart';
import 'package:city_tourr/widgets/app_buttons.dart';
import 'package:city_tourr/widgets/app_large_texts.dart';
import 'package:city_tourr/widgets/app_texts.dart';
import 'package:city_tourr/widgets/responsive_button.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 3;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/giris3.jpg"), fit: BoxFit.cover),
                  ),
                )),
            Positioned(
                left: 20,
                top: 70,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            ),
                        icon: Icon(Icons.arrow_back_ios)),
                  ],
                )),
            Positioned(
                top: 250,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 550,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppLargeText(
                              text: "Hotel Erenler",
                              color: Colors.black,
                            ),
                            AppLargeText(
                              text: "₺ 200",
                              color: Colors.red,
                            ),
                          ]),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          AppText(
                            text: "Turkey, İstanbul",
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 11),
                              Wrap(
                                children: List.generate(5, (index) {
                                  return Icon(Icons.star,
                                      color: index < gottenStars
                                          ? Colors.yellow[600]
                                          : Colors.grey);
                                }),
                              ),
                              SizedBox(width: 10),
                              AppText(
                                text: "(4.0)",
                                color: Colors.grey.shade400,
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      AppLargeText(
                          text: "People",
                          color: Colors.black.withOpacity(1),
                          size: 25),
                      SizedBox(
                        height: 5,
                      ),
                      AppText(
                        text: "Number of your in your group",
                        color: Colors.black.withOpacity(0.5),
                      ),
                      Wrap(
                          children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: AppButton(
                                size: 50,
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                backgroundColor: selectedIndex == index
                                    ? Colors.black
                                    : Colors.grey,
                                borderColor: selectedIndex == index
                                    ? Colors.red
                                    : Colors.yellow,
                                text: (index + 1).toString()),
                          ),
                        );
                      })),
                      SizedBox(
                        height: 20,
                      ),
                      AppLargeText(
                          text: "AÇIKLAMA", color: Colors.black, size: 20),
                      SizedBox(
                        height: 13,
                      ),
                      AppText(
                          text:
                              "İstanbul'da geçirdiğiniz güzel vaktin akşamında sabahında sizlerle olmak için buradayız..",
                          color: Colors.grey)
                    ],
                  ),
                )),
            Positioned(
                bottom: 36,
                left: 20,
                right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AppButton(
                      size: 60,
                      color: Colors.black,
                      backgroundColor: Colors.white,
                      borderColor: Colors.black,
                      isIcon: true,
                      icon: (Icons.favorite_rounded),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ResponsiveButton(
                      isResponsive: true,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
