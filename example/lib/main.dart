import 'package:flutter/material.dart';
import 'package:round_path_widget/round_path_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("round_path_widget"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              RoundPathWidget(
                child: Image.asset(
                  'assets/images/girl.jpeg',
                  fit: BoxFit.cover,
                  width: 60,
                  height: 60,
                ),
              ),
              RoundPathWidget(
                pathShape: PathShapeEnum.RoundRect,
                radius: 10,
                child: Image.asset(
                  'assets/images/girl.jpeg',
                  fit: BoxFit.cover,
                  width: 70,
                  height: 70,
                ),
              ),
              RoundPathWidget(
                pathShape: PathShapeEnum.PartRoundRect,
                leftTopRadius: 20,
                rightBottomRadius: 20,
                child: Image.asset(
                  'assets/images/girl.jpeg',
                  fit: BoxFit.cover,
                  width: 110,
                  height: 110,
                ),
              ),
              RoundPathWidget(
                pathShape: PathShapeEnum.PartRoundRect,
                leftTopRadius: 20,
                leftBottomRadius: 20,
                child: Image.asset(
                  'assets/images/girl.jpeg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
              RoundPathWidget(
                pathShape: PathShapeEnum.PartRoundRect,
                leftTopRadius: 20,
                leftBottomRadius: 10,
                rightBottomRadius: 10,
                child: Image.asset(
                  'assets/images/girl.jpeg',
                  fit: BoxFit.cover,
                  width: 150,
                  height: 150,
                ),
              ),
              RoundPathWidget(
                pathShape: PathShapeEnum.PartRoundRect,
                rightTopRadius: 15,
                rightBottomRadius: 15,
                child:Container(
                  padding: const EdgeInsets.all(3),
                  width: 300,
                  color: Colors.blue,
                  child:  Row(
                    children: <Widget>[
                      Expanded(child: Column(
                        children: <Widget>[
                          Center(child: Text("测试多种布局"),),
                          Text('支持不同角，不同圆弧大小')
                        ],
                      )),
                      Image.asset(
                        'assets/images/girl.jpeg',
                        fit: BoxFit.cover,
                        width: 60,
                        height: 60,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
