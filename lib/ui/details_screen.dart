import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsScreen extends StatelessWidget {
  static const String id = 'details_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[200],
        leading: CupertinoNavigationBarBackButton(
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: [
          Icon(
            FontAwesomeIcons.ellipsisH,
            color: Colors.blueAccent,
          ),
          SizedBox(
            width: 15.0,
          ),
        ],
        title: Column(
          children: [
            Text(
              'Amanada Kite',
              style: TextStyle(
                  fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              'Created on Sept 9, 2020',
              style: TextStyle(
                  fontSize: 14,
                color: Colors.grey,
              ),
            )
          ],
        ),
        /*trailing: Text(
          'Add',
          style: TextStyle(color: Colors.blueAccent),
        ),
        middle: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Amanada Kite',
              style: TextStyle(
                fontSize: 22
              ),
            ),
            Text(
              'Created on Sept 9, 2020',
              style: TextStyle(
                  fontSize: 14
              ),
            )
          ],
        )*/
      ),
            body: Container(

      ),
    );
  }
}
