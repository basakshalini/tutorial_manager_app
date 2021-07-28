import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';
import 'package:tutorial_manager_app/pages/firstPage.dart';
import 'package:tutorial_manager_app/pages/secondPage.dart';

void main() => runApp(
      MaterialApp(
        home: TutorialButton(),
        // routes: {
        //   '/home': (context) => const QueueScreen(),
        // },
        debugShowCheckedModeBanner: false,
      ),
    );

class TutorialButton extends StatelessWidget {
  const TutorialButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ButtonTheme(
            height: 40,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(100, 100, 100, 100),
              child: RaisedButton(
                  color: Colors.cyan,
                  elevation: 8,
                  child: Center(child: Text('Play Tutorial')),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: RouteSettings(name: "/home"),
                            builder: (builder) => QueueScreen()));
                  }),
            ),
          ),
        ]),
      ),
    );
  }
}
