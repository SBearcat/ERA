import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class BeforeTPage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    const title = 'Preparing for a Tornado';

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
                    child: Text("Know your area’s tornado risk. In the U.S., the Midwest and the Southeast have a greater risk for tornadoes.",
                      style: TextStyle(fontSize: 35),)
                ),
                Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: Text("Know the signs of a tornado, including a rotating, funnel-shaped cloud, an approaching cloud of debris, or a loud roar like a freight train.",
                      style: TextStyle(fontSize: 35),)
                ),
                Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: Text("Pay attention to weather reports. Meteorologists can predict when conditions might be right for a tornado.",
                      style: TextStyle(fontSize: 35),)
                ),
                Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: Text("Identify and practice going to a safe shelter such as a safe room built using FEMA criteria or a storm shelter built to ICC 500 standards. The next best protection is a small, interior, windowless room or basement on the lowest level of a sturdy building.",
                      style: TextStyle(fontSize: 30),)
                ),
                Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: Text("Prepare for long-term stay at home or sheltering in place by gathering emergency supplies, cleaning supplies, non-perishable foods, water, medical supplies and medication.",
                      style: TextStyle(fontSize: 35),)
                ),
              ],
            ),
          ),

          // dot indicators
          SmoothPageIndicator(
            controller: _controller,
            count: 5,
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
