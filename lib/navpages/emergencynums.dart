import 'package:flutter/material.dart';


class NumPage extends StatelessWidget {
  const NumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'I.C.E. Phone Numbers';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title), backgroundColor: Colors.red,
        ),
        body: ListView(
          children:  <Widget>[
            ListTile(
                leading: Icon(Icons.phone),
                title: Text('911  - National Emergency Service Hotline'),
                //onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => TornadoPage(),),);}
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('1-800-222-1222   - Posion Control Helpline'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('988  - Suicide and Crisis Helpline'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('1-800-621-3362  - FEMA Disater Relief Helpline'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('1-877-336-2627  - FloodSmart National Flood Insurance'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('1-800-662-4357  - Substance Abuse and Mental Health Services'),
            ),
          ],
        ),
      ),
    );
  }
}