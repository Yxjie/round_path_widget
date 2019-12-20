import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:round_path_widget/round_path_widget.dart';

void main() {
//  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('支持各种圆角布局样式Widget'),
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
                child: Container(
                  width: 300,
                  padding: const EdgeInsets.all(5),
                  color: Colors.blue,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Column(
                        children: <Widget>[
                          Center(
                            child: Text("测试多种布局"),
                          ),
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
