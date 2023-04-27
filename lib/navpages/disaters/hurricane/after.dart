import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class AfterHPage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    const title = 'Staying Safe After a Hurricane';

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
                      child: Text("Be careful during clean up. Wear protective clothing, use appropriate face coverings or masks if cleaning mold or other debris. People with asthma and other lung conditions and/or immune suppression should not enter buildings with indoor water leaks or mold growth that can be seen or smelled, even if these individuals are not allergic to mold. Children should not help with disaster cleanup work.",
                        style: TextStyle(fontSize: 30),)
                  ),
                  Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Wear protective clothing and work with someone else.",
                        style: TextStyle(fontSize: 35),)
                  ),
                  Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Do not touch electrical equipment if it is wet or if you are standing in water. If it is safe to do so, turn off electricity at the main breaker or fuse box to prevent electric shock.",
                        style: TextStyle(fontSize: 35),)
                  ),
                  Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Do not wade in flood water, which can contain dangerous pathogens that cause illnesses. This water also can contain debris, chemicals, waste and wildlife. Underground or downed power lines also can electrically charge the water.",
                        style: TextStyle(fontSize: 30),)
                  ),
                  Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Save phone calls for emergencies. Phone systems often are down or busy after a disaster. Use text messages or social media to communicate with family and friends.",
                        style: TextStyle(fontSize: 35),)
                  ),
                  Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Document any property damage with photographs. Contact your insurance company for assistance.",
                        style: TextStyle(fontSize: 30),)
                  ),
                ],
              ),
            ),

            // dot indicators
            SmoothPageIndicator(
              controller: _controller,
              count: 6,
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
