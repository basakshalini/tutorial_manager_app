import 'dart:ui';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_manager_app/pages/constants.dart';
import 'package:tutorial_manager_app/pages/movePerson.dart';
import 'package:tutorial_manager_app/pages/viewPerson.dart';

class CustomDialogBox extends StatefulWidget {
  final String title;
  final Image img;

  const CustomDialogBox({Key? key, required this.title, required this.img})
      : super(key: key);

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
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
                    key: _one,
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => ViewPerson()));
                        },
                        child: Text(
                          'View Person',
                          key: _two,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
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
                      child: TextButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return MovePerson(
                                    title: 'Move Person to',
                                    img: Image.asset('assets/blank.png'));
                              });
                        },
                        child: Text(
                          'Move Person',
                          key: _three,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.green),
                        ),
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
                        'Call Person',
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
                        'Delete Person',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red),
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
                          key: _four,
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
                        "Name of the User",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Shows the name of the registered User who is in your business queue. ",
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
                        "View Profile Details",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Either Skip and continue below to view the person details or complete and the tutorial and tap to the Profile page.",
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
                        "Move Person Directly to States",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Here, you can change the person to the desired state directly, without sliding.",
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
                      "Cancel",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Tap and Get Back to the main menu.",
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

        Navigator.push(context, MaterialPageRoute(builder: (builder) => ViewPerson()));
        print("skip");
      },
      onFinish: () {
        print("finish");
      },
    ).show();
  }
}
