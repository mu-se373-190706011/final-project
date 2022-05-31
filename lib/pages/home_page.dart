import 'package:city_tourr/pages/detail_page.dart';
import 'package:city_tourr/pages/giri%C5%9F_ekran%C4%B1.dart';
import 'package:city_tourr/pages/navpages/my_page.dart';
import 'package:city_tourr/widgets/app_large_texts.dart';
import 'package:city_tourr/widgets/app_texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      body: Column(children: [
        //icons
        Container(
          padding: const EdgeInsets.only(top: 80, left: 20),
          child: Row(
            children: [
              IconButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GirisEkrani()),
                ),
                icon: Icon(Icons.arrow_back_ios, size: 30, color: Colors.black),
              ),

              IconButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyPage()),
                ),
                icon: Icon(Icons.person, size: 30, color: Colors.black),
              ),
              //Expanded(child: Container()),
              /*Container(
                margin: const EdgeInsets.only(right: 29),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black.withOpacity(0.5),
                ),
              )*/
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        //konaklama
        Container(
          margin: const EdgeInsets.only(left: 0),
          child: AppLargeText(text: "KONAKLAMA"),
        ),
        SizedBox(
          height: 5,
        ),
        //tabbar
        Container(
            child: Align(
          alignment: Alignment.centerLeft,
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            isScrollable: false,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(text: "Oteller"),
              Tab(text: "Yorumlar"),
            ],
          ),
        )),
        Container(
            padding: const EdgeInsets.only(left: 20),
            height: 150,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  //kaç tane resim olacak
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 15, top: 10),
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("img/giris2.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
                TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintText: "Yorumunuz",
                      helperText: ("Çok güzel ve rahat karşılandık"),
                      counterText: "Hotel Erenler",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0))),
                ),
              ],
            )),
        SizedBox(
          height: 5,
        ),
        IconButton(
          icon: Icon(Icons.double_arrow_rounded),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailPage()),
          ),
          splashColor: Color.fromARGB(179, 84, 88, 141),
          iconSize: 30,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.only(left: 120, right: 20),
          child: Row(
            children: [
              AppLargeText(text: "YEME-İÇME", size: 30),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            child: Align(
          alignment: Alignment.centerLeft,
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            isScrollable: false,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(text: "Restaurantlar"),
              Tab(text: "Yorumlar"),
            ],
          ),
        )),
        Container(
            padding: const EdgeInsets.only(left: 20),
            height: 150,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  //kaç tane resim olacak
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 15, top: 10),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("img/giris1.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
                TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintText: "Yorumunuz",
                      helperText: ("Çok lezzetli bir akşam yemeğiydi"),
                      counterText: "Nusr-et",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0))),
                ),
              ],
            )),
      ]),
    );
  }
}
