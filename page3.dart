import 'package:flutter/material.dart';
import 'package:green/page4.dart';

class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(hexColor("#E7E8E3")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150),
          ),
          Image.asset("asset/image 3.png"),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "Discover Your Type \n          Of Plant",
              style: TextStyle(
                  color: Color(hexColor("#2D6936")),
                  fontSize: 32,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            " Tips N Tricks to grow a \n    healthy plant",
            style: TextStyle(
                color: Color(hexColor("#2D6936")),
                fontSize: 28,
                fontWeight: FontWeight.w400),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150, left: 150),
            child: SizedBox(
              height: 60,
              width: 193,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(hexColor("#47734D"))),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const page4()),
                    );
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        color: Color(hexColor("#FFFFFF")),
                        fontSize: 24,
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
