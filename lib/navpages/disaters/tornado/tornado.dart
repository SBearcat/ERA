import 'package:flutter/material.dart';

import 'before.dart';

class TornadoPage extends StatelessWidget {
  const TornadoPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    const title = 'Tornadoes';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: () => Navigator.of(context).pop(),),
          title: const Text(title), backgroundColor: Colors.red,),
        body: ListView(
          children:  <Widget>[
            ListTile(
                leading: Icon(Icons.question_mark),
                title: Text('Before'),
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => BeforeTPage(),),);}
                ),
            ListTile(
              leading: Icon(Icons.question_mark),
              title: Text('During'),
            ),
            ListTile(
              leading: Icon(Icons.question_mark),
              title: Text('After'),
            ),
          ],
        ),
      ),
    );
  }
}