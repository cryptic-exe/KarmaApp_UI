import 'package:flutter/material.dart';

class DrivePage extends StatefulWidget {
  DrivePage({Key? key}) : super(key: key);

  @override
  _DrivePageState createState() => _DrivePageState();
}

class _DrivePageState extends State<DrivePage> {
  String? search;
  TextEditingController searchController = new TextEditingController();
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
                          'Karma Drives',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Text(
                              'MY DRIVES',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              ),
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
          Positioned(
            left: 40,
            top: 120,
            child: Container(
              width: 300,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.search_rounded,
                          color: Colors.black,
                          size: 20,
                        )),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 20),
                    hintText: 'Search here...',
                  ),
                  keyboardType: TextInputType.text,
                  controller: searchController,
                  textInputAction: TextInputAction.done,
                  onSubmitted: (String text) {
                    setState(() {
                      search = searchController.text;
                    });
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    _card(),
                    _card(),
                    _card(),
                    _card(),
                    _card(),
                    _card(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _card() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      width: 200,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                'https://images.fineartamerica.com/images-medium-large-5/golden-buddha-statue-thailand-moreiso.jpg')),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0, top: 20, bottom: 3),
                child: Text(
                  '9,523',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Text(
                  'JOINED',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 40),
            child: Text(
              'CATEGORY',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10),
            child: Text(
              'SPIRITUAL EMPOWERMENT',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20),
                child: Icon(Icons.watch_later, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 25, bottom: 4),
                child: Text(
                  '05:00 AM | 07 Dec 2019',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 30),
                child: Container(
                  width: 150,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent[400],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      'JOINED',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 30),
                child: Container(
                  width: 150,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      'DO KARMA',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
