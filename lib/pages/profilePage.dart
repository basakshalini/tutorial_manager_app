import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_manager_app/pages/buttonCard.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.tealAccent[400],
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            toolbarHeight: 110,
            title: TextButton(
              onPressed: () {},
              child: Center(
                child: Text(
                  'Your Business',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                child: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ),
            ]),
        body: SingleChildScrollView(
            child: Column(children: [
          Row(children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: Text(
                    'Not Arrived',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  elevation: 8,
                  onPressed: () {},
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: Text(
                    'Arrived',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  elevation: 8,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: Text(
                    'In Facility',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  elevation: 8,
                ),
              ),
            )
          ]),
          SizedBox(
            height: 25,
          ),
          Container(
              child: Column(children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                child: Text(
                  'Not Arrived',
                  style: TextStyle(
                      color: Colors.red[300],
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
            ButtonCard(
              name: 'Cesilia Rodger',
              time: '16:56',
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(children: <Widget>[
                Icon(CupertinoIcons.chevron_up),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Tap to see more details'),
                ),
              ]),
            )
          ]))
        ])));
  }
}
