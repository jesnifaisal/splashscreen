import 'package:flutter/material.dart';

class page4 extends StatefulWidget {
  const page4({super.key});

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(hexColor("#E7E8E3")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 50),
            child: Image.asset("asset/image 3.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 20),
            child: Text(
              "Connect With Other \n       Plant Lovers",
              style: TextStyle(
                  color: Color(hexColor("#2D6936")),
                  fontSize: 32,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 40),
            child: Text(
              "Join A Community",
              style: TextStyle(
                  color: Color(hexColor("#2D6936")),
                  fontSize: 28,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 180),
            child: SizedBox(
              height: 60,
              width: 193,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(hexColor("#47734D"))),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))),
                  onPressed: () {},
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                        color: Color(hexColor("#FFFFFF")),
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  )),
            ),
          )
        ],
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
