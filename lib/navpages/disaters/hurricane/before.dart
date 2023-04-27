import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class BeforeHPage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    const title = 'Preparing for a Hurricane';

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
                    child: Text("Know Your Hurricane Risk. Hurricanes are not just a coastal problem. Find out how rain, wind, water and even tornadoes could happen far inland from where a hurricane or tropical storm makes landfall.",
                      style: TextStyle(fontSize: 35),)
                ),
                Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: Text("Make sure everyone in your household knows and understands your hurricane plans. Include the office, kids’ day care, and anywhere else you frequent in your hurricane plans.",
                      style: TextStyle(fontSize: 35),)
                ),
                Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: Text("You may have to evacuate quickly due to a hurricane if you live in an evacuation zone. Learn your evacuation routes, practice with your household and pets, and identify where you will stay.",
                      style: TextStyle(fontSize: 35),)
                ),
                Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: Text("Have enough supplies for your household, include medication, disinfectant supplies and pet supplies in your go bag or car trunk. You may not have access to these supplies for days or even weeks after a hurricane.",
                      style: TextStyle(fontSize: 35),)
                ),
              ],
            ),
          ),

          // dot indicators
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
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
