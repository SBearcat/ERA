import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class DuringSPage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    const title = 'Staying Safe During a Thunderstorm';

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
                      child: Text("When thunder roars, go indoors! Move from outdoors into a building or car with a roof.",
                        style: TextStyle(fontSize: 35),)
                  ),
                  Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Pay attention to alerts and warnings.",
                        style: TextStyle(fontSize: 35),)
                  ),
                  Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Avoid using electronic devices connected to an electrical outlet.",
                        style: TextStyle(fontSize: 35),)
                  ),
                  Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Avoid running water.",
                        style: TextStyle(fontSize: 35),)
                  ),
                  Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Turn Around. Don’t Drown! Do not drive through flooded roadways. Just six inches of fast-moving water can knock you down, and one foot of moving water can sweep your vehicle away.",
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
