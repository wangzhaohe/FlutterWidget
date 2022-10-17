//@+leo-ver=5-thin
//@+node:swot.20221014173016.2: * @file lib/main.dart
//@@language dart
//@@tabwidth -2
//@+others
//@+node:swot.20221014173016.3: ** import
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:async';
//@+node:swot.20221014173016.4: ** main
void main(){
  runApp(MyApp());
}
//@+node:swot.20221014173016.5: ** MyApp -- MaterialApp
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      home: Home(),
      theme: ThemeData(
        // fontFamily: 'SourceSansPro',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
//@+node:swot.20221014173016.6: ** Home  -- Scaffold
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //@+others
      //@+node:swot.20221016113356.1: *3* AppBar
      appBar: AppBar(
        title: const Text('demo'),
        centerTitle: true,

        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: (){},
        ),

        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: (){},
          ),
        ],
        // AppBar 的下边变成了圆角
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),

        backgroundColor: Colors.orangeAccent,
        elevation: 0.0,  // 去掉 appBar 与 body 之间的阴影
      ),
      //@-others
      body: Demo(),
    );
  }
}
//@+node:swot.20221014173224.2: ** Demo
//@@language dart
//@@tabwidth -2
class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> with TickerProviderStateMixin {
  // AnimationController use TickerProviderStateMixin
  //@+others
  //@+node:swot.20221014210933.1: *3* variable
  //@+node:swot.20221014205239.1: *4* var for AnimatedXXX
  // AnimatedAlign
  // AnimatedContainer
  // AnimatedCrossFade
  // AnimatedDefaultTextStyle
  bool selected = false;

  // AnimatedDefaultTextStyle
  double _fontSize = 20;
  Color _color = Colors.blue;
  //@+node:swot.20221015130023.1: *4* var for AnimatedIcon
  bool _isPlay = false;
  late AnimationController _controllerIcon;
  //@+node:swot.20221015123907.1: *4* var for AnimatedBuilder
  late AnimationController _controllerBuilder;
  //@+node:swot.20221015114614.1: *4* var for AnimatedList
  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();
  //@+node:swot.20221015114412.1: *3* function
  //@+node:swot.20221015114250.1: *4* _addItem()             -- AnimatedList
  void _addItem() {
    _items.insert(0, "Item ${_items.length + 1}");
    _key.currentState!.insertItem(
      0,
      duration: const Duration(seconds: 1),
    );
  }
  //@+node:swot.20221015113956.1: *4* _removeItem(int index) -- AnimatedList
  void _removeItem(int index) {
    _key.currentState!.removeItem(
      index,
      (_, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: const Card(
            margin: EdgeInsets.all(10),
            color: Colors.red,
            child: ListTile(
              title: Text(
                "Deleted",
                style: TextStyle(fontSize: 14),
              ),
              visualDensity: const VisualDensity(vertical: -3),  // adjust listTile height
              dense: true,
            ),
          ),
        );
      },
      duration: const Duration(milliseconds: 600),
    );
    _items.removeAt(index);
  }
  //@+node:swot.20221014173224.3: *3* initState()
  @override
  void initState() {
    //@+others
    //@+node:swot.20221015121016.1: *4* AnimationController for AnimatedBuilder
    _controllerBuilder = AnimationController(
      duration: const Duration(seconds: 10),  // 转一圈的时间
      vsync: this,                            // use TickerProviderStateMixin
    )..repeat();                              // 10s 后重复

    //@+node:swot.20221015115055.1: *4* AnimationController for AnimatedIcon
    _controllerIcon = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this  // use TickerProviderStateMixin
    );
    //@-others
    super.initState();
  }
  //@+node:swot.20221014212421.1: *3* dispose()
  @override
  void dispose() {
    _controllerBuilder.dispose();  // AnimatedBuilder
    _controllerIcon.dispose();     // AnimatedList
    super.dispose();
  }
  //@+node:swot.20221014173224.4: *3* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221014224018.1: *4* SingleChildScrollView
      SingleChildScrollView(
        child:
          //@+others
          //@+node:swot.20221014173533.1: *5* Column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //@+others
              //@+node:swot.20221015083736.1: *6* Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //@+others
                  //@+node:swot.20221014173615.1: *7* ElevatedButton  -- show AboutDialog
                  ElevatedButton(
                    child: const Text('Show About Dialog'),
                    onPressed: (){
                      //@+others
                      //@+node:swot.20221014172916.1: *8* showDialog
                      showDialog(
                        context: context,
                        builder: (context) =>
                          //@+others
                          //@+node:swot.20221014184029.1: *9* AboutDialog
                          //@+doc
                          //@@language asciidoc
                          // :nofooter:
                          // image::../image/AboutDialog.png[AboutDialog,240]
                          //
                          //@@c
                          //@@language dart
                          //@@tabwidth -2
                          const AboutDialog(
                            applicationIcon: FlutterLogo(),
                            applicationLegalese: 'Legalese',
                            applicationName: 'Flutter App',
                            applicationVersion: 'version 1.0.0',
                            children: [
                              Text('This is a text created by Flutter Mapp'),
                            ],
                          ),

                          //@-others
                      );
                      //@-others
                    }
                  ),
                  //@+node:swot.20221015090722.1: *7* SizedBox -- show AboutListTile
                  //@+doc
                  //@@language asciidoc
                  // :nofooter:
                  // https://www.flutterbeads.com/renderbox-was-not-laid-out/?[3 Ways to Fix RenderBox was not Laid Out in Flutter [2022]]
                  //
                  // 使用 SizedBox 可以解决上面报错的问题
                  //
                  //@@c
                  //@@language dart
                  //@@tabwidth -2
                  SizedBox(
                    width: 200.0,
                    height: 40.0,
                    child:
                      //@+others
                      //@+node:swot.20221014190907.1: *8* AboutListTile
                      //@+doc
                      //@@language asciidoc
                      // :nofooter:
                      // image::../image/AboutListTile.png[AboutListTile,240]
                      //
                      //@@c
                      //@@language dart
                      //@@tabwidth -2
                      const AboutListTile(
                        icon: Icon(Icons.info),
                        applicationIcon: FlutterLogo(),
                        applicationLegalese: 'Legalese',
                        applicationName: 'Flutter',
                        applicationVersion: 'version 1.0.0',
                        aboutBoxChildren: [
                          Text('This is a text created by Flutter Mapp'),
                        ],
                      ),
                      //@-others
                  ),
                  //@-others
                ],
              ),
              //@+node:swot.20221016182732.1: *6* Divider
              Divider(),
              //@+node:swot.20221015092108.1: *6* Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //@+others
                  //@+node:swot.20221014200443.1: *7* Stack           -- show AbsorbPointer包含按钮不可点击
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      //@+others
                      //@+node:swot.20221014195915.1: *8* SizedBox
                      SizedBox(
                        width: 100.0,
                        height: 30.0,
                        child: ElevatedButton(
                          onPressed: (){},
                          child: null,
                        ),
                      ),
                      //@+node:swot.20221014200257.1: *8* SizedBox
                      SizedBox(
                        width: 40.0,
                        height: 60.0,
                        child:
                          //@+others
                          //@+node:swot.20221014200811.1: *9* AbsorbPointer -- include button can not be clicked
                          //@+doc
                          //@@language asciidoc
                          // :nofooter:
                          // image::../image/AbsorbPointer.png[AbsorbPointer,240]
                          //
                          //@@c
                          //@@language dart
                          //@@tabwidth -2
                          AbsorbPointer(
                            child:
                              //@+others
                              //@+node:swot.20221014200758.1: *10* ElevatedButton 不可点击
                              //@@language dart
                              //@@tabwidth -2
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue.shade200,
                                ),
                                onPressed: (){},
                                child: Text("不能点"),
                              ),
                              //@-others
                          ),
                          //@-others
                      ),
                      //@-others
                    ],
                  ),
                  //@+node:swot.20221014202218.1: *7* ElevatedButton  -- show AlertDialog
                  ElevatedButton(
                    child: const Text('Show Alert Dialog'),
                    onPressed: (){
                      //@+others
                      //@+node:swot.20221014203316.1: *8* showDialog
                      showDialog(
                        context: context,
                        builder: (context) =>
                          //@+others
                          //@+node:swot.20221014202553.1: *9* AlertDialog
                          AlertDialog(
                            actions: [
                              TextButton(
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Close'),
                              ),
                            ],
                            title: const Text('Flutter Map'),
                            contentPadding: const EdgeInsets.all(20.0),
                            content: const Text('This is the alert Dialog'),
                          ),
                          //@-others
                      );
                      //@-others
                    },
                  ),
                  //@-others
                ],
              ),
              //@+node:swot.20221016183151.1: *6* Divider
              Divider(),
              //@+node:swot.20221015093439.1: *6* Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //@+others
                  //@+node:swot.20221014203738.1: *7* Container       -- show Align
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 4.0),
                    height: 40.0,
                    width: 100.0,
                    color: Colors.blueGrey,
                    child:
                      //@+others
                      //@+node:swot.20221014203725.1: *8* Align
                      //@+doc
                      //@@language asciidoc
                      // :nofooter:
                      // image::../image/Align.png[Align,240]
                      //
                      //@@c
                      //@@language dart
                      //@@tabwidth -2
                      const Align(
                        alignment: Alignment.topRight,
                        // alignment: Alignment.bottonLeft,
                        child: FlutterLogo(
                          size: 20,
                        ),
                      ),
                      //@-others
                  ),
                  //@+node:swot.20221014205311.1: *7* GestureDetector -- show AnimatedAlign
                  GestureDetector(
                    onTap: (){
                      setState((){
                        selected = !selected;
                      });
                    },
                    child: Center(
                      child: Container(
                        width: 150.0,
                        height: 40.0,
                        color: Colors.grey,
                        child:
                          //@+others
                          //@+node:swot.20221014205059.1: *8* AnimatedAlign
                          AnimatedAlign(
                            alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastOutSlowIn,
                            child: const FlutterLogo(size: 20.0),
                          ),
                          //@-others
                      ),
                    ),
                  ),
                  //@-others
                ],
              ),
              //@+node:swot.20221016183153.1: *6* Divider
              Divider(),
              //@+node:swot.20221015093840.1: *6* Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //@+others
                  //@+node:swot.20221014210850.1: *7* AnimatedBuilder
                  //@+doc
                  //@@language asciidoc
                  // :nofooter:
                  // 1. define _controllerBuilder
                  // 2. _controllerBuilder: need class `with TickerProviderStateMixin`
                  // 3. _controllerBuilder: need dispose
                  //
                  //@@c
                  //@@language dart
                  //@@tabwidth -2
                  AnimatedBuilder(
                    animation: _controllerBuilder,
                    child: const FlutterLogo(size: 30,),
                    builder: (BuildContext context, Widget? child){
                      return Transform.rotate(
                        angle: _controllerBuilder.value * 2.0 * math.pi,
                        child: child,
                      );
                    },
                  ),
                  //@+node:swot.20221014220359.1: *7* GestureDetector -- show AnimatedContainer
                  GestureDetector(
                    onTap: (){
                      setState((){
                        selected = !selected;
                      });
                    },
                    child: Center(
                      child:
                        //@+others
                        //@+node:swot.20221014220610.1: *8* AnimatedContainer
                        AnimatedContainer(
                          width: selected ? 150.0 : 25.0,
                          height: selected ? 25.0 : 40.0,
                          color: selected ? Colors.blueGrey : Colors.grey,
                          alignment: selected ? Alignment.center: AlignmentDirectional.topCenter,
                          duration: const Duration(seconds: 2),
                          curve: Curves.fastOutSlowIn,
                          child: const FlutterLogo(size: 20.0),
                        ),
                        //@-others
                    ),
                  ),
                  //@-others
                ],
              ),
              //@+node:swot.20221016183154.1: *6* Divider
              Divider(),
              //@+node:swot.20221014225319.1: *6* Row                -- show AnimatedCrossFade
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //@+others
                  //@+node:swot.20221014222642.1: *7* TextButton
                  Container(
                    height: 30.0,
                    child:TextButton(
                      onPressed:(){
                        setState((){
                          selected = !selected;
                        });
                      },
                      child: const Text(
                        'Switch image',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  //@+node:swot.20221014221629.1: *7* AnimatedCrossFade
                  AnimatedCrossFade(
                    firstChild: Image.network(
                      'https://img2.baidu.com/it/u=2642639611,1941240358&fm=253&fmt=auto&app=138&f=JPEG?w=200&h=200',
                      width: 100.0,
                      height: 100.0,
                    ),
                    secondChild: Image.network(
                      'https://img2.baidu.com/it/u=935142738,1114949296&fm=253&fmt=auto&app=138&f=PNG?w=200&h=200',
                      width: 100.0,
                      height: 100.0,
                    ),
                    crossFadeState: selected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                    duration: const Duration(seconds: 1),
                  ),
                  //@-others
                ],
              ),
              //@+node:swot.20221016183156.1: *6* Divider
              Divider(),
              //@+node:swot.20221015094520.1: *6* Row                -- show AnimatedDefaultTextStyle
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //@+others
                  //@+node:swot.20221015072254.1: *7* TextButton
                  TextButton(
                    onPressed: (){
                      setState((){
                        _fontSize = selected ? 40 : 20;
                        _color = selected ? Colors.blue : Colors.red;
                        selected = !selected;
                      });
                    },
                    child: const Text('Switch Font'),
                  ),
                  //@+node:swot.20221015072225.1: *7* SizedBox
                  SizedBox(
                    height: 40,
                    child:
                      //@+others
                      //@+node:swot.20221015072500.1: *8* AnimatedDefaultTextStyle
                      AnimatedDefaultTextStyle(
                        duration: const Duration(milliseconds: 300),
                        style: TextStyle(
                          fontSize: _fontSize,
                          color: _color,
                          fontWeight: FontWeight.bold,
                        ),
                        child: const Text('Flutter'),
                      ),
                      //@-others
                  ),
                  //@-others
                ],
              ),
              //@+node:swot.20221016183158.1: *6* Divider
              Divider(),
              //@+node:swot.20221015163532.1: *6* Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //@+others
                  //@+node:swot.20221015081646.1: *7* GestureDetector       -- show AnimatedIcon
                  GestureDetector(
                    onTap: () {
                      if (_isPlay == false) {
                        _controllerIcon.forward();  // 下个图标
                        _isPlay = true;
                      } else {
                        _controllerIcon.reverse();  // 前个图标
                        _isPlay = false;
                      }
                    },
                    child:
                      //@+others
                      //@+node:swot.20221015073027.1: *8* AnimatedIcon
                      //@+doc
                      //@@language asciidoc
                      // :nofooter:
                      // 1. define AnimationController
                      // 2. AnimationController: need class `with TickerProviderStateMixin`
                      // 3. AnimationController: need dispose
                      //
                      //@@c
                      //@@language dart
                      //@@tabwidth -2
                      AnimatedIcon(
                        // play is the first icon
                        // pause is the second icon
                        icon: AnimatedIcons.play_pause,
                        progress: _controllerIcon,
                        size: 40,
                      ),
                      //@-others
                  ),
                  //@+node:swot.20221015163118.1: *7* AnimatedModalBarrier  -- show AnimatedModalBarrier
                  const AnimatedModalBarrierExample(),
                  //@-others
                ],
              ),
              //@+node:swot.20221016183200.1: *6* Divider
              Divider(),
              //@+node:swot.20221015100056.1: *6* show AnimatedList
              IconButton(
                onPressed: _addItem,
                icon: const Icon(Icons.add),
              ),

              SizedBox(
                height: 150,
                child:
                  //@+others
                  //@+node:swot.20221015104212.1: *7* AnimatedList
                  AnimatedList(
                    key: _key,
                    initialItemCount: 0,
                    padding: const EdgeInsets.all(10),
                    itemBuilder: (context, index, animation) {
                      //@+others
                      //@+node:swot.20221015112801.1: *8* SizeTransition
                      return SizeTransition(
                        key: UniqueKey(),
                        sizeFactor: animation,
                        child: Card(
                          margin: const EdgeInsets.all(3),
                          color: Colors.orangeAccent,
                          child: ListTile(
                            title: Text(
                              _items[index],
                              style: const TextStyle(fontSize: 14),
                            ),
                            trailing: IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: (){
                                _removeItem(index);
                              },
                            ),
                            visualDensity: const VisualDensity(vertical: -3),  // adjust listTile height
                            dense: true,  // 高度会更加紧密，就是高度更小的意思
                          ),
                        ),
                      );
                      //@-others
                    },
                  ),
                  //@-others
              ),
              //@+node:swot.20221016183202.1: *6* Divider
              Divider(),
              //@+node:swot.20221015170038.1: *6* show AnimatedOpacity
              AnimatedOpacityExample(),
              //@+node:swot.20221016183204.1: *6* Divider
              Divider(),
              //@+node:swot.20221015221233.1: *6* show AnimatedPadding
              AnimatedPaddingExample(),
              //@+node:swot.20221016183205.1: *6* Divider
              Divider(),
              //@+node:swot.20221015225921.1: *6* show AnimatedPhysicalModel
              AnimatedPhysicalModelExample(),
              //@+node:swot.20221016183207.1: *6* Divider
              Divider(),
              //@+node:swot.20221016074843.1: *6* show AnimatedPositionedExample
              AnimatedPositionedExample(),
              //@+node:swot.20221016183209.1: *6* Divider
              Divider(),
              //@+node:swot.20221016082802.1: *6* show AnimatedRotationExample
              AnimatedRotationExample(),
              //@+node:swot.20221016183210.1: *6* Divider
              Divider(),
              //@+node:swot.20221016105716.1: *6* show AnimatedSizeExample
              AnimatedSizeExample(),
              //@+node:swot.20221016183212.1: *6* Divider
              Divider(),
              //@+node:swot.20221016111534.1: *6* show AnimatedSwitcherExample
              AnimatedSwitcherExample(),
              //@+node:swot.20221016183213.1: *6* Divider
              Divider(),
              //@+node:swot.20221016172119.1: *6* AspectRatio
              Container(
                color: Colors.orangeAccent,
                alignment: Alignment.center,
                width: double.infinity,
                height: 100,
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    color: Colors.blueGrey,
                    alignment: Alignment.center,
                    child: const Text("AspecRatio 16 / 9"),
                  ),
                ),
              ),
              //@+node:swot.20221016183217.1: *6* Divider
              Divider(),
              //@+node:swot.20221016174105.1: *6* show AutoCompleteExample
              AutoCompleteExample(),
              //@+node:swot.20221016183219.1: *6* Divider
              Divider(),
              //@+node:swot.20221016175229.1: *6* SizedBox
              SizedBox(
                height: 200.0,
              ),
              //@-others
            ]
          ),
          //@-others
      )
      //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221015133323.2: ** AnimatedModalBarrierExample
//@@language dart
//@@tabwidth -2
class AnimatedModalBarrierExample extends StatefulWidget {
  const AnimatedModalBarrierExample({super.key});

  @override
  State<AnimatedModalBarrierExample> createState() => _AnimatedModalBarrierExampleState();
}

class _AnimatedModalBarrierExampleState extends State<AnimatedModalBarrierExample>
    with SingleTickerProviderStateMixin {
  //@+others
  //@+node:swot.20221015143028.1: *3* varible
  bool _isPressed = false;
  late Widget _animatedModalBarrier;
  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  //@+node:swot.20221015133323.3: *3* initState()
  @override
  void initState() {
    ColorTween colorTween = ColorTween(
      begin: Colors.orangeAccent.withOpacity(0.5),
      end: Colors.blueGrey.withOpacity(0.5),
    );
    _animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 3),
    );
    _colorAnimation = colorTween.animate(_animationController);
    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorAnimation,
      dismissible: true,
    );
    super.initState();
  }
  //@+node:swot.20221015141301.1: *3* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221015133323.4: *3* build()
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: 150.0,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          //@+others
          //@+node:swot.20221015212850.1: *4* ElevatedButton
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orangeAccent,
            ),
            onPressed: (){
              setState(() {
                _isPressed = true;
              });
              _animationController.reset();
              _animationController.forward();
              Future.delayed(
                const Duration(seconds: 3), (){
                  setState(() {
                    _isPressed = false;
                  });
                }
              );
            },
            child: const Text('Press'),
          ),
          //@+node:swot.20221015212926.1: *4* _animatedModalBarrier
          if (_isPressed) _animatedModalBarrier,
          //@-others
        ],
      ),
    );
  }
  //@-others
}

//@+node:swot.20221015212139.2: ** AnimatedOpacityExample
//@@language dart
//@@tabwidth -2
class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({super.key});

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample>{
  //@+others
  //@+node:swot.20221015212254.1: *3* varible
  double opacityLevel = 1.0;
  //@+node:swot.20221015212139.3: *3* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221015212139.4: *3* build()
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221015165207.1: *4* AnimatedOpacity
        AnimatedOpacity(
          opacity: opacityLevel,
          duration: const Duration(seconds: 2),
          child: const FlutterLogo(size: 30),
        ),

        //@+node:swot.20221015165419.1: *4* ElevatedButton
        ElevatedButton(
          child: const Text('Fade Logo'),
          onPressed: (){
            setState(
              () => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0,
            );
          },
        ),
        //@-others
      ],
    );
  }
  //@-others
}

//@+node:swot.20221015214517.2: ** AnimatedPaddingExample
//@@language dart
//@@tabwidth -2
class AnimatedPaddingExample extends StatefulWidget {
  const AnimatedPaddingExample({super.key});

  @override
  State<AnimatedPaddingExample> createState() => _AnimatedPaddingExampleState();
}

class _AnimatedPaddingExampleState extends State<AnimatedPaddingExample>{
  //@+others
  //@+node:swot.20221015214632.1: *3* varible
  double padValue = 0.0;
  //@+node:swot.20221015214517.3: *3* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221015214517.4: *3* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221015222059.1: *4* Column
      Column(
        children: [
          //@+others
          //@+node:swot.20221015222016.1: *5* Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //@+others
              //@+node:swot.20221015214926.1: *6* ElevatedButton
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                ),
                child: const Text('Change padding'),
                onPressed: () {
                  setState((){
                    padValue = padValue == 0.0 ? 100.0 : 0.0;
                  });
                },
              ),

              //@+node:swot.20221015220115.1: *6* Text
              Text('Padding = $padValue'),
              //@-others
            ],
          ),
          //@+node:swot.20221015220153.1: *5* AnimatedPadding
          AnimatedPadding(
            // padValue will be changed
            padding: EdgeInsets.all(padValue),
            duration: const Duration(seconds: 2),
            curve: Curves.easeInOut,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 30.0,
              color: Colors.orangeAccent,
            ),
          ),
          //@-others
        ],
      );
      //@-others
  }
  //@-others
}

//@+node:swot.20221015223619.2: ** AnimatedPhysicalModelExample
//@@language dart
//@@tabwidth -2
class AnimatedPhysicalModelExample extends StatefulWidget {
  const AnimatedPhysicalModelExample({super.key});

  @override
  State<AnimatedPhysicalModelExample> createState() => _AnimatedPhysicalModelExampleState();
}

class _AnimatedPhysicalModelExampleState extends State<AnimatedPhysicalModelExample>{
  //@+others
  //@+node:swot.20221015223846.1: *3* varible
  bool isFlat = true;
  //@+node:swot.20221015223619.3: *3* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221015223619.4: *3* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221015223619.5: *3* build()
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221015225444.2: *4* ElevatedButton
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            // backgroundColor: Colors.orangeAccent,
          ),
          child: const Text('Click'),
          onPressed: () {
            setState(() {
              isFlat = ! isFlat;
            });
          },
        ),

        //@+node:swot.20221015224020.1: *4* AnimatedPhysicalModel
        AnimatedPhysicalModel(
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
          elevation: isFlat ? 0 : 6.0,
          shape: BoxShape.rectangle,
          shadowColor: Colors.black,
          color: Colors.white,
          child: const SizedBox(
            height: 40.0,
            width: 40.0,
            child: Icon(Icons.android_outlined),
          ),
        ),

        //@-others
      ],
    );
  }
  //@-others
}

//@+node:swot.20221016072223.2: ** AnimatedPositionedExample
//@@language dart
//@@tabwidth -2
class AnimatedPositionedExample extends StatefulWidget {
  const AnimatedPositionedExample({super.key});

  @override
  State<AnimatedPositionedExample> createState() => _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample>{
  //@+others
  //@+node:swot.20221016072359.1: *3* varible
  bool selected = false;
  //@+node:swot.20221016072223.3: *3* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221016072223.4: *3* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221016072223.5: *3* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221016072611.1: *4* SizedBox
      SizedBox(
        width: 200,
        height: 100,
        child:
          //@+others
          //@+node:swot.20221016072657.1: *5* Stack
          Stack(
            children: [
              //@+others
              //@+node:swot.20221016072723.1: *6* AnimatedPositioned
              AnimatedPositioned(
                width: selected ? 200.0 : 150.0,
                height: selected ? 60.0 : 20.0,
                top: selected ? 35.0: 5.0,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = !selected;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Text('click change position'),
                  ),
                ),
              ),
              //@-others
            ]
          ),
          //@-others
      );
      //@-others
  }
  //@-others
}

//@+node:swot.20221016080026.2: ** AnimatedRotationExample
//@@language dart
//@@tabwidth -2
class AnimatedRotationExample extends StatefulWidget {
  const AnimatedRotationExample({super.key});

  @override
  State<AnimatedRotationExample> createState() => _AnimatedRotationExampleState();
}

class _AnimatedRotationExampleState extends State<AnimatedRotationExample>{
  //@+others
  //@+node:swot.20221016080130.1: *3* varible
  double turns = 0.0;
  //@+node:swot.20221016080026.3: *3* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221016080026.4: *3* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221016080026.5: *3* build()
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221016082451.2: *4* ElevatedButton
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            // backgroundColor: Colors.orangeAccent,
          ),
          child: const Text('Rotate Logo'),
          onPressed: () {
            setState(() {
              turns += 1 / 4;
            });
          },
        ),

        //@+node:swot.20221016082248.1: *4* Padding
        Padding(
          padding: const EdgeInsets.all(5),
          child: AnimatedRotation(
            turns: turns,
            duration: const Duration(seconds: 1),
            child: const FlutterLogo(size: 40),
          ),
        ),
        //@-others
      ],
    );
  }
  //@-others
}

//@+node:swot.20221016104439.2: ** AnimatedSizeExample
//@@language dart
//@@tabwidth -2
class AnimatedSizeExample extends StatefulWidget {
  const AnimatedSizeExample({super.key});

  @override
  State<AnimatedSizeExample> createState() => _AnimatedSizeExampleState();
}

class _AnimatedSizeExampleState extends State<AnimatedSizeExample>{
  //@+others
  //@+node:swot.20221016104517.1: *3* varible
  double _size = 30;
  //@+node:swot.20221016104439.3: *3* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221016104439.4: *3* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221016104439.5: *3* build()
  //@@language dart
  //@@tabwidth -2
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221016110453.1: *4* Text
        Text("Click logo change size"),
        //@+node:swot.20221016110359.1: *4* GestureDetector AnimatedSize FlutterLogo
        GestureDetector(
          onTap: (){
            setState(() {
              _size = _size == 30 ? 60 : 30;
            });
          },
          child: Container(
            color: Colors.white,
            child: AnimatedSize(
              curve: Curves.easeIn,
              duration: const Duration(seconds: 1),
              child: FlutterLogo(size: _size),
            ),
          ),
        ),
        //@-others
      ],
    );
  }
  //@-others
}

//@+node:swot.20221016110809.2: ** AnimatedSwitcherExample
//@@language dart
//@@tabwidth -2
class AnimatedSwitcherExample extends StatefulWidget {
  const AnimatedSwitcherExample({super.key});

  @override
  State<AnimatedSwitcherExample> createState() => _AnimatedSwitcherExampleState();
}

class _AnimatedSwitcherExampleState extends State<AnimatedSwitcherExample>{
  //@+others
  //@+node:swot.20221016110844.1: *3* varible
  int _count = 0;
  //@+node:swot.20221016110809.3: *3* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221016110809.4: *3* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221016110809.5: *3* build()
  //@@language dart
  //@@tabwidth -2
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221016111047.2: *4* ElevatedButton
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            // backgroundColor: Colors.orangeAccent,
          ),
          child: const Text('Add'),
          onPressed: () {
            setState(() {
              _count += 1;
            });
          },
        ),

        //@+node:swot.20221016111150.1: *4* AnimatedSwitcher
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: Text(
            '$_count',
            style: const TextStyle(fontSize: 30),
            key: ValueKey(_count),  // 重要，不加这行无法实现动画
          ),
          // 若不想要默认的动画效果，可能这样指定
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(
              scale: animation,
              child: child,
            );
          },
        ),
        //@-others
      ],
    );
  }
  //@-others
}

//@+node:swot.20221016173408.2: ** AutoCompleteExample 不要在屏幕中部以下(会被软键盘挡住)
//@@language dart
//@@tabwidth -2
class AutoCompleteExample extends StatelessWidget {
  const AutoCompleteExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221016174315.1: *3* varible
  static const List<String> listItems = <String>[
    'apple',
    'banana',
    'melon',
  ];
  //@+node:swot.20221016173408.3: *3* build()
  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return listItems.where((String item) {
          return item.contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String item) {
        print('The $item was selected');
      },
    );
  }
  //@-others
}
//@-others

//@-leo
