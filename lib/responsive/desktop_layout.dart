import 'package:flutter/material.dart';
import '../components/unorderList.dart';

class DesktopLayout extends StatefulWidget {
  DesktopLayout({Key? key}) : super(key: key);

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    double ImageHeight = currentHeight/2;
    double ImageWidth = currentWidth/2;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "8900 Network PoE Door Access Panel",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 52.0,
              fontWeight: FontWeight.bold,
              color:  Color(0xFF001B7A),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: ImageHeight,
                width: ImageWidth,
                child: 
                Image.asset(
                  "images/8900_img.png"
                ),  
              ),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: currentWidth/2,
                      child: const Text(
                        "8900 Network PoE Door Access Panel",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 22  ,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    SizedBox(
                      width: currentWidth/2,
                      child: UnorderList(const [
                        "128 bits master key on panel for proprietary communication",
                        "Supports Wiegand or ACX scramble RS485 reader",
                        "1 x door sensor input",
                        "1 x request to exit input",
                        "1 x auxiliary input",
                        "1 x controller box tamper input",
                        "1 x ACX high security key open door device",
                        "Power input monitoring: A.C. / DC Backup Battery",
                        "Work with ACX high security door emergency open device, couple with random key switch & reset panel"
                      ]),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            width: 380.0,
            height: 55.0,
            child: TextButton(
              onPressed: (){},
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFF001B7A),
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))
              ),
              child: const Text(
                "Datasheet",
                style: TextStyle(
                  fontSize: 38.0,
                  color: Colors.white
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}