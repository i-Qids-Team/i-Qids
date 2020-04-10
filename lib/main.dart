import 'package:flutter/material.dart';
import './UserProfile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Menu(),
    );
  }
}

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Welcome Corona!'),
          backgroundColor: Colors.red[300],
          actions: <Widget>[
            // Material(
            //   child: InkWell(
            //     onTap: _doNothing,
            //     child:  Image(
            //         alignment: Alignment.topRight,
            //         fit:  BoxFit.contain,
            //         image: AssetImage('assets/logout.png'),

            // ),
            //   )
            // ),
          ]),
      drawer: _Drawer(),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Score: 0",
                style: TextStyle(fontSize: 20, color: Colors.white)),
            Image.asset(
              'assets/main.gif',
              height: 190,
            ),
            // Container(
            //   height: 170.0,
            //   decoration: BoxDecoration(
            //       image: DecorationImage(
            //           image: AssetImage('assets/main.gif'))
            //  ),
            // ),
            // Image(image: AssetImage("assets/ajax-main.gif")),
            SizedBox(height: 20.0),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.blue[300],
                textColor: Colors.white,
                padding: const EdgeInsets.all(15.0),
                child: Text("Body Part", style: TextStyle(fontSize: 25)),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
            ),
            SizedBox(height: 10.0),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.purple[200],
                textColor: Colors.white,
                padding: const EdgeInsets.all(15.0),
                child: Text("Animal", style: TextStyle(fontSize: 25)),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
            ),
            SizedBox(height: 10.0),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.lightGreen[200],
                textColor: Colors.white,
                padding: const EdgeInsets.all(15.0),
                child: Text("Color", style: TextStyle(fontSize: 25)),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
            ),
            SizedBox(height: 10.0),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.redAccent[100],
                textColor: Colors.white,
                padding: const EdgeInsets.all(15.0),
                child: Text("Sport", style: TextStyle(fontSize: 25)),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListTitle extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  ListTitle(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.red.shade300)),
        ),
        child: InkWell(
          splashColor: Colors.orangeAccent,
          child: Container(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          text,
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Drawer extends StatefulWidget {
  @override
  __DrawerState createState() => __DrawerState();
}

class __DrawerState extends State<_Drawer> {
  bool _value = false;

  void _onChanged(bool value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Image(
              alignment: Alignment.center,
              fit: BoxFit.contain,
              image: AssetImage('assets/main.gif'),
            ),
          ),
          Card(
              child: Container(
                  decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Colors.red.shade600)),
                  ),
                  child: InkWell(
                    splashColor: Colors.orangeAccent,
                    child: Container(
                      height: 60,
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title: Text('Profile'),
                        onTap: () {
                          return Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserProfile()),
                          );
                        },
                      ),
                    ),
                  ))),
          Card(
              child: Container(
                  decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Colors.red.shade600)),
                  ),
                  child: InkWell(
                    splashColor: Colors.orangeAccent,
                    child: Container(
                      height: 60,
                      child: ListTile(
                        leading: Icon(Icons.notifications),
                        title: Text('Notification'),
                        onTap: () {
                          return Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Notification()),
                          );
                        },
                      ),
                    ),
                  ))),
          Card(
              child: Container(
                  decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Colors.red.shade600)),
                  ),
                  child: InkWell(
                    splashColor: Colors.orangeAccent,
                    child: Container(
                      height: 60,
                      child: ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Setting'),
                        onTap: () {
                          _settingBottomSheet(context);
                        },
                      ),
                    ),
                  ))),
          Card(
              child: Container(
                  decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Colors.red.shade600)),
                  ),
                  child: InkWell(
                    splashColor: Colors.orangeAccent,
                    child: Container(
                      height: 60,
                      child: ListTile(
                        leading: Icon(Icons.exit_to_app),
                        title: Text('Logout'),
                        onTap: () {
                          return Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Logout()),
                          );
                        },
                      ),
                    ),
                  ))),
        ],
      ),
    );
  }

  void _settingBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
              color: Color(0xFF737373),
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).canvasColor,
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(30),
                      topRight: const Radius.circular(30),
                    )),
                height: MediaQuery.of(context).size.height * .60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      // Row(
                      //   children: <Widget>[
                      //     ListTile(
                      //       leading: Icon(Icons.speaker),
                      //       title: Text('Sound Controller'),
                      //       onTap: () {},
                      //     ),
                      //   ],
                      // ),
                      Row(
                        children: <Widget>[
                          Text("Setting Page"),
                          Spacer(),
                          IconButton(
                            icon: Icon(
                              Icons.cancel,
                              color: Colors.orangeAccent,
                              size: 25,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      ),
                      Row(
                        
                        children: <Widget>[
                         // IconButton(
                          //   icon: Icon(
                          //     Icons.speaker,
                          //     color: Colors.orangeAccent,
                          //     size: 25,
                          //   ), 
                          
                          Text("Sound Mute"),
                          Spacer(),
                          new Switch(
                            activeColor: Colors.green,
                            value: _value,
                            onChanged: (bool value) {
                              _onChanged(value);
                            }
                            ),
                          // IconButton(
                          //   icon: Icon(
                          //     Icons.speaker,
                          //     color: Colors.orangeAccent,
                          //     size: 25,
                          //   ),
                          //   onPressed: () {
                          //     // Navigator.of(context).pop();
                          //   },
                          // )
                        ],
                      ),
                      Row(children: <Widget>[
                        // new Switch(
                        //     value: _value,
                        //     onChanged: (bool value) {
                        //       _onChanged(value);
                        //     }),
                      //   new SwitchListTile(
                      //     title: new Text('Music'),
                      //     activeColor: Colors.red,
                      //     secondary: const Icon(Icons.music_note),
                      //       value: _value,
                      //       onChanged: (bool value) {
                      //         _onChanged(value);
                      //       }),
                      ],
                      ),
                    ],
                  ),
                ),
              ));
        });
  }
} //_Drawer

class Notification extends StatelessWidget {
  final items = List<String>.generate(5, (i) => "Message ${i + 1}");

  Function setState;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Messages"),
          backgroundColor: Colors.orangeAccent,
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              Icon(Icons.delete);
              return Dismissible(
                key: Key(item),
                onDismissed: (direction) {
                  setState(() {
                    items.removeAt(index);
                  });
                  //Scaffold.of(context).showSnackBar(SnackBar(content: Text("Message deleted")));
                },
                background: Container(
                  child: Center(
                    child: Text(
                      'Deleted',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  color: Colors.red,
                ),
                child: Card(
                  color: const Color(0xFFFCE4EC),
                  child: ListTile(
                    leading: Icon(Icons.notifications_active),
                    title: Text('$item'),
                    subtitle: Text('Collect more score to beat others. '
                        '20/3/2020'),
                    isThreeLine: true,
                    // trailing: Icon(Icons.swap_horizontal_circle),
                  ),
                ),
              );
            }));
  } // itemBuilder
}

class Logout extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Logout Session'),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Container(
            color: Colors.red[100],
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                Text("You have successfully logged out",
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                Image.asset(
                  'assets/main.gif',
                  alignment: Alignment.center,
                  height: 210,
                ),
                SizedBox(height: 10.0),
                SizedBox(
                  height: 70,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.yellow[600],
                    textColor: Colors.black,
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Login", style: TextStyle(fontSize: 25)),
                    onPressed: () {
                      return Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Notification()),
                      );
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                  ),
                ),
              ],
            )));
  }
}
