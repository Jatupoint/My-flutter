// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:testapp/Pupil/pupilcamera.dart';
import 'package:testapp/Toric/toriccamera.dart';
import 'package:camera/camera.dart';
import 'package:testapp/Pupil/pupilcamera.dart';
import 'package:testapp/List/list.dart';

List<CameraDescription> cameras = [];
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      home: MyHomePage(),
      theme: ThemeData(primaryColor: Colors.lightBlueAccent),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //แสดงผลช้อมูล
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text("HOME"),
          leading: IconButton(
            icon: Image.asset('assets/images/eye.png'),
            onPressed: () {},
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.list), title: Text('About')),
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text('Setting')),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.lightBlueAccent, Colors.white])),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CameraAppPupil()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CameraAppToric()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
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
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => patientlist()),
                  );
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
                        left: 50,
                        child: Text(
                          "LIST",
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
                        child: Image.asset('assets/images/folder.png'),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
