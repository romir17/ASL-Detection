import 'package:FlutterMobilenet/Detection.dart';
import 'package:FlutterMobilenet/guide.dart';
import 'package:FlutterMobilenet/widgets/home.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
//import 'Detection.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, @required this.camera}) : super(key: key);

  final CameraDescription camera;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(
        color: Colors.amber,
        width: 2.0,
      ),
      borderRadius: BorderRadius.all(
          Radius.circular(80.0) //                 <--- border radius here
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Screen',
          style: TextStyle(
              fontSize: 28,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 280,
                height: 230,
                decoration: myBoxDecoration(),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => Home(camera: widget.camera)),
                    );
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.camera_alt,
                        size: 150,
                        color: Colors.grey,
                      ),
                      Text(
                        "Realtime Detection",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 280,
                height: 230,
                decoration: myBoxDecoration(),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(builder: (context) => Detection()),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                        'https://play-lh.googleusercontent.com/M_r9y4zqx6PUTEjFQXeqsELsY_3KFpZtjS8epIuRycKxDbeH-necqgkYc8BioW32AE5f',
                        height: 150,
                        width: 150,
                      ),
                      Text(
                        "Detect on Image",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => Guide()),
            );
          },
          label: Text('ASL Guide'),
          icon: Icon(Icons.info),
        ),
      ),
    );
  }
}
