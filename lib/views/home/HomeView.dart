import 'package:flutter/material.dart';
import 'package:web_basics/views/widgets/call_to_action/CallToAction.dart';
import 'package:web_basics/views/widgets/centered_view/CenteredView.dart';
import 'package:web_basics/views/widgets/course_details/CourseDetails.dart';
import 'package:web_basics/views/widgets/navigationBar/NavigationBar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
                child: Row(
              children: <Widget>[
                CourseDetails(),
                Expanded(child: Center(child: CallToAction('Join the course!'),))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
