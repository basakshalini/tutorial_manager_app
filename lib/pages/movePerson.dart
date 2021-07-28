import 'dart:ui';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_manager_app/pages/constants.dart';
import 'package:tutorial_manager_app/pages/viewPerson.dart';

class MovePerson extends StatefulWidget {
  final String title;
  final Image img;
  const MovePerson({Key? key, required this.title, required this.img})
      : super(key: key);

  @override
  _MovePersonState createState() => _MovePersonState();
}

class _MovePersonState extends State<MovePerson> {
  List<TargetFocus> targets = [];
  final _one = GlobalKey();
  final _two = GlobalKey();
  final _three = GlobalKey();
  final _four = GlobalKey();
  final _five = GlobalKey();
  final _six = GlobalKey();
  final _seven = GlobalKey();
  final _eight = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.padding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          // padding: EdgeInsets.only(
          //     left: Constants.padding,
          //     top: Constants.avatarRadius + Constants.padding,
          //     right: Constants.padding,
          //     bottom: Constants.padding),
          margin: EdgeInsets.only(top: Constants.avatarRadius),
          decoration:
              BoxDecoration(shape: BoxShape.rectangle, color: Colors.white,
                  // borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                BoxShadow(
                    color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height: 120,
                width: 380,
                color: Colors.tealAccent,
                child: Center(
                  child: Text(
                    widget.title,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    height: 35,
                    child: Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Not Arrived',
                            key: _one,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            )),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 0.7,
                    color: Colors.red[200],
                  ),
                  Container(
                    height: 35,
                    child: Center(
                      child: Text(
                        'Arrived',
                        key: _two,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.teal),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 0.7,
                    color: Colors.green,
                  ),
                  Container(
                    height: 35,
                    child: Center(
                      child: Text(
                        'Called to Enter',
                        key: _three,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.purple),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 0.7,
                    color: Colors.amber,
                  ),
                  Container(
                    height: 35,
                    child: Center(
                      child: Text(
                        'In Facility',
                        key: _four,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.amber),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 0.7,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 35,
                    child: Center(
                      child: Text(
                        'Completed',
                        key: _five,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.greenAccent[400]),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 0.7,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 45,
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Cancel',
                          key: _six,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              // SizedBox(
              //   height: 22,
              // ),
              // Align(
              //   alignment: Alignment.bottomRight,
              //   child: FlatButton(
              //       onPressed: () {
              //         Navigator.of(context).pop();
              //       },
              //       child: Text(
              //         widget.text,
              //         style: TextStyle(fontSize: 18),
              //       )),
              // ),
            ],
          ),
        ),
        Positioned(
          left: Constants.padding,
          right: Constants.padding,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: Constants.avatarRadius,
            child: ClipRRect(
                borderRadius:
                    BorderRadius.all(Radius.circular(Constants.avatarRadius)),
                child: Image.asset(
                  "assets/blank.png",
                  width: 75,
                  height: 75,
                )),
          ),
        ),
      ],
    );
  }

  void initState() {
    super.initState();
    targets.add(TargetFocus(
        identify: "Target 1",
        radius: 0.5,
        color: Colors.blue,
        keyTarget: _one,
        contents: [
          TargetContent(
              align: ContentAlign.bottom,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 150, 5, 0),
                      child: Text(
                        "Change to: Not Arrived",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Update the user directly to the Not Arrived State.",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ))
        ]));
    targets.add(TargetFocus(
        identify: "Target 2",
        radius: 0.5,
        color: Colors.tealAccent[100],
        keyTarget: _two,
        contents: [
          TargetContent(
              align: ContentAlign.bottom,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 150, 5, 0),
                      child: Text(
                        "Change To: Arrived",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Update the user directly to the Arrived State.",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ))
        ]));
    targets.add(TargetFocus(
        identify: "Target 3",
        radius: 0.5,
        color: Colors.greenAccent[400],
        keyTarget: _three,
        contents: [
          TargetContent(
              align: ContentAlign.bottom,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 200, 5, 0),
                      child: Text(
                        "Change To: Called To Enter",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Update the user directly to the Called To Enter State.",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ))
        ]));
    targets.add(TargetFocus(
        identify: "Target 4",
        radius: 0.5,
        color: Colors.pink,
        keyTarget: _four,
        contents: [
          TargetContent(
              align: ContentAlign.bottom,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Change To: In Facility",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Update the user directly to in Facility State.",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ))
        ]));
    targets.add(TargetFocus(
        identify: "Target 5",
        radius: 0.5,
        color: Colors.blue,
        keyTarget: _five,
        contents: [
          TargetContent(
              align: ContentAlign.top,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 150, 5, 0),
                      child: Text(
                        "Change To: Completed",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Update the user directly to the Completed State.",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ))
        ]));
    targets.add(TargetFocus(
        identify: "Target 6",
        radius: 0.5,
        color: Colors.blue,
        keyTarget: _six,
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
                        "Cancel",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Go Back to the Main Menu.",
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
      textSkip: 'END TUTORIAL',
      // paddingFocus: 10,
      // opacityShadow: 0.8,
      onClickTarget: (target) {
        print(target);
      },

      onClickOverlay: (target) {
        print(target);
      },
      onSkip: () {
        Navigator.popUntil(context, ModalRoute.withName("/home"));
        print("skip");
      },
      onFinish: () {
        print("finish");
      },
    ).show();
  }
}
