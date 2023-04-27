import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'emergencynums.dart';
import 'navpages/welcome.dart';
import 'prep.dart';
import '../widgets/appTextLarge.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top:70, left: 20),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 50,
                  height: 50,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),//Container for hamburger & color icon
          SizedBox(height: 40,),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: LargeText(text: "SYREN"),
          ),
          SizedBox(height: 30,),
          //tab
          Container(
            child: TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: CircleTabIndicator(color: Colors.black54, radius: 4),
                tabs: [
                  Tab(text: "Home"),
                  Tab(text:"Emergency Numbers"),
                  Tab(text:"Backpack Essentials"),
                ]
            ),
          ),
          Container(
              height: 350,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  WelcomePage(),
                  NumPage(),
                  Text("Here will be a list of important items for to-go/bug-out bags")
                ],
              )
          )
        ],
      ),
    );
  }
}


class CircleTabIndicator extends Decoration{
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color:color,radius:radius);
  }
}
class _CirclePainter extends BoxPainter{
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(configuration.size!.width/2 - radius/2, configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }

}

