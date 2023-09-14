import 'package:flutter/material.dart';
import 'package:green/page3.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("asset/Rectangle 24.png"),
                      fit: BoxFit.cover)),
              width: double.infinity,
              height: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 00),
              child: Column(
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                        color: Color(hexColor("#2D6936")),
                        fontSize: 64,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      children: [
                        Text(
                          "we are glad that that  \n   you are here",
                          style: TextStyle(
                              color: Color(hexColor("#2D6936")),
                              fontSize: 24,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 450, left: 100),
                    child: SizedBox(
                      height: 60,
                      width: 250,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Color(hexColor("#47734D"))),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20)))),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const page3()),
                            );
                          },
                          child: Text("Lets get started",
                              style: TextStyle(
                                  color: Color(hexColor("#FFFFFF")),
                                  fontSize: 24))),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

int hexColor(String color) {
  //adding prefix
  String newColor = '0xff' + color;
  //removing # sign
  newColor = newColor.replaceAll('#', '');
  //converting it to the integer
  int finalColor = int.parse(newColor);
  return finalColor;
}
