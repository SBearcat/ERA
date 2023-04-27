import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class DuringHPage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    const title = 'Staying Safe During a Hurricane';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: () => Navigator.of(context).pop(),),
          title: const Text(title), backgroundColor: Colors.red,
        ),


        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // page view
            SizedBox(
              height: 500,
              child: PageView(
                controller: _controller,
                children: [
                  Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Pay attention to emergency information and alerts. If you live in a mandatory evacuation zone and local officials tell you to evacuate, do so immediately.",
                        style: TextStyle(fontSize: 35),)
                  ),
                  Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Take refuge in a designated storm shelter or an interior room for high winds. Go to the highest level of the building if you are trapped by flooding. Do not climb into a closed attic. You may become trapped by rising flood water.",
                        style: TextStyle(fontSize: 30),)
                  ),
                  Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Do not walk, swim or drive through flood waters. Turn Around. Don’t Drown! Just six inches of fast-moving water can knock you down, and one foot of moving water can sweep your vehicle away.",
                        style: TextStyle(fontSize: 35),)
                  ),
                ],
              ),
            ),

            // dot indicators
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: JumpingDotEffect(
                activeDotColor: Colors.red,
                dotColor: Colors.red.shade100,
                dotHeight: 30,
                dotWidth: 30,
                spacing: 16,
                //verticalOffset: 50,
                jumpScale: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
