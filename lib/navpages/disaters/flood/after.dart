import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class AfterFPage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    const title = 'Staying Safe After a Flood';

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
                      child: Text("Pay attention to authorities for information and instructions. Return home only when authorities say it is safe.",
                        style: TextStyle(fontSize: 35),)
                  ),
                  Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Avoid driving except in emergencies.",
                        style: TextStyle(fontSize: 35),)
                  ),
                  Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Wear heavy work gloves, protective clothing and boots during clean up and use appropriate face coverings or masks if cleaning mold or other debris.",
                        style: TextStyle(fontSize: 35),)
                  ),
                  Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.centerLeft,
                      child: Text("People with asthma and other lung conditions and/or immune suppression should not enter buildings with indoor water leaks or mold growth that can be seen or smelled. Children should not take part in disaster cleanup work.",
                        style: TextStyle(fontSize: 30),)
                  ),
                  Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Be aware that snakes and other animals may be in your house.",
                        style: TextStyle(fontSize: 35),)
                  ),
                  Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Be aware of the risk of electrocution. Do not touch electrical equipment if it is wet or if you are standing in water. Turn off the electricity to prevent electric shock if it is safe to do so.",
                        style: TextStyle(fontSize: 30),)
                  ),
                  Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Avoid wading in floodwater, which can be contaminated and contain dangerous debris. Underground or downed power lines can also electrically charge the water.",
                        style: TextStyle(fontSize: 35),)
                  ),
                  Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Use a generator or other gasoline-powered machinery ONLY outdoors and away from windows.",
                        style: TextStyle(fontSize: 35),)
                  ),
                ],
              ),
            ),

            // dot indicators
            SmoothPageIndicator(
              controller: _controller,
              count: 8,
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
