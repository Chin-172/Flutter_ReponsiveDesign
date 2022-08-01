
import 'package:flutter/material.dart';
import '../components/unorderList.dart';
class MobileLayout extends StatefulWidget {
  MobileLayout({Key? key}) : super(key: key);

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    double ImageHeight = currentHeight/2;
    double ImageWidth = currentWidth - 80.0;
    return SingleChildScrollView(
      // backgroundColor: Colors.white,
      child: Column(
        children: [
           SizedBox(
            width: 800.0,
            height: currentHeight / 8 ,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                "8900 Network PoE Door \n Access Panel",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF001B7A),
                  fontSize: currentWidth,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
          ),
          SizedBox(
            height: ImageHeight,
            width: ImageWidth,
            child: 
            Image.asset(
              "images/8900_img.png"
            ),  
          ),
          SizedBox(
            width: currentWidth - 60.0,
            child:const Text(
              "8900 Network PoE Door Access Panel",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18  ,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            width: currentWidth - 60.0,
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
          ),
        const SizedBox(height: 40.0),
        SizedBox(
          width: currentWidth/2,
          height: 40.0,
          child: TextButton(
            onPressed: (){},
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xFF001B7A),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)))
            ),
            child: const Text(
              "Datasheet",
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
        ),
        const SizedBox(height: 80.0)
        ],        
      ),
    );
  }
}