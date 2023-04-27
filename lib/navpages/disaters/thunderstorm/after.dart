import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class AfterSPage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    const title = 'Staying Safe After a Thunderstorm';

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
                      child: Text("Pay attention to authorities and weather forecasts for information on whether it is safe to go outside and instructions regarding potential flash flooding.",
                        style: TextStyle(fontSize: 35),)
                  ),
                  Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Watch for fallen power lines and trees. Report them immediately.",
                        style: TextStyle(fontSize: 35),)
                  ),
                ],
              ),
            ),

            // dot indicators
            SmoothPageIndicator(
              controller: _controller,
              count: 2,
              effect: JumpingDotEffect(
                activeDotColor: Colors.red,
                dotColor: Colors.red.shade100,
                dotHeight: 30,
                dotWidth: 30,
                spacing: 16,
                jumpScale: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
