import 'package:flutter/material.dart';
import 'package:testapp/main.dart';

class patientlist extends StatefulWidget {
  const patientlist({Key? key}) : super(key: key);

  @override
  _patientlistState createState() => _patientlistState();
}

class _patientlistState extends State<patientlist> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("LIST"),
        leading: IconButton(
          icon: const Icon(Icons.navigate_before),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          },
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.lightBlueAccent, Colors.white])),
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => CameraAppPupil()),
                // );
              },
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)),
                height: 150,
                width: 360,
                child: Stack(
                  children: [
                    Positioned(
                      top: 35,
                      left: 45,
                      child: Text(
                        "PUPIL\n"
                        "DETECTION",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Positioned(
                      right: 45,
                      top: 30,
                      child: Image.asset('assets/images/Search.png'),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => CameraAppToric()),
                // );
              },
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)),
                height: 150,
                width: 360,
                child: Stack(
                  children: [
                    Positioned(
                      top: 50,
                      left: 45,
                      child: Text(
                        "TORIC IOL",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Positioned(
                      right: 45,
                      top: 30,
                      child: Image.asset('assets/images/Toric.png'),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('About')),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('Setting')),
        ],
      ),
    );
  }
}
