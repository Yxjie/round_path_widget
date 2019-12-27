# round_path_widget

A new Flutter package.

![screen_shot.png](https://upload-images.jianshu.io/upload_images/5459987-b8b6d6c5efd846c0.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
### 说明
此package支持圆形展示设置，圆角矩阵展示设置以及多种不同圆角展示设置，分别对应三个枚举类PathShapeEnum.CirclePath,PathShapeEnum.RoundRect,PathShapeEnum.PartRoundRect

### 使用方式
```
       #圆形设置
       RoundPathWidget(
          child: Image.asset(
          'assets/images/girl.jpeg',
          fit: BoxFit.cover,
          width: 60,
          height: 60,
        ),
      ),
      #矩形圆角设置：定义类型以及radius
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
      #定义多种圆角类型：leftTopRadius，rightTopRadius，leftBottomRadius，rightBottomRadius
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
      
      # 对布局边缘惊醒设置
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
      
```
