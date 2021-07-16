import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY ACCOUNT"),
      ),
      key: scaffoldKey,
      body: Column(children: [
        Stack(
          overflow: Overflow.visible,
          alignment: Alignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 260.0,
              color: Colors.pink,
              // Image(
              //   image: AssetImage(bg),
              //   fit: BoxFit.cover,
              // ),
            ),
            Positioned(
              bottom: -60.0,
              child: Container(
                height: 125.0,
                width: 125.0,
                child: Icon(Icons.person, size: 80),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    border: Border.all(
                      color: Colors.grey.shade200,
                      width: 5,
                    ),
                    color: Colors.amber
                    // image: DecorationImage(
                    //   image: AssetImage(profile),
                    // ),
                    ),
              ),
            ),
            Positioned(
              bottom: -120.0,
              child: Column(
                children: [
                  Text('Allison Perry',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('Edit Profile'),
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
              padding: EdgeInsets.only(top: 120.0),
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  // dense: true,
                  leading: Icon(
                    Icons.account_balance_sharp,
                  ),
                  title: Text("name $index"),
                );
              }),
        ),
      ]),
    );
  }
}
