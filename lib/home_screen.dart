import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var testJson = {
    "name": "Rajesh Patil",
    "address": "Bangalore, 560037",
    "workshop": "flutter"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 140.0,
                height: 140.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80.0),
                  border: Border.all(
                    color: Colors.black,
                    width: 10.0,
                  ),
                ),
                child: Icon(
                  Icons.account_circle,
                  size: 100,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("First Name: ${testJson["name"]}",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: 14)),
            SizedBox(
              height: 10,
            ),
            Text("Address: ${testJson["address"]}",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: 14)),
            SizedBox(
              height: 10,
            ),
            Text("Course Opted: ${testJson["workshop"]}",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: 14)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            testJson["name"] = "Krishna Patil";
          });
        },
        label: const Text('Update'),
        icon: const Icon(Icons.update),
        backgroundColor: Colors.black,
      ),
    );
  }
}
