import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class BeforeFPage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    const title = 'Preparing for a Flood';

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
                    child: Text("Know Your Risk for Floods. Visit FEMA's Flood Map Service Center to know types of flood risk in your area.  Sign up for your community’s warning system.",
                      style: TextStyle(fontSize: 35),)
                ),
                Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: Text("Purchase or renew a flood insurance policy. Homeowner’s insurance policies do not cover flooding. It typically takes up to 30 days for a policy to go into effect so the time to buy is well before a disaster.",
                      style: TextStyle(fontSize: 35),)
                ),
                Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: Text("Make a plan for your household, including your pets, so that you and your family know what to do, where to go, and what you will need to protect yourselves from flooding. Learn and practice evacuation routes, shelter plans, and flash flood response.",
                      style: TextStyle(fontSize: 30),)
                ),
                Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: Text("Keep important documents in a waterproof container. Create password-protected digital copies. Protect your property. Move valuables to higher levels. Declutter drains and gutters. Install check valves.",
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
