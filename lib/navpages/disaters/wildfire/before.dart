import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class BeforeWPage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    const title = 'Preparing for a Wildfire';

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
                    child: Text("Make sure everyone in your household knows and understands what to do if you need to quickly evacuate.",
                      style: TextStyle(fontSize: 35),)
                ),
                Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: Text("Make sure your insurance policies and personal documents, like ID, are up to date. Make copies and keep them in a secure password-protected digital space.",
                      style: TextStyle(fontSize: 35),)
                ),
                Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: Text("Use fire-resistant materials to build, renovate or make repairs. Find an outdoor water source with a hose that can reach any area of your property. Create a fire-resistant zone that is free of leaves, debris or flammable materials for at least 30 feet from your home.",
                      style: TextStyle(fontSize: 30),)
                ),
                Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: Text("Designate a room that can be closed off from outside air. Close all doors and windows. Set up a portable air cleaner to keep indoor pollution levels low when smoky conditions exist.",
                      style: TextStyle(fontSize: 35),)
                ),
                Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: Text("You may have to evacuate quickly due to a wildfire. Learn your evacuation routes, practice with household, pets and identify where you will go.",
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
