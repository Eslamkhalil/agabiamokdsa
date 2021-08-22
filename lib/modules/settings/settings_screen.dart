import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image(
                width: MediaQuery.of(context).size.width / .8,
                height: MediaQuery.of(context).size.width / 1.2,
                image: AssetImage('assets/images/remini.png'),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
            ),
            Text(
              'من اعمال ',
              style: TextStyle(fontSize: 30, color: Colors.grey),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                   Icon(FontAwesomeIcons.linkedin,color: Colors.blue,size: 24,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width /15,
                  ),
                  Text(
                    'Eslam khalil ',
                    style: TextStyle(fontSize: 30, color: Colors.white,
                    fontWeight: FontWeight.w700,
                      letterSpacing: 0.1,

                    ),
                  ),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.facebook,color: Colors.blue,size: 24,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width /15,
                  ),
                  Text(
                    'Eslam khalil ',
                    style: TextStyle(fontSize: 30, color: Colors.white,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.1,

                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
