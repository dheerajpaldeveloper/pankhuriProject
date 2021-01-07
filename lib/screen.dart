import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreenOrder extends StatefulWidget {
  @override
  _HomeScreenOrderState createState() => _HomeScreenOrderState();
}

class _HomeScreenOrderState extends State<HomeScreenOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Divider(
                  height: 140,
                  color: Colors.white,
                  thickness: 30,
                ),
                Text(
                  ' Order Complete',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1579202673506-ca3ce28943ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                      fit: BoxFit.cover),
                ),
                child: CustomPaint(
                    //painter: PaintCustomDesign(backgroundColor: Colors.grey[700]),
                    foregroundPainter:
                        CustomPaintClass(backgroundColor: Colors.green)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Your Booking is confirmed",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    wordSpacing: 2,
                  ),
                ),
                Text(
                  "You can find your all details",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    wordSpacing: 2,
                  ),
                ),
                Text(
                  "of the booking under 'orders & Booking",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    wordSpacing: 2,
                  ),
                ),
                Text(
                  "in the menu",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    wordSpacing: 2,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.green)),
                  onPressed: () {},
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text("View Booking".toUpperCase(),
                      style: TextStyle(fontSize: 14)),
                ),
                SizedBox(
                  width: 30,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.green)),
                  onPressed: () {},
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text("Explore More".toUpperCase(),
                      style: TextStyle(fontSize: 14)),
                ),
              ],
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class CustomPaintClass extends CustomPainter {
  final Color backgroundColor;

  CustomPaintClass({
    @required this.backgroundColor,
  });
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()..color = backgroundColor;

    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.06);
    path_0.lineTo(size.width * 0.25, size.height * 0.06);
    path_0.lineTo(size.width * 0.23, size.height * 0.10);
    path_0.lineTo(size.width * 0.25, size.height * 0.14);
    path_0.quadraticBezierTo(size.width * 0.07, size.height * 0.14,
        size.width * 0.01, size.height * 0.14);
    path_0.quadraticBezierTo(
        size.width * 0.00, size.height * 0.17, 0, size.height * 0.14);
    path_0.lineTo(0, size.height * 0.06);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

// class RPSCustomPainter extends CustomPainter {
//   final Color backgroundColor;

//   RPSCustomPainter({
//     @required this.backgroundColor,
//   });
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint_0 = new Paint()..color = backgroundColor;

//     Path path_0 = Path();
//     path_0.moveTo(0, size.height * 0.10);
//     path_0.lineTo(size.width * 0.25, size.height * 0.10);
//     path_0.lineTo(size.width * 0.20, size.height * 0.20);
//     path_0.lineTo(size.width * 0.25, size.height * 0.30);
//     path_0.lineTo(size.width * 0.01, size.height * 0.30);
//     path_0.quadraticBezierTo(
//         size.width * -0.00, size.height * 0.33, 0, size.height * 0.30);
//     path_0.quadraticBezierTo(0, size.height * 0.25, 0, size.height * 0.10);
//     path_0.close();

//     canvas.drawPath(path_0, paint_0);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
