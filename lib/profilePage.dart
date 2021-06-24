import 'package:flutter/material.dart';
import 'drivePage.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool state = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.orange[700],
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ListView(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(30)),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios_sharp,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 220.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(30)),
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => DrivePage()));
                            },
                            icon: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 150,
                left: 150,
                child: CircleAvatar(
                  radius: 50,
                  foregroundImage:
                      NetworkImage('https://thispersondoesnotexist.com/image'),
                ),
              ),
            ],
          ),
          Positioned(
            left: 30,
            top: 300,
            child: Container(
              child: _box('Name', 'Paul'),
            ),
          ),
          Positioned(
            left: 220,
            top: 300,
            child: Container(
              child: _box('Phone Number', '+91 9876543210'),
            ),
          ),
          Positioned(
            left: 30,
            top: 380,
            child: Container(
              child: _box('Location', 'New York City'),
            ),
          ),
          Positioned(
            left: 220,
            top: 380,
            child: Container(
              child: _box('Interest', 'Football'),
            ),
          ),
          Positioned(
            left: 30,
            top: 450,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Notifications',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 320,
            top: 460,
            child: Switch(
                activeColor: Colors.orange,
                value: state,
                onChanged: (bool s) {
                  setState(() {
                    state = s;
                  });
                }),
          )
        ],
      ),
    );
  }
}

Widget _box(String _title, String _value) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(_title),
      ),
      Container(
        width: 140,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              _value,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
