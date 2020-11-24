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
          onPressed: () {
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
                  fontWeight: FontWeight.bold),
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
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 18.0),
                child: Text(
                  'Lead Info',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Phone',
                                style: TextStyle(color: Colors.grey, fontSize: 16),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                '+65 91258251',
                                style: TextStyle(color: Colors.black, fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                          // Container(
                          //   width: 1.8,
                          //   height: 58,
                          //   color: Colors.grey,
                          // ),
                          Container(
                            width: MediaQuery.of(context).size.width/2 - 70,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Source',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    'Referral',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        height: 2,
                        width: double.maxFinite,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Property Type',
                                style: TextStyle(color: Colors.grey, fontSize: 16),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Condo',
                                style: TextStyle(color: Colors.black, fontSize: 20),
                              )
                            ],
                          ),
                          /*Container(
                        width: 1.8,
                        height: 58,
                        color: Colors.grey,
                      ),*/
                          Container(
                            width: MediaQuery.of(context).size.width/2 - 70,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Budget',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    'SGD 30,000',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      width: 2,
                      height: 120,
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 28.0, left: 18.0),
                  child: Text(
                    'Pipeline',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18.0, top: 20),
                  child: Container(
                    width: 100,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 10,
                          width: 24,
                          decoration: BoxDecoration(
                            color: Colors.yellow[700],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(50),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                          height: 10,
                          width: 24,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(50),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                          height: 10,
                          width: 24,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(50),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 20,
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 5,
                          color: Colors.yellow[800],
                        ),
                        Expanded(
                          child: Container(
                            height: 60,
                            color: Colors.grey[300],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                      onChanged: (value) {},
                                      autofocus: false,
                                    ),
                                    Text(
                                      'Contact',
                                      style: TextStyle(
                                          fontSize: 20
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[600],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 20,
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 5,
                          color: Colors.redAccent,
                        ),
                        Expanded(
                          child: Container(
                            height: 60,
                            color: Colors.grey[300],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                      onChanged: (value) {},
                                      autofocus: false,
                                    ),
                                    Text(
                                      'Meet',
                                      style: TextStyle(
                                          fontSize: 20
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[600],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 20,
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 5,
                          color: Colors.blue,
                        ),
                        Expanded(
                          child: Container(
                            height: 60,
                            color: Colors.grey[300],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                      onChanged: (value) {},
                                      autofocus: false,
                                    ),
                                    Text(
                                      'Sign',
                                      style: TextStyle(
                                          fontSize: 20
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey[600],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 28.0, left: 18.0),
                  child: Text(
                    'Notes',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:28.0, right: 20),
                  child: Text(
                    'Add',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 20
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0, left: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Robert (You)',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Text(
                      '20 s',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
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
