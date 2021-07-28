import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';
import 'package:tutorial_manager_app/pages/movePerson.dart';
class ViewPerson extends StatefulWidget {
  const ViewPerson({Key? key}) : super(key: key);

  @override
  _ViewPersonState createState() => _ViewPersonState();
}

class _ViewPersonState extends State<ViewPerson> {
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.tealAccent[400],
        toolbarHeight: 60,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 25, 30, 50),
            child: CircleAvatar(
              maxRadius: 85,
              backgroundImage: AssetImage('assets/blank.png'),
            ),
          ),
          Center(
              child: Text(
            'Cesilia Dimbero',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: 80,
          ),
          Container(
            
            width: 370,
            height: 60,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                  child: CircleAvatar(
                    maxRadius: 23,
                    child: Icon(
                      Icons.call,
                      color: Colors.white,
                      key: _one,
                    ),
                    backgroundColor: Colors.teal[300],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Not Available',
                  style: TextStyle(
                    fontSize: 20,
                    //fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.teal[50],
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
           
            width: 370,
            height: 60,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                  child: CircleAvatar(
                    maxRadius: 23,
                    child: Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                       key: _two,
                    ),
                    backgroundColor: Colors.teal[300],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Not Available',
                  style: TextStyle(
                    fontSize: 20,
                    //fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.teal[50],
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            
            width: 370,
            height: 60,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                  child: CircleAvatar(
                    maxRadius: 23,
                    child: Icon(
                      Icons.timelapse,
                      color: Colors.white,
                      key: _three,
                    ),
                    backgroundColor: Colors.teal[300],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Not Available',
                  style: TextStyle(
                    fontSize: 20,
                    //fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.teal[50],
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: ButtonTheme(
              height: 50,
              child: RaisedButton(
                
                color: Colors.tealAccent[400],
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {},
                child: Center(
                    child: Text(
                  'Chat with Cesilia Dimbero',
                  key: _four,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )),
              ),
            ),
          )
        ],
      ),
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
                        "Call the User",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Shows the availability of caling the user. ",
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
                        "Location",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Shows the availability of location of the User.",
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
              align: ContentAlign.top,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Activity Status",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Shows the activity status of the user.",
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
              align: ContentAlign.top,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Chat with the User",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Chat with the USer to notify the details of the appointment.",
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
      textSkip: 'SKIP AND CONTINUE TO MOVE PERSON',
      // paddingFocus: 10,
      // opacityShadow: 0.8,
      onClickTarget: (target) {
        print(target);
      },

      onClickOverlay: (target) {
        print(target);
      },
      onSkip: () {
        showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return MovePerson(
                                    title: 'Move Person to',
                                    img: Image.asset('assets/blank.png'));
                              });
        print("skip");
      },
      onFinish: () {
        print("finish");
      },
    ).show();
  }
}
