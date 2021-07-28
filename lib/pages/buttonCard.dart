import 'package:flutter/material.dart';
import 'package:tutorial_manager_app/pages/customDialogBox.dart';

class ButtonCard extends StatelessWidget {
  const ButtonCard({Key? key, this.name, this.time, this.grpIcon})
      : super(key: key);
  final name;
  final time;
  final grpIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
      child: Container(
        width: 400,
        height: 50,
        child: RaisedButton(
          color: Colors.white,
          elevation: 8,
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          child: Row(
            children: [
              // Container(
              //   width: 1,
              //   height: 20,
              //   color: Colors.red,
              // )

              TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CustomDialogBox(
                            title: name,
                            
                            img: Image.asset(
                              "assets/blank.png",
                              width: 75,
                              height: 75,
                            ));
                      });
                },
                child: Text(name,
                    style: TextStyle(
                      wordSpacing: 0,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black,
                    )),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(180, 0, 5, 0),
                child: Text(time,
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
    );
  }
}
