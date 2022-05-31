import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Color.fromARGB(255, 22, 67, 65),
          title: Text("Profile"),
        ),
        body: Column(
          children: [
            Container(
                margin: const EdgeInsets.all(100),
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage("img/profile.png"),
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Title(
                color: Colors.black,
                child: Text(
                    "Id: 1 \n\nUsername : Helen \n\nEmail : helen@gmail.com \n\nGender : Female")),
          ],
        ));
  }
}
