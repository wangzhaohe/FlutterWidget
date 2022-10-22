//@+leo-ver=5-thin
//@+node:swot.20221017093031.2: * @file lib/main.dart
//@@language dart
//@@tabwidth -2
//@+others
//@+node:swot.20221017093031.3: ** import
import 'dart:async';
import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//@+node:swot.20221017093031.4: ** main
void main(){
  runApp(MyApp());
}
//@+node:swot.20221017093031.5: ** MyApp -- MaterialApp
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      home: const Home(),
      theme: ThemeData(
        // fontFamily: 'SourceSansPro',
      ),
      debugShowCheckedModeBanner: false,
      //@+<< showSemanticsDebugger >>
      //@+node:swot.20221022083314.1: *3* << showSemanticsDebugger >>
      // showSemanticsDebugger: true,
      //@-<< showSemanticsDebugger >>
      //@+<< routes >>
      //@+node:swot.20221021132401.1: *3* << routes >>
      //@@language dart
      routes: {
        'home': (context) => Home(),
        'a': (context) => A(),
        'b': (context) => B(),
        'c': (context) => C(),
      },

      initialRoute: 'home',

      // onUnknownRoute: (RouteSettings setting) => MaterialPageRoute(
        // builder: (context) => UnknowPage(),
      // ),
      //@-<< routes >>
    );
  }
}
//@+node:swot.20221021133107.2: ** Home
//@@language dart
//@@tabwidth -2
class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221021133107.3: *3* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221021135715.1: *4* SafeArea
      SafeArea(
        child:
          //@+others
          //@+node:swot.20221021141328.1: *5* Scaffold
          Scaffold(
            body:
              //@+others
              //@+node:swot.20221021133625.1: *6* Wrap
              Wrap(
                spacing: 8.0,
                children: [
                  //@+others
                  //@+node:swot.20221021134037.2: *7* ElevatedButton A
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'a');
                    },
                    child: const Text('A'),
                  ),

                  //@+node:swot.20221021171707.1: *7* ElevatedButton B
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'b');
                    },
                    child: const Text('B'),
                  ),

                  //@+node:swot.20221022115433.1: *7* ElevatedButton C
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'c');
                    },
                    child: const Text('C'),
                  ),

                  //@-others
                ]
              ),
              //@-others
          ),
          //@-others
      )
      //@-others
    ;
  }
  //@-others
}
//@+node:swot.20221021133027.1: ** A Example
//@+node:swot.20221017093031.6: *3* A  -- Scaffold
class A extends StatelessWidget {
  const A({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //@+others
      //@+node:swot.20221017093031.252: *4* AppBar
      appBar: AppBar(
        title: const Text('Demo A'),
        centerTitle: true,

        // leading: IconButton(
          // icon: const Icon(Icons.menu),
          // onPressed: (){},
        // ),

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
      body: DemoA(),
    );
  }
}
//@+node:swot.20221017093031.8: *3* DemoA
//@@language dart
//@@tabwidth -2
class DemoA extends StatefulWidget {
  const DemoA({super.key});

  @override
  State<DemoA> createState() => _DemoAState();
}

class _DemoAState extends State<DemoA> with TickerProviderStateMixin {
  // AnimationController use TickerProviderStateMixin
  //@+others
  //@+node:swot.20221017093031.9: *4* variable
  //@+node:swot.20221017093031.10: *5* var for AnimatedXXX
  // AnimatedAlign
  // AnimatedContainer
  // AnimatedCrossFade
  // AnimatedDefaultTextStyle
  bool selected = false;

  // AnimatedDefaultTextStyle
  double _fontSize = 20;
  Color _color = Colors.blue;
  //@+node:swot.20221017093031.168: *5* var for AnimatedIcon
  bool _isPlay = false;
  late AnimationController _controllerIcon;
  //@+node:swot.20221017093031.161: *5* var for AnimatedBuilder
  late AnimationController _controllerBuilder;
  //@+node:swot.20221017093031.172: *5* var for AnimatedList
  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();
  //@+node:swot.20221017093031.14: *4* function
  //@+node:swot.20221017093031.173: *5* _addItem()             -- AnimatedList
  void _addItem() {
    _items.insert(0, "Item ${_items.length + 1}");
    _key.currentState!.insertItem(
      0,
      duration: const Duration(seconds: 1),
    );
  }
  //@+node:swot.20221017093031.174: *5* _removeItem(int index) -- AnimatedList
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
              visualDensity: VisualDensity(vertical: -3),  // adjust listTile height
              dense: true,
            ),
          ),
        );
      },
      duration: const Duration(milliseconds: 600),
    );
    _items.removeAt(index);
  }
  //@+node:swot.20221017093031.17: *4* initState()
  @override
  void initState() {
    //@+others
    //@+node:swot.20221017093031.162: *5* AnimationController for AnimatedBuilder
    _controllerBuilder = AnimationController(
      duration: const Duration(seconds: 10),  // 转一圈的时间
      vsync: this,                            // use TickerProviderStateMixin
    )..repeat();                              // 10s 后重复

    //@+node:swot.20221017093031.169: *5* AnimationController for AnimatedIcon
    _controllerIcon = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this  // use TickerProviderStateMixin
    );
    //@-others
    super.initState();
  }
  //@+node:swot.20221017093031.20: *4* dispose()
  @override
  void dispose() {
    _controllerBuilder.dispose();  // AnimatedBuilder
    _controllerIcon.dispose();     // AnimatedList
    super.dispose();
  }
  //@+node:swot.20221017093031.21: *4* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221017093031.22: *5* SingleChildScrollView
      SingleChildScrollView(
        child:
          //@+others
          //@+node:swot.20221017093031.23: *6* Column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //@+others
              //@+node:swot.20221017093031.24: *7* Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //@+others
                  //@+node:swot.20221017093031.25: *8* ElevatedButton  -- show AboutDialog
                  ElevatedButton(
                    child: const Text('Show About Dialog'),
                    onPressed: (){
                      //@+others
                      //@+node:swot.20221017093031.26: *9* showDialog
                      showDialog(
                        context: context,
                        builder: (context) =>
                          //@+others
                          //@+node:swot.20221017093031.152: *10* AboutDialog
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
                  //@+node:swot.20221017093031.28: *8* SizedBox -- show AboutListTile
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
                      //@+node:swot.20221017093031.153: *9* AboutListTile
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
              //@+node:swot.20221017093031.30: *7* Divider
              Divider(),
              //@+node:swot.20221017093031.31: *7* Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //@+others
                  //@+node:swot.20221017093031.32: *8* Stack           -- show AbsorbPointer包含按钮不可点击
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      //@+others
                      //@+node:swot.20221017093031.33: *9* SizedBox
                      SizedBox(
                        width: 100.0,
                        height: 30.0,
                        child: ElevatedButton(
                          onPressed: (){},
                          child: null,
                        ),
                      ),
                      //@+node:swot.20221017093031.34: *9* SizedBox
                      SizedBox(
                        width: 40.0,
                        height: 60.0,
                        child:
                          //@+others
                          //@+node:swot.20221017093031.154: *10* AbsorbPointer -- include button can not be clicked
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
                              //@+node:swot.20221017093031.155: *11* ElevatedButton 不可点击
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
                  //@+node:swot.20221017093031.37: *8* ElevatedButton  -- show AlertDialog
                  ElevatedButton(
                    child: const Text('Show Alert Dialog'),
                    onPressed: (){
                      //@+others
                      //@+node:swot.20221017093031.38: *9* showDialog
                      showDialog(
                        context: context,
                        builder: (context) =>
                          //@+others
                          //@+node:swot.20221017093031.156: *10* AlertDialog
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
              //@+node:swot.20221017093031.40: *7* Divider
              Divider(),
              //@+node:swot.20221017093031.41: *7* Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //@+others
                  //@+node:swot.20221017093031.42: *8* Container       -- show Align
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 4.0),
                    height: 40.0,
                    width: 100.0,
                    color: Colors.blueGrey,
                    child:
                      //@+others
                      //@+node:swot.20221017093031.157: *9* Align
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
                  //@+node:swot.20221017093031.44: *8* GestureDetector -- show AnimatedAlign
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
                          //@+node:swot.20221017093031.159: *9* AnimatedAlign
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
              //@+node:swot.20221017093031.46: *7* Divider
              Divider(),
              //@+node:swot.20221017093031.47: *7* Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //@+others
                  //@+node:swot.20221017093031.163: *8* AnimatedBuilder
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
                  //@+node:swot.20221017093031.49: *8* GestureDetector -- show AnimatedContainer
                  GestureDetector(
                    onTap: (){
                      setState((){
                        selected = !selected;
                      });
                    },
                    child: Center(
                      child:
                        //@+others
                        //@+node:swot.20221017093031.164: *9* AnimatedContainer
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
              //@+node:swot.20221017093031.51: *7* Divider
              Divider(),
              //@+node:swot.20221017093031.52: *7* Row                -- show AnimatedCrossFade
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //@+others
                  //@+node:swot.20221017093031.53: *8* TextButton
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
                  //@+node:swot.20221017093031.165: *8* AnimatedCrossFade
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
              //@+node:swot.20221017093031.55: *7* Divider
              Divider(),
              //@+node:swot.20221017093031.56: *7* Row                -- show AnimatedDefaultTextStyle
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //@+others
                  //@+node:swot.20221017093031.57: *8* TextButton
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
                  //@+node:swot.20221017093031.58: *8* SizedBox
                  SizedBox(
                    height: 40,
                    child:
                      //@+others
                      //@+node:swot.20221017093031.166: *9* AnimatedDefaultTextStyle
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
              //@+node:swot.20221017093031.60: *7* Divider
              Divider(),
              //@+node:swot.20221017093031.61: *7* Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //@+others
                  //@+node:swot.20221017093031.62: *8* GestureDetector       -- show AnimatedIcon
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
                      //@+node:swot.20221017093031.170: *9* AnimatedIcon
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
                  //@+node:swot.20221017093031.179: *8* AnimatedModalBarrier  -- show AnimatedModalBarrier
                  const AnimatedModalBarrierExample(),
                  //@-others
                ],
              ),
              //@+node:swot.20221017093031.65: *7* Divider
              Divider(),
              //@+node:swot.20221017093031.175: *7* show AnimatedList
              IconButton(
                onPressed: _addItem,
                icon: const Icon(Icons.add),
              ),

              SizedBox(
                height: 150,
                child:
                  //@+others
                  //@+node:swot.20221017093031.176: *8* AnimatedList
                  AnimatedList(
                    key: _key,
                    initialItemCount: 0,
                    padding: const EdgeInsets.all(10),
                    itemBuilder: (context, index, animation) {
                      //@+others
                      //@+node:swot.20221017093031.177: *9* SizeTransition
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
              //@+node:swot.20221017093031.69: *7* Divider
              Divider(),
              //@+node:swot.20221017093031.194: *7* show AnimatedOpacity
              AnimatedOpacityExample(),
              //@+node:swot.20221017093031.71: *7* Divider
              Divider(),
              //@+node:swot.20221017093031.196: *7* show AnimatedPadding
              AnimatedPaddingExample(),
              //@+node:swot.20221017093031.73: *7* Divider
              Divider(),
              //@+node:swot.20221017093031.207: *7* show AnimatedPhysicalModel
              AnimatedPhysicalModelExample(),
              //@+node:swot.20221017093031.75: *7* Divider
              Divider(),
              //@+node:swot.20221017093031.216: *7* show AnimatedPositionedExample
              AnimatedPositionedExample(),
              //@+node:swot.20221017093031.77: *7* Divider
              Divider(),
              //@+node:swot.20221017093031.226: *7* show AnimatedRotationExample
              AnimatedRotationExample(),
              //@+node:swot.20221017093031.79: *7* Divider
              Divider(),
              //@+node:swot.20221017093031.235: *7* show AnimatedSizeExample
              AnimatedSizeExample(),
              //@+node:swot.20221017093031.81: *7* Divider
              Divider(),
              //@+node:swot.20221017093031.251: *7* show AnimatedSwitcherExample
              AnimatedSwitcherExample(),
              //@+node:swot.20221017093031.83: *7* Divider
              Divider(),
              //@+node:swot.20221017093031.253: *7* AspectRatio
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
              //@+node:swot.20221017093031.85: *7* Divider
              Divider(),
              //@+node:swot.20221017093031.255: *7* show AutoCompleteExample
              AutoCompleteExample(),
              //@+node:swot.20221017093031.87: *7* Divider
              Divider(),
              //@+node:swot.20221017093031.88: *7* SizedBox
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

//@+node:swot.20221017093031.180: *3* AnimatedModalBarrierExample
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
  //@+node:swot.20221017093031.181: *4* varible
  bool _isPressed = false;
  late Widget _animatedModalBarrier;
  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  //@+node:swot.20221017093031.182: *4* initState()
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
  //@+node:swot.20221017093031.183: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221017093031.184: *4* build()
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: 150.0,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          //@+others
          //@+node:swot.20221017093031.185: *5* ElevatedButton
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
          //@+node:swot.20221017093031.186: *5* _animatedModalBarrier
          if (_isPressed) _animatedModalBarrier,
          //@-others
        ],
      ),
    );
  }
  //@-others
}

//@+node:swot.20221017093031.188: *3* AnimatedOpacityExample
//@@language dart
//@@tabwidth -2
class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({super.key});

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample>{
  //@+others
  //@+node:swot.20221017093031.189: *4* varible
  double opacityLevel = 1.0;
  //@+node:swot.20221017093031.190: *4* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221017093031.191: *4* build()
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221017093031.192: *5* AnimatedOpacity
        AnimatedOpacity(
          opacity: opacityLevel,
          duration: const Duration(seconds: 2),
          child: const FlutterLogo(size: 30),
        ),

        //@+node:swot.20221017093031.193: *5* ElevatedButton
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

//@+node:swot.20221017093031.197: *3* AnimatedPaddingExample
//@@language dart
//@@tabwidth -2
class AnimatedPaddingExample extends StatefulWidget {
  const AnimatedPaddingExample({super.key});

  @override
  State<AnimatedPaddingExample> createState() => _AnimatedPaddingExampleState();
}

class _AnimatedPaddingExampleState extends State<AnimatedPaddingExample>{
  //@+others
  //@+node:swot.20221017093031.198: *4* varible
  double padValue = 0.0;
  //@+node:swot.20221017093031.199: *4* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221017093031.200: *4* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221017093031.201: *5* Column
      Column(
        children: [
          //@+others
          //@+node:swot.20221017093031.202: *6* Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //@+others
              //@+node:swot.20221017093031.203: *7* ElevatedButton
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

              //@+node:swot.20221017093031.204: *7* Text
              Text('Padding = $padValue'),
              //@-others
            ],
          ),
          //@+node:swot.20221017093031.205: *6* AnimatedPadding
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

//@+node:swot.20221017093031.208: *3* AnimatedPhysicalModelExample
//@@language dart
//@@tabwidth -2
class AnimatedPhysicalModelExample extends StatefulWidget {
  const AnimatedPhysicalModelExample({super.key});

  @override
  State<AnimatedPhysicalModelExample> createState() => _AnimatedPhysicalModelExampleState();
}

class _AnimatedPhysicalModelExampleState extends State<AnimatedPhysicalModelExample>{
  //@+others
  //@+node:swot.20221017093031.209: *4* varible
  bool isFlat = true;
  //@+node:swot.20221017093031.210: *4* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221017093031.211: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221017093031.212: *4* build()
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221017093031.213: *5* ElevatedButton
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

        //@+node:swot.20221017093031.214: *5* AnimatedPhysicalModel
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

//@+node:swot.20221017093031.217: *3* AnimatedPositionedExample
//@@language dart
//@@tabwidth -2
class AnimatedPositionedExample extends StatefulWidget {
  const AnimatedPositionedExample({super.key});

  @override
  State<AnimatedPositionedExample> createState() => _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample>{
  //@+others
  //@+node:swot.20221017093031.218: *4* varible
  bool selected = false;
  //@+node:swot.20221017093031.219: *4* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221017093031.220: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221017093031.221: *4* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221017093031.222: *5* SizedBox
      SizedBox(
        width: 200,
        height: 100,
        child:
          //@+others
          //@+node:swot.20221017093031.223: *6* Stack
          Stack(
            children: [
              //@+others
              //@+node:swot.20221017093031.224: *7* AnimatedPositioned
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

//@+node:swot.20221017093031.227: *3* AnimatedRotationExample
//@@language dart
//@@tabwidth -2
class AnimatedRotationExample extends StatefulWidget {
  const AnimatedRotationExample({super.key});

  @override
  State<AnimatedRotationExample> createState() => _AnimatedRotationExampleState();
}

class _AnimatedRotationExampleState extends State<AnimatedRotationExample>{
  //@+others
  //@+node:swot.20221017093031.228: *4* varible
  double turns = 0.0;
  //@+node:swot.20221017093031.229: *4* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221017093031.230: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221017093031.231: *4* build()
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221017093031.232: *5* ElevatedButton
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

        //@+node:swot.20221017093031.233: *5* Padding
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

//@+node:swot.20221017093031.236: *3* AnimatedSizeExample
//@@language dart
//@@tabwidth -2
class AnimatedSizeExample extends StatefulWidget {
  const AnimatedSizeExample({super.key});

  @override
  State<AnimatedSizeExample> createState() => _AnimatedSizeExampleState();
}

class _AnimatedSizeExampleState extends State<AnimatedSizeExample>{
  //@+others
  //@+node:swot.20221017093031.237: *4* varible
  double _size = 30;
  //@+node:swot.20221017093031.238: *4* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221017093031.239: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221017093031.240: *4* build()
  //@@language dart
  //@@tabwidth -2
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221017093031.241: *5* Text
        Text("Click logo change size"),
        //@+node:swot.20221017093031.242: *5* GestureDetector AnimatedSize FlutterLogo
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

//@+node:swot.20221017093031.244: *3* AnimatedSwitcherExample
//@@language dart
//@@tabwidth -2
class AnimatedSwitcherExample extends StatefulWidget {
  const AnimatedSwitcherExample({super.key});

  @override
  State<AnimatedSwitcherExample> createState() => _AnimatedSwitcherExampleState();
}

class _AnimatedSwitcherExampleState extends State<AnimatedSwitcherExample>{
  //@+others
  //@+node:swot.20221017093031.245: *4* varible
  int _count = 0;
  //@+node:swot.20221017093031.246: *4* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221017093031.247: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221017093031.248: *4* build()
  //@@language dart
  //@@tabwidth -2
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221017093031.249: *5* ElevatedButton
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

        //@+node:swot.20221017093031.250: *5* AnimatedSwitcher
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

//@+node:swot.20221017093031.256: *3* AutoCompleteExample 不要在屏幕中部以下(会被软键盘挡住)
//@@language dart
//@@tabwidth -2
class AutoCompleteExample extends StatelessWidget {
  const AutoCompleteExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221017093031.257: *4* varible
  static const List<String> listItems = <String>[
    'apple',
    'banana',
    'melon',
  ];
  //@+node:swot.20221017093031.258: *4* build()
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
//@+node:swot.20221021133039.1: ** B Example
//@+node:swot.20221021171949.1: *3* B  -- Scaffold
class B extends StatelessWidget {
  const B({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //@+others
          //@+node:swot.20221021173128.1: *4* AppBar
          appBar: AppBar(
            title: const Text('Demo B'),
            centerTitle: true,

            // leading: IconButton(
              // icon: const Icon(Icons.menu),
              // onPressed: (){},
            // ),

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
          body: DemoB(),
      ),
    );
  }
}
//@+node:swot.20221021172558.1: *3* DemoB
//@@language dart
//@@tabwidth -2
class DemoB extends StatefulWidget {
  const DemoB({super.key});

  @override
  State<DemoB> createState() => _DemoBState();
}

class _DemoBState extends State<DemoB> {
  //@+others
  //@+node:swot.20221021172558.14: *4* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221021172558.15: *5* SingleChildScrollView
      SingleChildScrollView(
        child:
        //@+others
        //@+node:swot.20221021172558.16: *6* Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //@+others
            //@+node:swot.20221021173506.1: *7* show BackdropFilterExample
            BackdropFilterExample(),
            //@+node:swot.20221021172558.23: *7* Divider
            Divider(),
            //@+node:swot.20221021181118.1: *7* show BannerExample
            BannerExample(),
            //@+node:swot.20221021182257.1: *7* Divider
            Divider(),
            //@+node:swot.20221021181700.1: *7* show BaselineExample
            BaselineExample(),
            //@+node:swot.20221022085516.1: *7* Divider
            Divider(),
            //@+node:swot.20221022085519.1: *7* show BlockSemanticsExample
            BlockSemanticsExample(),
            //@+node:swot.20221022101126.1: *7* Divider
            Divider(),
            //@+node:swot.20221022101129.1: *7* show BottomNavigationBarExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              child: const Text('show BottomNavigationBarExample'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNavigationBarExample(),
                  ),
                );
              },
            ),


            //@+node:swot.20221022105626.1: *7* Divider
            Divider(),
            //@+node:swot.20221022094818.1: *7* show BottomSheetExample
            BottomSheetExample(),
            //@+node:swot.20221022111102.1: *7* Divider
            Divider(),
            //@+node:swot.20221022111104.1: *7* show BuilderExample
            BuilderExample(),
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

//@+node:swot.20221022121355.1: *3* Example
//@+node:swot.20221019111317.2: *4* BackdropFilterExample
//@@language dart
//@@tabwidth -2
class BackdropFilterExample extends StatelessWidget {
  const BackdropFilterExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221019111317.3: *5* build()
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Text(
          '0' * 300,
          style: const TextStyle(
            color: Colors.green,
          ),
        ),
        Center(
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 4.0,
                sigmaY: 4.0,
              ),
              child: Container(
                alignment: Alignment.center,
                width: 100,
                height: 100,
                child: const Text('Blur'),
              ),
            ),
          ),
        ),
      ],
    );
  }
  //@-others
}
//@+node:swot.20221021175217.2: *4* BannerExample
//@@language dart
//@@tabwidth -2
class BannerExample extends StatelessWidget {
  const BannerExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221021175217.3: *5* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221021175330.1: *6* Center
      Center(
        child:
          //@+others
          //@+node:swot.20221021175401.1: *7* Container
          Container(
            margin: const EdgeInsets.all(10.0),
            child:
              //@+others
              //@+node:swot.20221021180745.1: *8* ClipRect
              ClipRect(
                child:
                  //@+others
                  //@+node:swot.20221021180828.1: *9* Banner
                  Banner(
                    message: "25% off",
                    location: BannerLocation.topEnd,
                    color: Colors.red,
                    child:
                      //@+others
                      //@+node:swot.20221021175506.1: *10* Container
                      Container(
                        color: Colors.blueGrey,
                        child:
                          //@+others
                          //@+node:swot.20221021175604.1: *11* Padding
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                            child:
                              //@+others
                              //@+node:swot.20221021175702.1: *12* Column
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  //@+others
                                  //@+node:swot.20221021175915.1: *13* Image
                                  Image.network(
                                    'https://img1.baidu.com/it/u=1855083458,281793390&fm=253&fmt=auto&app=138&f=JPEG?w=989&h=500',
                                  ),
                                  //@+node:swot.20221021180035.1: *13* SizedBox
                                  const SizedBox(height: 10),
                                  //@+node:swot.20221021180106.1: *13* Row
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Flutter Course',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.orangeAccent,
                                        ),
                                        child: const Text('Get now'),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  //@-others
                                ],
                              ),
                              //@-others
                          ),
                          //@-others
                      ),
                      //@-others
                  ),
                  //@-others
              ),
              //@-others
          ),
          //@-others
      );
      //@-others
  }
  //@-others
}
//@+node:swot.20221021181642.2: *4* BaselineExample
//@@language dart
//@@tabwidth -2
class BaselineExample extends StatelessWidget {
  const BaselineExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221021181642.3: *5* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.orange,
        child: const Baseline(
          baseline: 0,
          // baseline: 30,
          baselineType: TextBaseline.alphabetic,
          child: FlutterLogo(size: 30,),
        ),
      ),
    );
  }
  //@-others
}
//@+node:swot.20221022080218.2: *4* BlockSemanticsExample
//@@language dart
//@@tabwidth -2
class BlockSemanticsExample extends StatefulWidget {
  const BlockSemanticsExample({super.key});

  @override
  State<BlockSemanticsExample> createState() => _BlockSemanticsExampleState();
}

class _BlockSemanticsExampleState extends State<BlockSemanticsExample>{
  //@+others
  //@+node:swot.20221022083723.1: *5* varible
  bool isShow = false;
  //@+node:swot.20221022080218.3: *5* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221022080218.4: *5* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221022080218.5: *5* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221022080422.1: *6* SizedBox
      SizedBox(
        width: double.infinity,
        child:
          //@+others
          //@+node:swot.20221022083203.1: *7* SizedBox
          SizedBox(
            width: 500,
            height: 135,
            child:
            //@+others
            //@+node:swot.20221022083954.1: *8* Column
            Column(
              children: [
                //@+others
                //@+node:swot.20221022084045.1: *9* OutlinedButton
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      isShow = true;
                    });
                  },
                  child: const Text('Click'),
                ),
                //@+node:swot.20221022084513.1: *9* if (isShow)
                if (isShow)
                //@+others
                //@+node:swot.20221022091825.1: *10* BlockSemantics
                BlockSemantics(
                  blocking: isShow,  // hidden OutlinedButton?
                  child:
                  //@+others
                  //@+node:swot.20221022090937.1: *11* Card
                  Card(
                    color: Colors.orangeAccent,
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('This is a card'),
                          TextButton(
                            child: const Text('Close'),
                            onPressed: () => setState(() {
                              isShow = false;
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //@-others
                ),
                //@-others
                //@-others
              ]
            ),
            //@-others
          ),
          //@-others
      );
      //@-others
  }
  //@-others
}

//@+node:swot.20221022094100.2: *4* BottomNavigationBarExample
//@@language dart
//@@tabwidth -2
class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<BottomNavigationBarExample>{
  //@+others
  //@+node:swot.20221022094133.1: *5* varible
  int _currentIndex = 0;

  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.person),
  ];

  //@+node:swot.20221022094100.3: *5* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221022094100.4: *5* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221022094100.5: *5* build()
  @override
  Widget build(BuildContext context) {
    //@+others
    //@+node:swot.20221022095720.2: *6* Scaffold
    return Scaffold(
      //@+others
      //@+node:swot.20221022101748.1: *7* appBar
      appBar: AppBar(
        title: Text('NewPage'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221022095720.4: *7* body
      body: Center(
        child: body[_currentIndex],
      ),
      //@+node:swot.20221022095720.5: *7* bottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(  // new 底部
        fixedColor: Colors.white,
        backgroundColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(Icons.menu),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        // type: BottomNavigationBarType.shifting, // 很有意思的样式
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        }
      ),
      //@-others
    );

    //@-others
  }
  //@-others
}

//@+node:swot.20221022104843.2: *4* BottomSheetExample
//@@language dart
//@@tabwidth -2
class BottomSheetExample extends StatefulWidget {
  const BottomSheetExample({super.key});

  @override
  State<BottomSheetExample> createState() => _BottomSheetExampleState();
}

class _BottomSheetExampleState extends State<BottomSheetExample>{
  //@+others
  //@+node:swot.20221022104843.3: *5* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221022104843.4: *5* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221022104843.5: *5* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Modal Bottom Sheet'),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 200,
                child: Center(
                  child: ElevatedButton(
                    child: const Text('Close'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
  //@-others
}

//@+node:swot.20221022110627.2: *4* BuilderExample
//@@language dart
//@@tabwidth -2
class BuilderExample extends StatelessWidget {
  const BuilderExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022110627.3: *5* build()
  @override
  Widget build(BuildContext context) {
    return myBuilderWidget();
  }
  //@+node:swot.20221022110900.1: *5* myBuilderWidget()
  // 不加 Builder,则无法找到上面 build's context, 
  myBuilderWidget() => Builder(
    builder: (context) {
      return Text(
        'Text with Theme',
        // context 需要使用上面的 Builder 来获取
        style: Theme.of(context).textTheme.displayLarge,
      );
    }
  );
  //@-others
}
//@+node:swot.20221022121254.1: ** C Example
//@+node:swot.20221022121336.1: *3* C  -- Scaffold
class C extends StatelessWidget {
  const C({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //@+others
          //@+node:swot.20221022121336.2: *4* AppBar
          appBar: AppBar(
            title: const Text('Demo C'),
            centerTitle: true,

            // leading: IconButton(
              // icon: const Icon(Icons.menu),
              // onPressed: (){},
            // ),

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
          body: DemoC(),
      ),
    );
  }
}
//@+node:swot.20221022121559.1: *3* DemoC
//@@language dart
//@@tabwidth -2
class DemoC extends StatefulWidget {
  const DemoC({super.key});

  @override
  State<DemoC> createState() => _DemoCState();
}

class _DemoCState extends State<DemoC> {
  //@+others
  //@+node:swot.20221022121559.2: *4* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221022121559.3: *5* SingleChildScrollView
      SingleChildScrollView(
        child:
        //@+others
        //@+node:swot.20221022121559.4: *6* Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //@+others
            //@+node:swot.20221022121559.5: *7* show CardExample
            CardExample(),
            //@+node:swot.20221022121559.6: *7* Divider
            Divider(),
            //@+node:swot.20221022123052.1: *7* show CenterExample
            CenterExample(),
            //@+node:swot.20221022123124.1: *7* Divider
            Divider(),
            //@+node:swot.20221022141621.1: *7* show CheckboxExample
            CheckboxExample(),
            //@+node:swot.20221022141649.1: *7* Divider
            Divider(),
            //@+node:swot.20221022142602.1: *7* show CheckboxListTileExample
            CheckboxListTileExample(),
            //@+node:swot.20221022143203.1: *7* Divider
            Divider(),
            //@+node:swot.20221022143204.1: *7* show ChipExample
            ChipExample(),
            //@+node:swot.20221022144700.1: *7* Divider
            Divider(),
            //@+node:swot.20221022144701.1: *7* show ChoiceChipExample
            ChoiceChipExample(),
            //@+node:swot.20221022145241.1: *7* Divider
            Divider(),
            //@+node:swot.20221022145230.1: *7* show CircleAvatarExample
            CircleAvatarExample(),
            //@+node:swot.20221022151216.1: *7* Divider
            Divider(),
            //@+node:swot.20221022153425.1: *7* show CircularProgressIndicatorExample
            CircularProgressIndicatorExample(),
            //@+node:swot.20221022151220.1: *7* Divider
            Divider(),
            //@+node:swot.20221022154220.1: *7* show ClipOvalExample
            ClipOvalExample(),
            //@+node:swot.20221022151221.1: *7* Divider
            Divider(),
            //@+node:swot.20221022162124.1: *7* show ClipPathExample
            ClipPathExample(),
            //@+node:swot.20221022151222.1: *7* Divider
            Divider(),
            //@+node:swot.20221022164554.1: *7* show ClipRectExample
            ClipRectExample(),
            //@+node:swot.20221022165709.1: *7* Divider
            Divider(),
            //@+node:swot.20221022165721.1: *7* show ClipRRectExample
            ClipRRectExample(),
            //@+node:swot.20221022170748.1: *7* Divider
            Divider(),
            //@+node:swot.20221022170737.1: *7* show CloseButtonExample
            CloseButtonExample(),
            //@+node:swot.20221022170805.1: *7* Divider
            Divider(),
            //@+node:swot.20221022171708.1: *7* show ColoredBoxExample
            ColoredBoxExample(),
            //@+node:swot.20221022173326.1: *7* Divider
            Divider(),
            //@+node:swot.20221022173017.1: *7* show ColorFilteredExample
            ColorFilteredExample(),
            //@+node:swot.20221022173323.1: *7* Divider
            Divider(),
            //@+node:swot.20221022202111.1: *7* show ConstrainedBoxExample
            ConstrainedBoxExample(),
            //@+node:swot.20221022202130.1: *7* Divider
            Divider(),
            //@+node:swot.20221022203303.1: *7* show ContainerExample
            ContainerExample(),
            //@+node:swot.20221022203833.1: *7* Divider
            Divider(),
            //@+node:swot.20221022203824.1: *7* show ColumnExample
            ColumnExample(),
            //@+node:swot.20221022210542.1: *7* Divider
            Divider(),
            //@+node:swot.20221022210532.1: *7* show CupertinoActionSheetExample
            CupertinoActionSheetExample(),
            //@+node:swot.20221022211609.1: *7* Divider
            Divider(),
            //@+node:swot.20221022214055.1: *7* show CupertinoAppExample
            CupertinoAppExample(),
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

//@+node:swot.20221022121728.1: *3* Example
//@+node:swot.20221022121755.2: *4* CardExample
//@@language dart
//@@tabwidth -2
class CardExample extends StatelessWidget {
  const CardExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022121755.3: *5* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      //@+others
      //@+node:swot.20221022122022.1: *6* Card
      Card(
        elevation: 20,
        color: Colors.orangeAccent,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 8),
              const Text('This is a Flutter card'),
              TextButton(
                child: const Text('Press'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      //@-others
    );
  }
  //@-others
}
//@+node:swot.20221022122655.2: *4* CenterExample
//@@language dart
//@@tabwidth -2
class CenterExample extends StatelessWidget {
  const CenterExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022122655.3: *5* build()
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.orangeAccent,
          child:
          //@+others
          //@+node:swot.20221022122945.1: *6* Center
          const Center(
            heightFactor: 5,  // Text 组件高度倍数（Container有高度则无效）
            child: Text('Flutter learning'),
          ),
          //@-others
        ),
      ]
    );
  }
  //@-others
}
//@+node:swot.20221022141252.2: *4* CheckboxExample
//@@language dart
//@@tabwidth -2
class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample>{
  //@+others
  //@+node:swot.20221022141315.1: *5* varible
  bool? isChecked = false;
  //@+node:swot.20221022141252.3: *5* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221022141252.4: *5* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221022141252.5: *5* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Checkbox(
        value: isChecked,
        activeColor: Colors.orangeAccent,
        tristate: true,  // allow null value
        onChanged: (newBool) {
          setState(() {
            isChecked = newBool;
          });
        },
      ),
    );
  }
  //@-others
}

//@+node:swot.20221022141946.2: *4* CheckboxListTileExample
//@@language dart
//@@tabwidth -2
class CheckboxListTileExample extends StatefulWidget {
  const CheckboxListTileExample({super.key});

  @override
  State<CheckboxListTileExample> createState() => _CheckboxListTileExampleState();
}

class _CheckboxListTileExampleState extends State<CheckboxListTileExample>{
  //@+others
  //@+node:swot.20221022142005.1: *5* varible
  bool? _isChecked = false;
  //@+node:swot.20221022141946.3: *5* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221022141946.4: *5* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221022141946.5: *5* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      //@+others
      //@+node:swot.20221022142124.1: *6* CheckboxListTile
      CheckboxListTile(
        title: const Text('Checkbox List Tile'),
        value: _isChecked,
        onChanged: (bool? newValue) {
          setState(() {
            _isChecked = newValue;
          });
        },
        activeColor: Colors.orangeAccent,
        checkColor: Colors.white,
        tileColor: Colors.black12,
        subtitle: const Text('This is a subtitle'),
        controlAffinity: ListTileControlAffinity.leading,
        tristate: true,
      ),
      //@-others
    );
  }
  //@-others
}

//@+node:swot.20221022142919.2: *4* ChipExample
//@@language dart
//@@tabwidth -2
class ChipExample extends StatelessWidget {
  const ChipExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022142919.3: *5* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Chip(
        label: const Text("This is a Flutter chip"),
        onDeleted: () {
          debugPrint("Do something");
        },
      ),
    );
  }
  //@-others
}
//@+node:swot.20221022144339.2: *4* ChoiceChipExample
//@@language dart
//@@tabwidth -2
class ChoiceChipExample extends StatefulWidget {
  const ChoiceChipExample({super.key});

  @override
  State<ChoiceChipExample> createState() => _ChoiceChipExampleState();
}

class _ChoiceChipExampleState extends State<ChoiceChipExample>{
  //@+others
  //@+node:swot.20221022144356.1: *5* varible
  bool isSelected = false;
  //@+node:swot.20221022144339.3: *5* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221022144339.4: *5* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221022144339.5: *5* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ChoiceChip(
        label: const Text("Choice Chip"),
        selected: isSelected,
        selectedColor: Colors.orangeAccent,
        onSelected: (bool newState) {
          setState(() {
            isSelected = newState;
          });
        },
      ),
    );
  }
  //@-others
}

//@+node:swot.20221022145018.2: *4* CircleAvatarExample
//@@language dart
//@@tabwidth -2
class CircleAvatarExample extends StatelessWidget {
  const CircleAvatarExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022145018.3: *5* build()
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircleAvatar(
        backgroundColor: Colors.orangeAccent,
        radius: 30,
        // backgroundImage: AssetImage(''),
        backgroundImage: NetworkImage("https://img1.baidu.com/it/u=4237790906,511339359&fm=253&fmt=auto&app=138&f=JPEG?w=400&h=400"),
        child: Text(
          'Hello',
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
  //@-others
}
//@+node:swot.20221022153237.2: *4* CircularProgressIndicatorExample
//@@language dart
//@@tabwidth -2
class CircularProgressIndicatorExample extends StatefulWidget {
  const CircularProgressIndicatorExample({super.key});

  @override
  State<CircularProgressIndicatorExample> createState() => _CircularProgressIndicatorExampleState();
}

class _CircularProgressIndicatorExampleState extends State<CircularProgressIndicatorExample>{
  //@+others
  //@+node:swot.20221022153237.3: *5* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221022153237.4: *5* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221022153237.5: *5* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Colors.orangeAccent,
        backgroundColor: Colors.blueGrey,
        value: 0.40,
      ),
    );
  }
  //@-others
}

//@+node:swot.20221022153848.2: *4* ClipOvalExample
//@@language dart
//@@tabwidth -2
class ClipOvalExample extends StatelessWidget {
  const ClipOvalExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022153848.3: *5* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        clipper: CustomClip(),  // change shape
        child: Container(
          width: 60,
          height: 60,
          color: Colors.orangeAccent,
        ),
      ),
    );
  }
  //@-others
}
//@+node:swot.20221022154849.1: *4* CustomClip
class CustomClip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, size.width - 10, size.height);
  }
  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
//@+node:swot.20221022161946.2: *4* ClipPathExample
//@@language dart
//@@tabwidth -2
class ClipPathExample extends StatelessWidget {
  const ClipPathExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022161946.3: *5* build()
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper1(),
      child: Container(
        width: double.infinity,
        height: 100,
        color: const Color(0xFF142B46),
      ),
    );
  }
  //@-others
}
//@+node:swot.20221022162343.1: *4* MyClipper1
class MyClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, size.height)
      ..quadraticBezierTo(
        size.width / 4,
        size.height - 40,
        size.width / 2,
        size.height - 20,
      )
      ..quadraticBezierTo(
        3 / 4 * size.width,
        size.height,
        size.width,
        size.height - 30,
      )
      ..lineTo(size.width, 0);
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
//@+node:swot.20221022163926.2: *4* ClipRectExample
//@@language dart
//@@tabwidth -2
class ClipRectExample extends StatelessWidget {
  const ClipRectExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022163926.3: *5* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRect(
        clipper: MyClipper2(),
        child: Container(
          width: 100,
          height: 100,
          color: Colors.orangeAccent,
        ),
      ),
    );
  }
  //@-others
}
//@+node:swot.20221022164337.1: *4* MyClipper2
class MyClipper2 extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(0, 0, 80, 80);
  }
  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
//@+node:swot.20221022165324.2: *4* ClipRRectExample
//@@language dart
//@@tabwidth -2
class ClipRRectExample extends StatefulWidget {
  const ClipRRectExample({super.key});

  @override
  State<ClipRRectExample> createState() => _ClipRRectExampleState();
}

class _ClipRRectExampleState extends State<ClipRRectExample>{
  //@+others
  //@+node:swot.20221022165324.3: *5* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221022165324.4: *5* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221022165324.5: *5* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.network(
          'https://img1.baidu.com/it/u=3866320064,995069430&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=500',
          width: 250
        ),
      ),
    );
  }
  //@-others
}

//@+node:swot.20221022170557.2: *4* CloseButtonExample
//@@language dart
//@@tabwidth -2
class CloseButtonExample extends StatelessWidget {
  const CloseButtonExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022170557.3: *5* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CloseButton(
        color: Colors.red,
        onPressed: () {
          debugPrint("Do something");
        },
      ),
    );
  }
  //@-others
}
//@+node:swot.20221022171523.2: *4* ColoredBoxExample
//@@language dart
//@@tabwidth -2
class ColoredBoxExample extends StatelessWidget {
  const ColoredBoxExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022171523.3: *5* build()
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ColoredBox(
        color: Colors.orangeAccent,
        child: SizedBox(
          width: 100,
          height: 100,
          child: Center(
            child: Text('ColoredBox'),
          ),
        ),
      ),
    );
  }
  //@-others
}
//@+node:swot.20221022172641.2: *4* ColorFilteredExample
//@@language dart
//@@tabwidth -2
class ColorFilteredExample extends StatelessWidget {
  const ColorFilteredExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022172641.3: *5* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ColorFiltered(
        colorFilter: const ColorFilter.mode(
          Colors.pink,
          BlendMode.color,
        ),
        child: Image.network(
          'https://img1.baidu.com/it/u=457294142,2860827883&fm=253&fmt=auto&app=138&f=JPEG?w=658&h=439',
          height: 150,
        ),
      ),
    );
  }
  //@-others
}
//@+node:swot.20221022201619.2: *4* ConstrainedBoxExample
//@@language dart
//@@tabwidth -2
class ConstrainedBoxExample extends StatelessWidget {
  const ConstrainedBoxExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022201619.3: *5* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 200,
          maxHeight: 100,
        ),
        child: Container(
          color: Colors.orangeAccent,
          width: double.infinity,
          height: 50,
          child: const Text('ConstrainedBox'),
        ),
      ),
    );
  }
  //@-others
}
//@+node:swot.20221022202825.2: *4* ContainerExample
//@@language dart
//@@tabwidth -2
class ContainerExample extends StatelessWidget {
  const ContainerExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022202825.3: *5* build()
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.orangeAccent,
      alignment: Alignment.center,
      constraints: const BoxConstraints.expand(height: 100),
      transform: Matrix4.rotationZ(0.2),
      child: const Text('Flutter App'),
    );
  }
  //@-others
}
//@+node:swot.20221022203601.2: *4* ColumnExample
//@@language dart
//@@tabwidth -2
class ColumnExample extends StatelessWidget {
  const ColumnExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022203601.3: *5* build()
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisSize: MainAxisSize.min, // Column紧紧包围内容
        children: const [
          Text("data 1"),
          Text("data 2"),
          Text("data 3"),
          Text('data so long long'),
        ],
      ),
    );
  }
  //@-others
}
//@+node:swot.20221022210338.2: *4* CupertinoActionSheetExample
//@@language dart
//@@tabwidth -2
class CupertinoActionSheetExample extends StatefulWidget {
  const CupertinoActionSheetExample({super.key});

  @override
  State<CupertinoActionSheetExample> createState() => _CupertinoActionSheetExampleState();
}

class _CupertinoActionSheetExampleState extends State<CupertinoActionSheetExample>{
  //@+others
  //@+node:swot.20221022210338.3: *5* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221022210338.4: *5* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221022210338.5: *5* build()
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(  // Not important here
      child: Center(
        child: CupertinoButton(
          child: const Text('CupertinoActionSheet'),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) => CupertinoActionSheet(
                title: const Text('Flutter App'),
                message: const Text('Your Message'),
                actions: <CupertinoActionSheetAction>[
                  CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Do something'),
                  ),
                  CupertinoActionSheetAction(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: const Text('Do something else'),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
  //@-others
}

//@+node:swot.20221022213243.2: *4* CupertinoAppExample
//@@language dart
//@@tabwidth -2
class CupertinoAppExample extends StatelessWidget {
  const CupertinoAppExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022213243.3: *5* build()
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        // backgroundColor: Colors.orangeAccent,
      ),
      child: const Text('CupertinoApp'),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyCupertinoApp(),
          ),
        );
      },
    );
  }
  //@-others
}
//@+node:swot.20221022213726.2: *4* MyCupertinoApp
//@@language dart
//@@tabwidth -2
class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022213726.3: *5* build()
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color.fromARGB(255, 18, 32, 47),
        primaryColor: CupertinoColors.systemOrange,
      ),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Flutter App"),
        ),
        child: Center(
          child: Icon(CupertinoIcons.share),
        ),
      ),
    );
  }
  //@-others
}
//@-others
//@-leo
