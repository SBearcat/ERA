import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class BeforeSPage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    const title = 'Preparing for a ThunderStorm';

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
                    child: Text("Know your area’s risk for thunderstorms. In most places they can occur year-round and at any hour. Sign up for your community’s warning system.",
                      style: TextStyle(fontSize: 35),)
                ),
                Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: Text("Cut down or trim trees that may be in danger of falling on your home. Consider buying surge protectors, lightning rods or a lightning protection system to protect your home, appliances and electronic devices.",
                      style: TextStyle(fontSize: 35),)
                ),
                Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: Text("Create an emergency plan so that you and your family know what to do, where to go and what you will need to protect yourselves from the effects of a thunderstorm. Identify sturdy buildings close to where you live, work, study and play.",
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
