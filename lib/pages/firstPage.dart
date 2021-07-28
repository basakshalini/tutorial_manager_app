import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';
// class TutorialButton extends StatelessWidget {
//   const TutorialButton({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ElevatedButton(child: , onPressed: Navigator.push(context, MaterialPageRoute(builder: (builder) => )),),
      
//     );
//   }
// }

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<TargetFocus> targets = [];

  final _one = GlobalKey();
  final _two = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {},
            key: _one,
            child: Text('One'),
          ),
          TextButton(
            onPressed: () {},
            key: _two,
            child: Text('Two'),
          ),
        ],
      ),
    );
  }

  @override
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
                      "Titulo lorem ipsum",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pulvinar tortor eget maximus iaculis.",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ))
        ]));
    targets.add(TargetFocus(
        identify: "Target 2",
        keyTarget: _two,
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
                      "Titulo lorem ipsum",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pulvinar tortor eget maximus iaculis.",
                        style: TextStyle(color: Colors.white),
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
      colorShadow: Colors.teal,
      // DEFAULT Colors.black
      // alignSkip: Alignment.bottomRight,
      // textSkip: "SKIP",
      // paddingFocus: 10,
      // opacityShadow: 0.8,
      onClickTarget: (target) {
        print(target);
      },
      
      onClickOverlay: (target) {
        print(target);
      },
      onSkip: () {
        print("skip");
      },
      onFinish: () {
        print("finish");
      },
    ).show();
  }
}