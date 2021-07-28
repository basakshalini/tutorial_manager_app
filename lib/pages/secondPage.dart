import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';
import 'package:tutorial_manager_app/pages/buttonCard.dart';
import 'package:tutorial_manager_app/pages/profilePAge.dart';

class QueueScreen extends StatefulWidget {
  const QueueScreen({Key? key}) : super(key: key);

  @override
  _QueueScreenState createState() => _QueueScreenState();
}

class _QueueScreenState extends State<QueueScreen> {
  List<TargetFocus> targets = [];
  //String skip = Text('SKIP AND CONTINUE', style: TextStyle(fontWeight: FontWeight.bold, color:Colors.white));
  final _one = GlobalKey();
  final _two = GlobalKey();
  final _three = GlobalKey();
  final _four = GlobalKey();
  final _five = GlobalKey();
  final _six = GlobalKey();
  final _seven = GlobalKey();
  final _eight = GlobalKey();
  final _9 = GlobalKey();
  final _10 = GlobalKey();
  final _11 = GlobalKey();
  final _12 = GlobalKey();
  final _13 = GlobalKey();
  final _14 = GlobalKey();
  final _15 = GlobalKey();
  final _16 = GlobalKey();
  final _17 = GlobalKey();
  final _18 = GlobalKey();
  final _19 = GlobalKey();
  final _20 = GlobalKey();
  final _21 = GlobalKey();
  final _22 = GlobalKey();
  final _23 = GlobalKey();
  final _24 = GlobalKey();
  final _25 = GlobalKey();
  final _26 = GlobalKey();
  final _27 = GlobalKey();
  final _28 = GlobalKey();
  final _29 = GlobalKey();
  final _30 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.tealAccent[400],
            leading: IconButton(
              key: _one,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            toolbarHeight: 110,
            title: TextButton(
              onPressed: () {},
              child: Center(
                key: _two,
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
                  key: _three,
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
                    key: _four,
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
                    key: _five,
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
                    key: _six,
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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          //alignment: Alignment.centerLeft,
                          width: 300,
                          height: 50,
                          child: RaisedButton(
                            padding: const EdgeInsets.only(left: 0),
                            color: Colors.white,
                            elevation: 8,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7)),
                            child: Row(
                              children: [
                                // Container(
                                //   width: 1,
                                //   height: 20,
                                //   color: Colors.red,
                                // )
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (builder) =>
                                                ProfileCard()));
                                  },
                                  child: Center(
                                    child: Text('ed Dimbero',
                                        key: _seven,
                                        style: TextStyle(
                                          wordSpacing: 0,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.black,
                                        )),
                                  ),
                                ),

                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(150, 0, 5, 0),
                                  child: Text('17:00',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.black,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 81.4,
                      height: 49,
                      color: Colors.red[400],
                      child: Column(
                        children: [
                          Icon(CupertinoIcons.chevron_down),
                          Text(
                            'Arrived',
                            key: _eight,
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                ButtonCard(
                  name: 'Cesilia Rodger',
                  time: '16:56',
                ),
                Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                          child: Text(
                            'Arrived',
                            style: TextStyle(
                                color: Colors.tealAccent[400],
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                //alignment: Alignment.centerLeft,
                                width: 300,
                                height: 50,
                                child: RaisedButton(
                                  padding: const EdgeInsets.only(left: 0),
                                  color: Colors.white,
                                  elevation: 8,
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7)),
                                  child: Row(
                                    children: [
                                      // Container(
                                      //   width: 1,
                                      //   height: 20,
                                      //   color: Colors.red,
                                      // )

                                      TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (builder) =>
                                                      ProfileCard()));
                                        },
                                        child: Text('ck Fox',
                                            style: TextStyle(
                                              wordSpacing: 0,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black,
                                            )),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            150, 0, 5, 0),
                                        child: Text('19:30',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black,
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Container(
                            width: 99.4,
                            height: 49,
                            color: Colors.tealAccent[400],
                            child: Column(
                              children: [
                                Icon(CupertinoIcons.chevron_down),
                                Center(
                                  child: Text(
                                    'Called to Enter',
                                    key: _9,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                          child: Text(
                            'Called to Enter',
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                //alignment: Alignment.centerLeft,
                                width: 300,
                                height: 50,
                                child: RaisedButton(
                                  padding: const EdgeInsets.only(left: 0),
                                  color: Colors.white,
                                  elevation: 8,
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7)),
                                  child: Row(
                                    children: [
                                      // Container(
                                      //   width: 1,
                                      //   height: 20,
                                      //   color: Colors.red,
                                      // )

                                      TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (builder) =>
                                                      ProfileCard()));
                                        },
                                        child: Text('hn Hopkins',
                                            style: TextStyle(
                                              wordSpacing: 0,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black,
                                            )),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            150, 0, 5, 0),
                                        child: Text('10:30',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black,
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Container(
                            width: 99.4,
                            height: 49,
                            color: Colors.deepPurple[400],
                            child: Column(
                              children: [
                                Icon(CupertinoIcons.chevron_down),
                                Center(
                                  child: Text(
                                    'In Facility',
                                    key: _10,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                        child: Text(
                          'In Facility',
                          key: _15,
                          style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ),
                    ButtonCard(name: 'David Garcia', time: '09:18'),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              //alignment: Alignment.centerLeft,
                              width: 300,
                              height: 50,
                              child: RaisedButton(
                                padding: const EdgeInsets.only(left: 0),
                                color: Colors.white,
                                elevation: 8,
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7)),
                                child: Row(
                                  children: [
                                    // Container(
                                    //   width: 1,
                                    //   height: 20,
                                    //   color: Colors.red,
                                    // )

                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (builder) =>
                                                    ProfileCard()));
                                      },
                                      child: Text('ta Jonas',
                                          style: TextStyle(
                                            wordSpacing: 0,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Colors.black,
                                          )),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          150, 0, 5, 0),
                                      child: Text('13:44',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Colors.black,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                          width: 99.4,
                          height: 49,
                          color: Colors.amber,
                          child: Column(
                            children: [
                              Icon(CupertinoIcons.chevron_down),
                              Center(
                                child: Text(
                                  'Completed',
                                  key: _11,
                                  style: TextStyle(color: Colors.black),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 20, 10),
                              child: Text(
                                'Completed',
                                key: _17,
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                          ButtonCard(name: 'Daniel Jones', time: '12:28'),
                        ],
                      ),
                    ),
                  ]),
                ),
              ]),
            ),
          ]),
        ));
  }

  void initState() {
    super.initState();
    targets.add(TargetFocus(
        identify: "Target 1",
        radius: 0.5,
        keyTarget: _one,
        contents: [
          TargetContent(
              align: ContentAlign.bottom,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Go Back to the Main Screen",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "If you have completed the tutorial then kindly go back to the Main Screen",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ))
        ]));
    targets.add(TargetFocus(
        identify: "Target 2",
        keyTarget: _two,
        color: Colors.purple[100],
        radius: 0.5,
        contents: [
          TargetContent(
              align: ContentAlign.bottom,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(6, 150, 6, 0),
                          child: Text(
                            "Your Business Name",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20.0),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Here, you will see the name of your business with which you are currently logeed in.",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ))
        ]));
    targets.add(TargetFocus(
        identify: "Target 3",
        keyTarget: _three,
        color: Colors.blue[100],
        radius: 1,
        contents: [
          TargetContent(
              align: ContentAlign.bottom,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Search for Users and Customers",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "On searching here, you will get to see any individual who are currently in your busines queue. ",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ))
        ]));
    targets.add(TargetFocus(
        identify: "Target 4",
        keyTarget: _four,
        color: Colors.red[400],
        radius: 1,
        contents: [
          TargetContent(
              align: ContentAlign.bottom,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 150, 6, 0),
                      child: Text(
                        "State: Not Arrived",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "On tapping this, you will get to see all the users who are registered yet not arrived at the business queue.",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ))
        ]));
    targets.add(TargetFocus(
        identify: "Target 5",
        keyTarget: _five,
        color: Colors.teal[200],
        radius: 1,
        contents: [
          TargetContent(
              align: ContentAlign.bottom,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 150, 6, 0),
                      child: Text(
                        "State: Arrived",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "On tapping this, you will get to see all the users who have registered and have arrived in your business queue.",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ))
        ]));
    targets.add(TargetFocus(
        identify: "Target 6",
        keyTarget: _six,
        color: Colors.amber[300],
        radius: 1,
        contents: [
          TargetContent(
              align: ContentAlign.bottom,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 150, 6, 0),
                      child: Text(
                        "State: In Facility",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Here, you will be having all the users who are currently in facility and will be called to enter soon.",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ))
        ]));
    targets.add(TargetFocus(
        identify: "Target 7",
        radius: 0.5,
        keyTarget: _seven,
        color: Colors.pink[100],
        contents: [
          TargetContent(
              align: ContentAlign.bottom,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 200, 6, 0),
                      child: Text(
                        "User Profile",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Here, on tapping and continuing to next page, you will get to see the User details.",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ))
        ]));
    targets.add(TargetFocus(
        identify: "Target 8",
        radius: 0.5,
        keyTarget: _eight,
        color: Colors.cyan[100],
        contents: [
          TargetContent(
              align: ContentAlign.bottom,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 200, 6, 0),
                      child: Text(
                        "Update State : Arrived",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Here, on sliding left, you will update the user and shift the person to the corresponding next state.",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ))
        ]));
    targets.add(TargetFocus(
        identify: "Target 9",
        radius: 0.5,
        keyTarget: _9,
        color: Colors.red[400],
        contents: [
          TargetContent(
              align: ContentAlign.top,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Update State : Called To Enter",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Here, on left sliding, the User will be updated to Called To Enter State",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ))
        ]));
    targets.add(TargetFocus(
        identify: "Target 10",
        radius: 0.5,
        keyTarget: _10,
        color: Colors.teal[100],
        contents: [
          TargetContent(
              align: ContentAlign.top,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Update State : In Facility",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Here, on left sliding the user will be updated to In Facility State.",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ))
        ]));
    targets.add(TargetFocus(
        identify: "Target 11",
        radius: 0.5,
        keyTarget: _11,
        color: Colors.tealAccent,
        contents: [
          TargetContent(
              align: ContentAlign.top,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Update State : Completed",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Text(
                        "When, tha appointment is completed, the User should be updated to Completed by sliding left.",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ))
        ]));

    showTutorial(context);
  }

  void showTutorial(context) {
    TutorialCoachMark(
      context,
      targets: targets,
      // List<TargetFocus>
      colorShadow: Colors.pink,
      // DEFAULT Colors.black
      // alignSkip: Alignment.bottomRight,
      textSkip: 'SKIP AND CONTINUE',
      // paddingFocus: 10,
      // opacityShadow: 0.8,
      onClickTarget: (target) {
        print(target);
      },

      onClickOverlay: (target) {
        print(target);
      },
      onSkip: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (builder) => ProfileCard()));
        print("skip");
      },
      onFinish: () {
        print("finish");
      },
    ).show();
  }
}
