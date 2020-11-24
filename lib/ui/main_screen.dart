import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keytrack/ui/details_screen.dart';

class MainScreen extends StatelessWidget {
  static const String id = 'main_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: openDrawer(context),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey[800],
          size: 40
        ),
        backgroundColor: Colors.grey[200],
        centerTitle: true,
        //toolbarHeight: 100,
        // leading: GestureDetector(
        //   onTap: () => openDrawer(context),
        //   child: Icon(
        //     Icons.menu,
        //     size: 28,
        //     color: Colors.black,
        //   ),
        // ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            width: double.infinity,
            height: 60,
            color: Colors.grey[200],
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
              child: CupertinoTextField(
                cursorColor: Colors.grey[100],
                placeholder: 'Name, email or contact number',
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, right: 12),
            child: Text(
              'Add',
              style: TextStyle(color: Colors.blueAccent, fontSize: 20),
            ),
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            'Leads',
            style: TextStyle(
                color: Colors.grey[900],
                fontSize: 26,
                fontFamily: 'CM Sans Serif'),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /*Container(
              width: double.infinity,
              height: 60,
              color: Colors.grey[200],
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                child: CupertinoTextField(
                  cursorColor: Colors.grey[100],
                  placeholder: 'Name, email or contact number',
                ),
              ),
            ),*/
            Container(
              //height: double.infinity,
              child: Expanded(
                child: ListView(
                  children: [
                    Material(
                      child: ListTile(
                          onTap: () {
                            Navigator.pushNamed(context, DetailsScreen.id);
                          },
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Amanda Kite',
                                style: TextStyle(
                                    color: Colors.grey[900],
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '7h ago • Qanvast Lead • Unassigned',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: 'Meet ',
                                    style: TextStyle(color: Colors.redAccent),
                                  ),
                                  TextSpan(
                                      text: '• Contacted 1m ago - Waiting',
                                      style: TextStyle(color: Colors.grey)),
                                ]),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 22),
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
                          )),
                    ),
                    Material(
                      child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Steve Haux',
                                style: TextStyle(
                                    color: Colors.grey[900],
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '7h ago • Qanvast Lead • Assigned',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: 'New ',
                                    style: TextStyle(color: Colors.blueAccent),
                                  ),
                                  TextSpan(
                                      text: '• Contact as soon as possible',
                                      style: TextStyle(color: Colors.grey)),
                                ]),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 22),
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
                          )),
                    ),
                    Material(
                      child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'John Doe',
                                style: TextStyle(
                                    color: Colors.grey[900],
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '8 min ago - Referral',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: 'Sign ',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  TextSpan(
                                      text: '• Met on 20 Jun\'19, 3:30 PM',
                                      style: TextStyle(color: Colors.grey)),
                                ]),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 22),
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
                                      color: Colors.redAccent,
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
                                      color: Colors.redAccent,
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
                          )),
                    ),
                    Material(
                      child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Lucy Mela',
                                style: TextStyle(
                                    color: Colors.grey[900],
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '8 min ago - Referral',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: 'New ',
                                    style: TextStyle(color: Colors.blueAccent),
                                  ),
                                  TextSpan(
                                      text: '• Signed on 1 Sept\'19, 9:12 AM',
                                      style: TextStyle(color: Colors.grey)),
                                ]),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 22),
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
                                      color: Colors.green,
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
                                      color: Colors.green,
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
                                      color: Colors.green,
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
                          )),
                    ),
                    Material(
                      child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Tom Kerman',
                                style: TextStyle(
                                    color: Colors.grey[900],
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '8 min ago - Referral',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: 'New ',
                                    style: TextStyle(color: Colors.blueAccent),
                                  ),
                                  TextSpan(
                                      text: '• Contact as soon as possible',
                                      style: TextStyle(color: Colors.grey)),
                                ]),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 22),
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
                          )),
                    ),
                    Material(
                      child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Lalit Moon',
                                style: TextStyle(
                                    color: Colors.grey[900],
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '8 min ago - Referral',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: 'Meet ',
                                    style: TextStyle(color: Colors.redAccent),
                                  ),
                                  TextSpan(
                                      text: '• Contact as soon as possible',
                                      style: TextStyle(color: Colors.grey)),
                                ]),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 22),
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
                                      color: Colors.redAccent,
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
                                      color: Colors.redAccent,
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
                          )),
                    ),
                    Material(
                      child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Shayk Fromen',
                                style: TextStyle(
                                    color: Colors.grey[900],
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '8 min ago - Referral',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: 'Sign ',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  TextSpan(
                                      text: '• Contact as soon as possible',
                                      style: TextStyle(color: Colors.grey)),
                                ]),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 22),
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
                          )),
                    ),
                    Material(
                      child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Elvin Arrow',
                                style: TextStyle(
                                    color: Colors.grey[900],
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '8 min ago - Referral',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: 'New ',
                                    style: TextStyle(color: Colors.blueAccent),
                                  ),
                                  TextSpan(
                                      text: '• Contact as soon as possible',
                                      style: TextStyle(color: Colors.grey)),
                                ]),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 22),
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
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Drawer openDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        //controller: _drawerController,
        children: [
          Container(
            color: Colors.black54,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black54,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    maxRadius: 38,
                    foregroundColor: Colors.green,
                    backgroundColor: Colors.green[400],
                    child: Text(
                      'J',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          'John Doe',
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, top: 4.0),
                        child: Text(
                          '+1 20 456 7125',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.black54,
            height: MediaQuery.of(context).size.height - 50,
            child: Column(
              children: [
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Notifications',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.live_help_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Contact Support',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
