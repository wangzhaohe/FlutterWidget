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
        'd': (context) => D(),
        'e': (context) => E(),
        'f': (context) => F(),
        'g': (context) => G(),
        'h': (context) => H(),
        'i': (context) => I(),
        'l': (context) => L(),
        'm': (context) => M(),
        'n': (context) => N(),
        'o': (context) => O(),
        'p': (context) => P(),
        'r': (context) => R(),
        's': (context) => S(),
        't': (context) => T(),
        'v': (context) => V(),
        'w': (context) => W(),
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

                  //@+node:swot.20221024065732.1: *7* ElevatedButton D
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'd');
                    },
                    child: const Text('D'),
                  ),

                  //@+node:swot.20221026064030.1: *7* ElevatedButton E
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'e');
                    },
                    child: const Text('E'),
                  ),

                  //@+node:swot.20221026200727.1: *7* ElevatedButton F
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'f');
                    },
                    child: const Text('F'),
                  ),

                  //@+node:swot.20221028090127.1: *7* ElevatedButton G
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'g');
                    },
                    child: const Text('G'),
                  ),

                  //@+node:swot.20221023124300.1: *7* ElevatedButton H
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'h');
                    },
                    child: const Text('H'),
                  ),

                  //@+node:swot.20221029081545.1: *7* ElevatedButton I
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'i');
                    },
                    child: const Text('I'),
                  ),

                  //@+node:swot.20221023105031.1: *7* ElevatedButton L
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'l');
                    },
                    child: const Text('L'),
                  ),

                  //@+node:swot.20221023081344.1: *7* ElevatedButton M
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'm');
                    },
                    child: const Text('M'),
                  ),

                  //@+node:swot.20221029134319.1: *7* ElevatedButton N
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'n');
                    },
                    child: const Text('N'),
                  ),

                  //@+node:swot.20221023093000.1: *7* ElevatedButton O
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'o');
                    },
                    child: const Text('O'),
                  ),

                  //@+node:swot.20221030231220.1: *7* ElevatedButton P
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'p');
                    },
                    child: const Text('P'),
                  ),

                  //@+node:swot.20221023152035.1: *7* ElevatedButton R
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'r');
                    },
                    child: const Text('R'),
                  ),

                  //@+node:swot.20221024091106.1: *7* ElevatedButton S
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 's');
                    },
                    child: const Text('S'),
                  ),

                  //@+node:swot.20221023180102.1: *7* ElevatedButton T
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 't');
                    },
                    child: const Text('T'),
                  ),

                  //@+node:swot.20221030213345.1: *7* ElevatedButton V
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'v');
                    },
                    child: const Text('V'),
                  ),

                  //@+node:swot.20221030223324.1: *7* ElevatedButton W
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'w');
                    },
                    child: const Text('W'),
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
//@+node:swot.20221029130915.1: ** Example A-G
//@+node:swot.20221021133027.1: *3* A Example
//@+node:swot.20221017093031.6: *4* A  -- Scaffold
class A extends StatelessWidget {
  const A({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //@+others
      //@+node:swot.20221017093031.252: *5* AppBar
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
//@+node:swot.20221017093031.8: *4* DemoA
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
  //@+node:swot.20221017093031.9: *5* variable
  //@+node:swot.20221017093031.10: *6* var for AnimatedXXX
  // AnimatedAlign
  // AnimatedContainer
  // AnimatedCrossFade
  // AnimatedDefaultTextStyle
  bool selected = false;

  // AnimatedDefaultTextStyle
  double _fontSize = 20;
  Color _color = Colors.blue;
  //@+node:swot.20221017093031.161: *6* var for AnimatedBuilder
  late AnimationController _controllerBuilder;
  //@+node:swot.20221017093031.172: *6* var for AnimatedList
  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();
  //@+node:swot.20221017093031.14: *5* function
  //@+node:swot.20221017093031.173: *6* _addItem()             -- AnimatedList
  void _addItem() {
    _items.insert(0, "Item ${_items.length + 1}");
    _key.currentState!.insertItem(
      0,
      duration: const Duration(seconds: 1),
    );
  }
  //@+node:swot.20221017093031.174: *6* _removeItem(int index) -- AnimatedList
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
  //@+node:swot.20221017093031.17: *5* initState()
  @override
  void initState() {
    //@+others
    //@+node:swot.20221017093031.162: *6* AnimationController for AnimatedBuilder
    _controllerBuilder = AnimationController(
      duration: const Duration(seconds: 10),  // 转一圈的时间
      vsync: this,                            // use TickerProviderStateMixin
    )..repeat();                              // 10s 后重复

    //@-others
    super.initState();
  }
  //@+node:swot.20221017093031.20: *5* dispose()
  @override
  void dispose() {
    _controllerBuilder.dispose();  // AnimatedBuilder
    super.dispose();
  }
  //@+node:swot.20221017093031.21: *5* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221017093031.22: *6* SingleChildScrollView
      SingleChildScrollView(
        child:
          //@+others
          //@+node:swot.20221017093031.23: *7* Column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //@+others
              //@+node:swot.20221017093031.24: *8* Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //@+others
                  //@+node:swot.20221017093031.25: *9* ElevatedButton  -- show AboutDialog
                  ElevatedButton(
                    child: const Text('Show About Dialog'),
                    onPressed: (){
                      //@+others
                      //@+node:swot.20221017093031.26: *10* showDialog
                      showDialog(
                        context: context,
                        builder: (context) =>
                          //@+others
                          //@+node:swot.20221017093031.152: *11* AboutDialog
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
                  //@+node:swot.20221017093031.28: *9* SizedBox -- show AboutListTile
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
                      //@+node:swot.20221017093031.153: *10* AboutListTile
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

              Divider(),
              //@+node:swot.20221017093031.31: *8* Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //@+others
                  //@+node:swot.20221017093031.32: *9* Stack           -- show AbsorbPointer包含按钮不可点击
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      //@+others
                      //@+node:swot.20221017093031.33: *10* SizedBox
                      SizedBox(
                        width: 100.0,
                        height: 30.0,
                        child: ElevatedButton(
                          onPressed: (){},
                          child: null,
                        ),
                      ),
                      //@+node:swot.20221017093031.34: *10* SizedBox
                      SizedBox(
                        width: 40.0,
                        height: 60.0,
                        child:
                          //@+others
                          //@+node:swot.20221017093031.154: *11* AbsorbPointer -- include button can not be clicked
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
                              //@+node:swot.20221017093031.155: *12* ElevatedButton 不可点击
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
                  //@+node:swot.20221017093031.37: *9* ElevatedButton  -- show AlertDialog
                  ElevatedButton(
                    child: const Text('Show Alert Dialog'),
                    onPressed: (){
                      //@+others
                      //@+node:swot.20221017093031.38: *10* showDialog
                      showDialog(
                        context: context,
                        builder: (context) =>
                          //@+others
                          //@+node:swot.20221017093031.156: *11* AlertDialog
                          AlertDialog(
                            actions: [
                              TextButton(
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Close'),
                              ),
                            ],
                            title: const Text('Flutter App'),
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

              Divider(),
              //@+node:swot.20221017093031.41: *8* Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //@+others
                  //@+node:swot.20221017093031.42: *9* Container       -- show Align
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 4.0),
                    height: 40.0,
                    width: 100.0,
                    color: Colors.blueGrey,
                    child:
                      //@+others
                      //@+node:swot.20221017093031.157: *10* Align
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
                  //@+node:swot.20221017093031.44: *9* GestureDetector -- show AnimatedAlign
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
                          //@+node:swot.20221017093031.159: *10* AnimatedAlign
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

              Divider(),
              //@+node:swot.20221017093031.47: *8* Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //@+others
                  //@+node:swot.20221017093031.163: *9* AnimatedBuilder
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
                  //@+node:swot.20221017093031.49: *9* GestureDetector -- show AnimatedContainer
                  GestureDetector(
                    onTap: (){
                      setState((){
                        selected = !selected;
                      });
                    },
                    child: Center(
                      child:
                        //@+others
                        //@+node:swot.20221017093031.164: *10* AnimatedContainer
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

              Divider(),
              //@+node:swot.20221017093031.52: *8* Row                -- show AnimatedCrossFade
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //@+others
                  //@+node:swot.20221017093031.53: *9* TextButton
                  Container(
                    height: 30.0,
                    child: TextButton(
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
                  //@+node:swot.20221017093031.165: *9* AnimatedCrossFade
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

              Divider(),
              //@+node:swot.20221017093031.56: *8* Row                -- show AnimatedDefaultTextStyle
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //@+others
                  //@+node:swot.20221017093031.57: *9* TextButton
                  TextButton(
                    onPressed: (){
                      setState((){
                        _fontSize = selected ? 40 : 20;
                        _color = selected ? Colors.blue : Colors.red;
                        selected = !selected;
                      });
                    },
                    child: const Text('AnimatedDefaultTextStyle'),
                  ),
                  //@+node:swot.20221017093031.58: *9* SizedBox
                  SizedBox(
                    height: 40,
                    child:
                      //@+others
                      //@+node:swot.20221017093031.166: *10* AnimatedDefaultTextStyle
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

              Divider(),
              //@+node:swot.20221017093031.61: *8* Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //@+others
                  //@+node:swot.20221027194417.2: *9* show AnimatedIconExample
                  // ElevatedButton(
                    // style: ElevatedButton.styleFrom(
                      // // backgroundColor: Colors.orangeAccent,
                    // ),
                    // child: const Text('AnimatedIcon'),
                    // onPressed: () {
                      // Navigator.push(
                        // context,
                        // MaterialPageRoute(
                          // builder: (context) => AnimatedIconExample(),
                        // ),
                      // );
                    // },
                  // ),

                  AnimatedIconExample(),
                  //@+node:swot.20221017093031.179: *9* AnimatedModalBarrier  -- show AnimatedModalBarrier
                  const AnimatedModalBarrierExample(),
                  //@-others
                ],
              ),

              Divider(),
              //@+node:swot.20221017093031.175: *8* show AnimatedList
              IconButton(
                onPressed: _addItem,
                icon: const Icon(Icons.add),
              ),

              SizedBox(
                height: 150,
                child:
                  //@+others
                  //@+node:swot.20221017093031.176: *9* AnimatedList
                  AnimatedList(
                    key: _key,
                    initialItemCount: 0,
                    padding: const EdgeInsets.all(10),
                    itemBuilder: (context, index, animation) {
                      //@+others
                      //@+node:swot.20221017093031.177: *10* SizeTransition
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

              Divider(),
              //@+node:swot.20221017093031.194: *8* show AnimatedOpacity
              AnimatedOpacityExample(),

              Divider(),
              //@+node:swot.20221017093031.196: *8* show AnimatedPadding
              AnimatedPaddingExample(),

              Divider(),
              //@+node:swot.20221017093031.207: *8* show AnimatedPhysicalModel
              AnimatedPhysicalModelExample(),

              Divider(),
              //@+node:swot.20221017093031.216: *8* show AnimatedPositionedExample
              AnimatedPositionedExample(),

              Divider(),
              //@+node:swot.20221017093031.226: *8* show AnimatedRotationExample
              AnimatedRotationExample(),

              Divider(),
              //@+node:swot.20221017093031.235: *8* show AnimatedSizeExample
              AnimatedSizeExample(),

              Divider(),
              //@+node:swot.20221017093031.251: *8* show AnimatedSwitcherExample
              AnimatedSwitcherExample(),

              Divider(),
              //@+node:swot.20221017093031.253: *8* AspectRatio
              Container(
                color: Colors.orangeAccent,
                alignment: Alignment.center,
                width: double.infinity,
                height: 100,
                // height: 200,
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    color: Colors.blueGrey,
                    alignment: Alignment.center,
                    child: const Text("AspecRatio 16 / 9"),
                  ),
                ),
              ),
              Divider(),
              //@+node:swot.20221017093031.255: *8* show AutoCompleteExample
              AutoCompleteExample(),

              Divider(),
              //@+node:swot.20221017093031.88: *8* SizedBox
              SizedBox(
                height: 200.0,
              ),

              Divider(),
              //@-others
            ]
          ),

          //@+doc
          //@@language python
          // for node in p.children():
          //     print(node.h);
          //     if node.h == "Divider":
          //         c.deletePositionsInList([node])
          // c.redraw()
          //
          //
          // for node in p.children():
          //     if node.h == "Divider":
          //         node.b = "Divider(),"
          // c.redraw()
          //@-others
      )
      //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221027192851.2: *4* AnimatedIconExample
//@@language dart
//@@tabwidth -2
class AnimatedIconExample extends StatefulWidget {
  const AnimatedIconExample({super.key});

  @override
  State<AnimatedIconExample> createState() => _AnimatedIconExampleState();
}

class _AnimatedIconExampleState extends State<AnimatedIconExample> with TickerProviderStateMixin {
  //@+others
  //@+node:swot.20221027192851.3: *5* varible
  bool _isPlay = false;
  late AnimationController _controllerIcon;
  //@+node:swot.20221027192851.4: *5* initState()
  @override
  void initState() {
    _controllerIcon = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this  // use TickerProviderStateMixin
    );
    super.initState();
  }
  //@+node:swot.20221027192851.5: *5* dispose()
  @override
  void dispose() {
     _controllerIcon.dispose();
    super.dispose();
  }
  //@+node:swot.20221027192851.6: *5* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221027194101.1: *6* GestureDetector       -- show AnimatedIcon
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
        //@+node:swot.20221027194101.2: *7* AnimatedIcon
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
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221017093031.180: *4* AnimatedModalBarrierExample
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
  //@+node:swot.20221017093031.181: *5* varible
  bool _isPressed = false;
  late Widget _animatedModalBarrier;
  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  //@+node:swot.20221017093031.182: *5* initState()
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
  //@+node:swot.20221017093031.183: *5* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221017093031.184: *5* build()
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: 150.0,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          //@+others
          //@+node:swot.20221017093031.185: *6* ElevatedButton
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
          //@+node:swot.20221017093031.186: *6* _animatedModalBarrier
          if (_isPressed) _animatedModalBarrier,
          //@-others
        ],
      ),
    );
  }
  //@-others
}

//@+node:swot.20221017093031.188: *4* AnimatedOpacityExample
//@@language dart
//@@tabwidth -2
class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({super.key});

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample>{
  //@+others
  //@+node:swot.20221017093031.189: *5* varible
  double opacityLevel = 1.0;
  //@+node:swot.20221017093031.190: *5* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221017093031.191: *5* build()
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221017093031.192: *6* AnimatedOpacity
        AnimatedOpacity(
          opacity: opacityLevel,
          duration: const Duration(seconds: 2),
          child: const FlutterLogo(size: 30),
        ),

        //@+node:swot.20221017093031.193: *6* ElevatedButton
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

//@+node:swot.20221017093031.197: *4* AnimatedPaddingExample
//@@language dart
//@@tabwidth -2
class AnimatedPaddingExample extends StatefulWidget {
  const AnimatedPaddingExample({super.key});

  @override
  State<AnimatedPaddingExample> createState() => _AnimatedPaddingExampleState();
}

class _AnimatedPaddingExampleState extends State<AnimatedPaddingExample>{
  //@+others
  //@+node:swot.20221017093031.198: *5* varible
  double padValue = 0.0;
  //@+node:swot.20221017093031.199: *5* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221017093031.200: *5* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221017093031.201: *6* Column
      Column(
        children: [
          //@+others
          //@+node:swot.20221017093031.202: *7* Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //@+others
              //@+node:swot.20221017093031.203: *8* ElevatedButton
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

              //@+node:swot.20221017093031.204: *8* Text
              Text('Padding = $padValue'),
              //@-others
            ],
          ),
          //@+node:swot.20221017093031.205: *7* AnimatedPadding
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

//@+node:swot.20221017093031.208: *4* AnimatedPhysicalModelExample
//@@language dart
//@@tabwidth -2
class AnimatedPhysicalModelExample extends StatefulWidget {
  const AnimatedPhysicalModelExample({super.key});

  @override
  State<AnimatedPhysicalModelExample> createState() => _AnimatedPhysicalModelExampleState();
}

class _AnimatedPhysicalModelExampleState extends State<AnimatedPhysicalModelExample>{
  //@+others
  //@+node:swot.20221017093031.209: *5* varible
  bool isFlat = true;
  //@+node:swot.20221017093031.210: *5* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221017093031.211: *5* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221017093031.212: *5* build()
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221017093031.213: *6* ElevatedButton
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

        //@+node:swot.20221017093031.214: *6* AnimatedPhysicalModel
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

//@+node:swot.20221017093031.217: *4* AnimatedPositionedExample
//@@language dart
//@@tabwidth -2
class AnimatedPositionedExample extends StatefulWidget {
  const AnimatedPositionedExample({super.key});

  @override
  State<AnimatedPositionedExample> createState() => _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample>{
  //@+others
  //@+node:swot.20221017093031.218: *5* varible
  bool selected = false;
  //@+node:swot.20221017093031.219: *5* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221017093031.220: *5* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221017093031.221: *5* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221017093031.222: *6* SizedBox
      SizedBox(
        width: 200,
        height: 100,
        child:
          //@+others
          //@+node:swot.20221017093031.223: *7* Stack
          Stack(
            children: [
              //@+others
              //@+node:swot.20221017093031.224: *8* AnimatedPositioned
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

//@+node:swot.20221017093031.227: *4* AnimatedRotationExample
//@@language dart
//@@tabwidth -2
class AnimatedRotationExample extends StatefulWidget {
  const AnimatedRotationExample({super.key});

  @override
  State<AnimatedRotationExample> createState() => _AnimatedRotationExampleState();
}

class _AnimatedRotationExampleState extends State<AnimatedRotationExample>{
  //@+others
  //@+node:swot.20221017093031.228: *5* varible
  double turns = 0.0;
  //@+node:swot.20221017093031.229: *5* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221017093031.230: *5* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221017093031.231: *5* build()
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221017093031.232: *6* ElevatedButton
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

        //@+node:swot.20221017093031.233: *6* Padding
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

//@+node:swot.20221017093031.236: *4* AnimatedSizeExample
//@@language dart
//@@tabwidth -2
class AnimatedSizeExample extends StatefulWidget {
  const AnimatedSizeExample({super.key});

  @override
  State<AnimatedSizeExample> createState() => _AnimatedSizeExampleState();
}

class _AnimatedSizeExampleState extends State<AnimatedSizeExample>{
  //@+others
  //@+node:swot.20221017093031.237: *5* varible
  double _size = 30;
  //@+node:swot.20221017093031.238: *5* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221017093031.239: *5* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221017093031.240: *5* build()
  //@@language dart
  //@@tabwidth -2
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221017093031.241: *6* Text
        Text("Click logo change size"),
        //@+node:swot.20221017093031.242: *6* GestureDetector AnimatedSize FlutterLogo
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

//@+node:swot.20221017093031.244: *4* AnimatedSwitcherExample
//@@language dart
//@@tabwidth -2
class AnimatedSwitcherExample extends StatefulWidget {
  const AnimatedSwitcherExample({super.key});

  @override
  State<AnimatedSwitcherExample> createState() => _AnimatedSwitcherExampleState();
}

class _AnimatedSwitcherExampleState extends State<AnimatedSwitcherExample>{
  //@+others
  //@+node:swot.20221017093031.245: *5* varible
  int _count = 0;
  //@+node:swot.20221017093031.246: *5* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221017093031.247: *5* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221017093031.248: *5* build()
  //@@language dart
  //@@tabwidth -2
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221017093031.249: *6* ElevatedButton
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

        //@+node:swot.20221017093031.250: *6* AnimatedSwitcher
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

//@+node:swot.20221017093031.256: *4* AutoCompleteExample 不要在屏幕中部以下(会被软键盘挡住)
//@@language dart
//@@tabwidth -2
class AutoCompleteExample extends StatelessWidget {
  const AutoCompleteExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221017093031.257: *5* varible
  static const List<String> listItems = <String>[
    'apple',
    'banana',
    'melon',
  ];
  //@+node:swot.20221017093031.258: *5* build()
  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {  // user input value
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
//@+node:swot.20221021133039.1: *3* B Example
//@+node:swot.20221021171949.1: *4* B  -- Scaffold
class B extends StatelessWidget {
  const B({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //@+others
          //@+node:swot.20221021173128.1: *5* AppBar
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
//@+node:swot.20221021172558.1: *4* DemoB
//@@language dart
//@@tabwidth -2
class DemoB extends StatefulWidget {
  const DemoB({super.key});

  @override
  State<DemoB> createState() => _DemoBState();
}

class _DemoBState extends State<DemoB> {
  //@+others
  //@+node:swot.20221021172558.14: *5* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221021172558.15: *6* SingleChildScrollView
      SingleChildScrollView(
        child:
        //@+others
        //@+node:swot.20221021172558.16: *7* Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //@+others
            //@+node:swot.20221021173506.1: *8* show BackdropFilterExample
            BackdropFilterExample(),
            //@+node:swot.20221021172558.23: *8* Divider
            Divider(),
            //@+node:swot.20221021181118.1: *8* show BannerExample
            BannerExample(),
            //@+node:swot.20221021182257.1: *8* Divider
            Divider(),
            //@+node:swot.20221021181700.1: *8* show BaselineExample
            BaselineExample(),
            //@+node:swot.20221022085516.1: *8* Divider
            Divider(),
            //@+node:swot.20221022085519.1: *8* show BlockSemanticsExample
            BlockSemanticsExample(),
            //@+node:swot.20221022101126.1: *8* Divider
            Divider(),
            //@+node:swot.20221022101129.1: *8* show BottomNavigationBarExample
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


            //@+node:swot.20221022105626.1: *8* Divider
            Divider(),
            //@+node:swot.20221022094818.1: *8* show BottomSheetExample
            BottomSheetExample(),
            //@+node:swot.20221022111102.1: *8* Divider
            Divider(),
            //@+node:swot.20221022111104.1: *8* show BuilderExample
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

//@+node:swot.20221022121355.1: *4* ExampleB
//@+node:swot.20221019111317.2: *5* BackdropFilterExample
//@@language dart
//@@tabwidth -2
class BackdropFilterExample extends StatelessWidget {
  const BackdropFilterExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221019111317.3: *6* build()
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
//@+node:swot.20221021175217.2: *5* BannerExample
//@@language dart
//@@tabwidth -2
class BannerExample extends StatelessWidget {
  const BannerExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221021175217.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221021175330.1: *7* Center
      Center(
        child:
          //@+others
          //@+node:swot.20221021175401.1: *8* Container
          Container(
            margin: const EdgeInsets.all(10.0),
            child:
              //@+others
              //@+node:swot.20221021180745.1: *9* ClipRect
              ClipRect(
                child:
                  //@+others
                  //@+node:swot.20221021180828.1: *10* Banner
                  Banner(
                    message: "25% off",
                    location: BannerLocation.topEnd,
                    color: Colors.red,
                    child:
                      //@+others
                      //@+node:swot.20221021175506.1: *11* Container
                      Container(
                        color: Colors.blueGrey,
                        child:
                          //@+others
                          //@+node:swot.20221021175604.1: *12* Padding
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                            child:
                              //@+others
                              //@+node:swot.20221021175702.1: *13* Column
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  //@+others
                                  //@+node:swot.20221021175915.1: *14* Image
                                  Image.network(
                                    'https://img1.baidu.com/it/u=1855083458,281793390&fm=253&fmt=auto&app=138&f=JPEG?w=989&h=500',
                                  ),
                                  //@+node:swot.20221021180035.1: *14* SizedBox
                                  const SizedBox(height: 10),
                                  //@+node:swot.20221021180106.1: *14* Row
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
//@+node:swot.20221021181642.2: *5* BaselineExample
//@@language dart
//@@tabwidth -2
class BaselineExample extends StatelessWidget {
  const BaselineExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221021181642.3: *6* build()
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
//@+node:swot.20221022080218.2: *5* BlockSemanticsExample
//@@language dart
//@@tabwidth -2
class BlockSemanticsExample extends StatefulWidget {
  const BlockSemanticsExample({super.key});

  @override
  State<BlockSemanticsExample> createState() => _BlockSemanticsExampleState();
}

class _BlockSemanticsExampleState extends State<BlockSemanticsExample>{
  //@+others
  //@+node:swot.20221022083723.1: *6* varible
  bool isShow = false;
  //@+node:swot.20221022080218.3: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221022080218.4: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221022080218.5: *6* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221022080422.1: *7* SizedBox
      SizedBox(
        width: double.infinity,
        child:
          //@+others
          //@+node:swot.20221022083203.1: *8* SizedBox
          SizedBox(
            width: 500,
            height: 135,
            child:
            //@+others
            //@+node:swot.20221022083954.1: *9* Column
            Column(
              children: [
                //@+others
                //@+node:swot.20221022084045.1: *10* OutlinedButton
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      isShow = true;
                    });
                  },
                  child: const Text('Click'),
                ),
                //@+node:swot.20221022084513.1: *10* if (isShow)
                if (isShow)
                //@+others
                //@+node:swot.20221022091825.1: *11* BlockSemantics
                BlockSemantics(
                  blocking: isShow,  // hidden OutlinedButton?
                  child:
                  //@+others
                  //@+node:swot.20221022090937.1: *12* Card
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

//@+node:swot.20221022094100.2: *5* BottomNavigationBarExample
//@@language dart
//@@tabwidth -2
class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<BottomNavigationBarExample>{
  //@+others
  //@+node:swot.20221022094133.1: *6* varible
  int _currentIndex = 0;

  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.person),
  ];

  //@+node:swot.20221022094100.3: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221022094100.4: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221022094100.5: *6* build()
  @override
  Widget build(BuildContext context) {
    //@+others
    //@+node:swot.20221022095720.2: *7* Scaffold
    return Scaffold(
      //@+others
      //@+node:swot.20221022101748.1: *8* appBar
      appBar: AppBar(
        title: Text('NewPage'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221022095720.4: *8* body
      body: Center(
        child: body[_currentIndex],
      ),
      //@+node:swot.20221022095720.5: *8* bottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
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
        // type: BottomNavigationBarType.shifting,
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

//@+node:swot.20221022104843.2: *5* BottomSheetExample
//@@language dart
//@@tabwidth -2
class BottomSheetExample extends StatefulWidget {
  const BottomSheetExample({super.key});

  @override
  State<BottomSheetExample> createState() => _BottomSheetExampleState();
}

class _BottomSheetExampleState extends State<BottomSheetExample>{
  //@+others
  //@+node:swot.20221022104843.3: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221022104843.4: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221022104843.5: *6* build()
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

//@+node:swot.20221022110627.2: *5* BuilderExample
//@@language dart
//@@tabwidth -2
class BuilderExample extends StatelessWidget {
  const BuilderExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022110627.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return myBuilderWidget();
  }
  //@+node:swot.20221022110900.1: *6* myBuilderWidget()
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
//@+node:swot.20221022121254.1: *3* C Example
//@+node:swot.20221022121336.1: *4* C  -- Scaffold
class C extends StatelessWidget {
  const C({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //@+others
          //@+node:swot.20221022121336.2: *5* AppBar
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
//@+node:swot.20221022121559.1: *4* DemoC
//@@language dart
//@@tabwidth -2
class DemoC extends StatefulWidget {
  const DemoC({super.key});

  @override
  State<DemoC> createState() => _DemoCState();
}

class _DemoCState extends State<DemoC> {
  //@+others
  //@+node:swot.20221022121559.2: *5* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221022121559.3: *6* SingleChildScrollView
      SingleChildScrollView(
        child:
        //@+others
        //@+node:swot.20221022121559.4: *7* Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //@+others
            //@+node:swot.20221022121559.5: *8* show CardExample
            CardExample(),
            Divider(),
            //@+node:swot.20221022123052.1: *8* show CenterExample
            CenterExample(),
            Divider(),
            //@+node:swot.20221022141621.1: *8* show CheckboxExample
            CheckboxExample(),
            Divider(),
            //@+node:swot.20221022142602.1: *8* show CheckboxListTileExample
            CheckboxListTileExample(),
            Divider(),
            //@+node:swot.20221022143204.1: *8* show ChipExample
            ChipExample(),
            Divider(),
            //@+node:swot.20221022144701.1: *8* show ChoiceChipExample
            ChoiceChipExample(),
            Divider(),
            //@+node:swot.20221022145230.1: *8* show CircleAvatarExample
            CircleAvatarExample(),
            Divider(),
            //@+node:swot.20221022153425.1: *8* show CircularProgressIndicatorExample
            CircularProgressIndicatorExample(),
            Divider(),
            //@+node:swot.20221022154220.1: *8* show ClipOvalExample
            ClipOvalExample(),
            Divider(),
            //@+node:swot.20221022162124.1: *8* show ClipPathExample
            ClipPathExample(),
            Divider(),
            //@+node:swot.20221022164554.1: *8* show ClipRectExample
            ClipRectExample(),
            Divider(),
            //@+node:swot.20221022165721.1: *8* show ClipRRectExample
            ClipRRectExample(),
            Divider(),
            //@+node:swot.20221022170737.1: *8* show CloseButtonExample
            CloseButtonExample(),
            Divider(),
            //@+node:swot.20221022171708.1: *8* show ColoredBoxExample
            ColoredBoxExample(),
            Divider(),
            //@+node:swot.20221022173017.1: *8* show ColorFilteredExample
            ColorFilteredExample(),
            Divider(),
            //@+node:swot.20221022202111.1: *8* show ConstrainedBoxExample
            ConstrainedBoxExample(),
            Divider(),
            //@+node:swot.20221022203303.1: *8* show ContainerExample
            ContainerExample(),
            Divider(),
            //@+node:swot.20221022203824.1: *8* show ColumnExample
            ColumnExample(),
            Divider(),
            //@+node:swot.20221022210532.1: *8* show CupertinoActionSheetExample
            CupertinoActionSheetExample(),
            Divider(),
            //@+node:swot.20221022214055.1: *8* show CupertinoAppExample
            CupertinoAppExample(),
            Divider(),
            //@+node:swot.20221023164513.1: *8* show CupertinoContextMenuExample
            CupertinoContextMenuExample(),
            Divider(),
            //@+node:swot.20221031083344.1: *8* show CupertinoSlidingSegmentedControlExample
            CupertinoSlidingSegmentedControlExample(),
            Divider(),
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

//@+node:swot.20221022121728.1: *4* ExampleC
//@+node:swot.20221022121755.2: *5* CardExample
//@@language dart
//@@tabwidth -2
class CardExample extends StatelessWidget {
  const CardExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022121755.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      //@+others
      //@+node:swot.20221022122022.1: *7* Card
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
//@+node:swot.20221022122655.2: *5* CenterExample
//@@language dart
//@@tabwidth -2
class CenterExample extends StatelessWidget {
  const CenterExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022122655.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.orangeAccent,
          child:
          //@+others
          //@+node:swot.20221022122945.1: *7* Center
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
//@+node:swot.20221022141252.2: *5* CheckboxExample
//@@language dart
//@@tabwidth -2
class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample>{
  //@+others
  //@+node:swot.20221022141315.1: *6* varible
  bool? isChecked = false;
  //@+node:swot.20221022141252.3: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221022141252.4: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221022141252.5: *6* build()
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

//@+node:swot.20221022141946.2: *5* CheckboxListTileExample
//@@language dart
//@@tabwidth -2
class CheckboxListTileExample extends StatefulWidget {
  const CheckboxListTileExample({super.key});

  @override
  State<CheckboxListTileExample> createState() => _CheckboxListTileExampleState();
}

class _CheckboxListTileExampleState extends State<CheckboxListTileExample>{
  //@+others
  //@+node:swot.20221022142005.1: *6* varible
  bool? _isChecked = false;
  //@+node:swot.20221022141946.3: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221022141946.4: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221022141946.5: *6* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      //@+others
      //@+node:swot.20221022142124.1: *7* CheckboxListTile
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

//@+node:swot.20221022142919.2: *5* ChipExample
//@@language dart
//@@tabwidth -2
class ChipExample extends StatelessWidget {
  const ChipExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022142919.3: *6* build()
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
//@+node:swot.20221022144339.2: *5* ChoiceChipExample
//@@language dart
//@@tabwidth -2
class ChoiceChipExample extends StatefulWidget {
  const ChoiceChipExample({super.key});

  @override
  State<ChoiceChipExample> createState() => _ChoiceChipExampleState();
}

class _ChoiceChipExampleState extends State<ChoiceChipExample>{
  //@+others
  //@+node:swot.20221022144356.1: *6* varible
  bool isSelected = false;
  //@+node:swot.20221022144339.3: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221022144339.4: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221022144339.5: *6* build()
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

//@+node:swot.20221022145018.2: *5* CircleAvatarExample
//@@language dart
//@@tabwidth -2
class CircleAvatarExample extends StatelessWidget {
  const CircleAvatarExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022145018.3: *6* build()
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
//@+node:swot.20221022153237.2: *5* CircularProgressIndicatorExample
//@@language dart
//@@tabwidth -2
class CircularProgressIndicatorExample extends StatefulWidget {
  const CircularProgressIndicatorExample({super.key});

  @override
  State<CircularProgressIndicatorExample> createState() => _CircularProgressIndicatorExampleState();
}

class _CircularProgressIndicatorExampleState extends State<CircularProgressIndicatorExample>{
  //@+others
  //@+node:swot.20221022153237.3: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221022153237.4: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221022153237.5: *6* build()
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

//@+node:swot.20221022153848.2: *5* ClipOvalExample
//@@language dart
//@@tabwidth -2
class ClipOvalExample extends StatelessWidget {
  const ClipOvalExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022153848.3: *6* build()
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
//@+node:swot.20221022154849.1: *5* CustomClip
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
//@+node:swot.20221022161946.2: *5* ClipPathExample
//@@language dart
//@@tabwidth -2
class ClipPathExample extends StatelessWidget {
  const ClipPathExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022161946.3: *6* build()
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
//@+node:swot.20221022162343.1: *5* MyClipper1
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
//@+node:swot.20221022163926.2: *5* ClipRectExample
//@@language dart
//@@tabwidth -2
class ClipRectExample extends StatelessWidget {
  const ClipRectExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022163926.3: *6* build()
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
//@+node:swot.20221022164337.1: *5* MyClipper2
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
//@+node:swot.20221022165324.2: *5* ClipRRectExample
//@@language dart
//@@tabwidth -2
class ClipRRectExample extends StatefulWidget {
  const ClipRRectExample({super.key});

  @override
  State<ClipRRectExample> createState() => _ClipRRectExampleState();
}

class _ClipRRectExampleState extends State<ClipRRectExample>{
  //@+others
  //@+node:swot.20221022165324.3: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221022165324.4: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221022165324.5: *6* build()
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

//@+node:swot.20221022170557.2: *5* CloseButtonExample
//@@language dart
//@@tabwidth -2
class CloseButtonExample extends StatelessWidget {
  const CloseButtonExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022170557.3: *6* build()
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
//@+node:swot.20221022171523.2: *5* ColoredBoxExample
//@@language dart
//@@tabwidth -2
class ColoredBoxExample extends StatelessWidget {
  const ColoredBoxExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022171523.3: *6* build()
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
//@+node:swot.20221022172641.2: *5* ColorFilteredExample
//@@language dart
//@@tabwidth -2
class ColorFilteredExample extends StatelessWidget {
  const ColorFilteredExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022172641.3: *6* build()
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
//@+node:swot.20221022201619.2: *5* ConstrainedBoxExample
//@@language dart
//@@tabwidth -2
class ConstrainedBoxExample extends StatelessWidget {
  const ConstrainedBoxExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022201619.3: *6* build()
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
//@+node:swot.20221022202825.2: *5* ContainerExample
//@@language dart
//@@tabwidth -2
class ContainerExample extends StatelessWidget {
  const ContainerExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022202825.3: *6* build()
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
//@+node:swot.20221022203601.2: *5* ColumnExample
//@@language dart
//@@tabwidth -2
class ColumnExample extends StatelessWidget {
  const ColumnExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022203601.3: *6* build()
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
//@+node:swot.20221022210338.2: *5* CupertinoActionSheetExample
//@@language dart
//@@tabwidth -2
class CupertinoActionSheetExample extends StatefulWidget {
  const CupertinoActionSheetExample({super.key});

  @override
  State<CupertinoActionSheetExample> createState() => _CupertinoActionSheetExampleState();
}

class _CupertinoActionSheetExampleState extends State<CupertinoActionSheetExample>{
  //@+others
  //@+node:swot.20221022210338.3: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221022210338.4: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221022210338.5: *6* build()
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

//@+node:swot.20221022213243.2: *5* CupertinoAppExample
//@@language dart
//@@tabwidth -2
class CupertinoAppExample extends StatelessWidget {
  const CupertinoAppExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022213243.3: *6* build()
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
//@+node:swot.20221022213726.2: *5* MyCupertinoApp
//@@language dart
//@@tabwidth -2
class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221022213726.3: *6* build()
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
//@+node:swot.20221023163418.2: *5* CupertinoContextMenuExample
//@@language dart
//@@tabwidth -2
class CupertinoContextMenuExample extends StatelessWidget {
  const CupertinoContextMenuExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221023163418.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 100,
        height: 100,
        child:
        //@+others
        //@+node:swot.20221023163626.1: *7* CupertinoContextMenu
        CupertinoContextMenu(
          child: Image.network(
            'https://img0.baidu.com/it/u=574351580,3649561547&fm=253&fmt=auto&app=138&f=JPEG?w=640&h=320',
          ),
          actions: <Widget>[
            CupertinoContextMenuAction(
              child: const Text('Action one'),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            CupertinoContextMenuAction(
              child: const Text('Action two'),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
        //@-others
      ),
    );
  }
  //@-others
}
//@+node:swot.20221031082929.2: *5* CupertinoSlidingSegmentedControlExample
//@@language dart
//@@tabwidth -2
class CupertinoSlidingSegmentedControlExample extends StatefulWidget {
  const CupertinoSlidingSegmentedControlExample({super.key});

  @override
  State<CupertinoSlidingSegmentedControlExample> createState() => _CupertinoSlidingSegmentedControlExampleState();
}

class _CupertinoSlidingSegmentedControlExampleState extends State<CupertinoSlidingSegmentedControlExample>{
  //@+others
  //@+node:swot.20221031083017.1: *6* value
  int? _sliding = 0;
  //@+node:swot.20221031082929.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221031083051.1: *7* CupertinoSlidingSegmentedControl
    CupertinoSlidingSegmentedControl(
      children: {
        0: Text('Text 0'),
        1: Text('Text 1'),
        2: Text('Text 2'),
      },
      groupValue: _sliding,
      onValueChanged: (int? newValue) {
        setState(() {
          _sliding = newValue;
        });
      },
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221024065815.1: *3* D Example
//@+node:swot.20221024065902.1: *4* D  -- Scaffold
class D extends StatelessWidget {
  const D({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //@+others
          //@+node:swot.20221024065902.2: *5* AppBar
          appBar: AppBar(
            title: const Text('Demo D'),
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
          body: DemoD(),
      ),
    );
  }
}
//@+node:swot.20221024070012.1: *4* DemoD
//@@language dart
//@@tabwidth -2
class DemoD extends StatefulWidget {
  const DemoD({super.key});

  @override
  State<DemoD> createState() => _DemoDState();
}

class _DemoDState extends State<DemoD> {
  //@+others
  //@+node:swot.20221024070127.1: *5* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221024070127.2: *6* SingleChildScrollView
      SingleChildScrollView(
        child:
        //@+others
        //@+node:swot.20221024070127.3: *7* Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //@+others
            //@+node:swot.20221024112602.1: *8* show DismissibleExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              child: const Text('DismissibleExample'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DismissibleExample(),
                  ),
                );
              },
            ),

            Divider(),
            //@+node:swot.20221025075357.1: *8* show DraggableScrollableExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              child: const Text('DraggableScrollableExample'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DraggableScrollableExample(),
                  ),
                );
              },
            ),

            Divider(),
            //@+node:swot.20221025091113.1: *8* show DragTargetExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              child: const Text('DragTargetExample'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DragTargetExample(),
                  ),
                );
              },
            ),

            Divider(),
            //@+node:swot.20221025095859.1: *8* show DrawerExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              child: const Text('DrawerExample'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DrawerExample(),
                  ),
                );
              },
            ),

            Divider(),
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

//@+node:swot.20221024070225.1: *4* ExampleD
//@+node:swot.20221024112614.2: *5* DismissibleExample
//@@language dart
//@@tabwidth -2
class DismissibleExample extends StatefulWidget {
  const DismissibleExample({super.key});

  @override
  State<DismissibleExample> createState() => _DismissibleExampleState();
}

class _DismissibleExampleState extends State<DismissibleExample>{
  //@+others
  //@+node:swot.20221024112703.1: *6* varible
  List<int> items = List<int>.generate(50, (int index) => index);
  //@+node:swot.20221024112614.3: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221024112614.4: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221024112614.5: *6* build()
  @override
  Widget build(BuildContext context) {
    //@+others
    //@+node:swot.20221024113603.2: *7* Scaffold
    return Scaffold(
      //@+others
      //@+node:swot.20221024113603.3: *8* appBar
      appBar: AppBar(
        title: Text('DismissibleExample'),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221024113603.4: *8* body
      body:
      //@+others
      //@+node:swot.20221024113627.1: *9* ListView
      ListView.builder(
        itemCount: items.length,
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemBuilder: (BuildContext contex, int index) {
          return Dismissible(
            background: Container(
              color: Colors.red,
              child: const Icon(Icons.delete),
            ),
            key: ValueKey<int>(items[index]),
            onDismissed: (DismissDirection direction) {
              setState(() {
                items.removeAt(index);
              });
            },
            child: ListTile(
              title: Text('Item ${items[index]}'),
            ),
          );
        },
      ),
      //@-others
      //@-others
    );

    //@-others
  }
  //@-others
}

//@+node:swot.20221025074739.2: *5* DraggableScrollableExample
//@@language dart
//@@tabwidth -2
class DraggableScrollableExample extends StatelessWidget {
  const DraggableScrollableExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221025074739.3: *6* build()
  @override
  Widget build(BuildContext context) {
    //@+others
    //@+node:swot.20221025081258.2: *7* Scaffold
    return Scaffold(
      //@+others
      //@+node:swot.20221025081258.3: *8* appBar
      appBar: AppBar(
        title: Text('DraggableScrollableSheet'),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221025081258.4: *8* body
      body:
      //@+others
      //@+node:swot.20221025081316.1: *9* DraggableScrollableSheet
      DraggableScrollableSheet(
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            color: Colors.orangeAccent,
            child: ListView.builder(
              controller: scrollController,
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
            ),
          );
        },
      ),
      //@-others
      //@-others
    );

    //@-others
  }
  //@-others
}
//@+node:swot.20221025081939.2: *5* DragTargetExample
//@@language dart
//@@tabwidth -2
class DragTargetExample extends StatefulWidget {
  const DragTargetExample({super.key});

  @override
  State<DragTargetExample> createState() => _DragTargetExampleState();
}

class _DragTargetExampleState extends State<DragTargetExample>{
  //@+others
  //@+node:swot.20221025081939.3: *6* varible
  Color caughtColor = Colors.red;
  //@+node:swot.20221025081939.4: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221025081939.5: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221025081939.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221025091431.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221025091431.3: *8* appBar
      appBar: AppBar(
        title: Text('DragTargetExample'),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221025091431.4: *8* body
      body:
      //@+others
      //@+node:swot.20221025083125.1: *9* SizedBox
      SizedBox(
        width: double.infinity,
        child:
          //@+others
          //@+node:swot.20221025083519.1: *10* Column
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            //@+others
            //@+node:swot.20221025083732.1: *11* Draggable
            Draggable(
              data: Colors.orangeAccent,
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.orangeAccent,
                child: const Center(
                  child: Text('Box'),
                ),
              ),
              onDraggableCanceled: (velocity, offset) {},
              feedback: Container(
                width: 150.0,
                height: 150.0,
                color: Colors.orangeAccent.withOpacity(0.5),
                child: const Center(
                  child: Text(
                    'Box...',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
            //@+node:swot.20221025084843.1: *11* DragTarget
            DragTarget(
              onAccept: (Color color) {
                caughtColor = color;  // color is Draggable data
              },
              builder: (BuildContext context,
                        List<dynamic> accepted,
                        List<dynamic> rejected,) {
                return Container(
                  width: 200.0,
                  height: 200.0,
                  color: accepted.isEmpty ? caughtColor : Colors.grey.shade200,
                  child: const Center(
                    child: Text("Drag here"),
                  ),
                );
              }
            ),
            //@-others
            ],
          )
          //@-others
      )
      //@-others
      //@-others
    )

    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221025095334.2: *5* DrawerExample
//@@language dart
//@@tabwidth -2
class DrawerExample extends StatelessWidget {
  const DrawerExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221025095334.3: *6* build()
  @override
  Widget build(BuildContext context) {
    //@+others
    //@+node:swot.20221025095436.2: *7* Scaffold
    return Scaffold(
      //@+others
      //@+node:swot.20221025095436.3: *8* appBar
      appBar: AppBar(
        title: Text('NewPage'),
      ),
      //@+node:swot.20221025095436.4: *8* body
      body: Center(
        child: Builder(
          builder: (context) => ElevatedButton(
            onPressed: () {
              // Scaffold.of(context).openDrawer();
              Scaffold.of(context).openEndDrawer();
            },
            child: const Text('Open EndDrawer'),
          ),
        ),
      ),

      //@+node:swot.20221025095602.1: *8* endDrawer
      endDrawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {}
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {}
            ),
          ],
        ),
      ),
      //@-others
    );

    //@-others
  }
  //@-others
}
//@+node:swot.20221025205925.1: *3* E Example
//@+node:swot.20221025205946.1: *4* E  -- Scaffold
class E extends StatelessWidget {
  const E({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //@+others
          //@+node:swot.20221025205946.2: *5* AppBar
          appBar: AppBar(
            title: const Text('Demo E'),
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
          body: DemoE(),
      ),
    );
  }
}
//@+node:swot.20221025211051.1: *4* DemoE
//@@language dart
//@@tabwidth -2
class DemoE extends StatefulWidget {
  const DemoE({super.key});

  @override
  State<DemoE> createState() => _DemoEState();
}

class _DemoEState extends State<DemoE> {
  //@+others
  //@+node:swot.20221025211051.2: *5* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221025211051.3: *6* SingleChildScrollView
      SingleChildScrollView(
        child:
        //@+others
        //@+node:swot.20221025211051.4: *7* Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //@+others
            //@+node:swot.20221026194030.1: *8* show ExpandedExample
            ExpandedExample(),
            Divider(),
            //@+node:swot.20221031073947.1: *8* show ExpansionTileExample
            ExpansionTileExample(),
            Divider(),
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

//@+node:swot.20221025211157.1: *4* ExampleE
//@+node:swot.20221026073602.2: *5* ExpandedExample -- height in Expanded takes no effect
//@@language dart
//@@tabwidth -2
class ExpandedExample extends StatelessWidget {
  const ExpandedExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221026073602.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: double.infinity,
      height: 100.0,
      child: Column(
        children: [
          //@+others
          //@+node:swot.20221026193458.1: *7* Expanded
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              width: double.infinity,
              height: 200,
              child: const Center(child: Text('Expanded 1')),
            ),
          ),
          //@+node:swot.20221026193703.1: *7* Expanded
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.orange,
              width: double.infinity,
              height: 200,
              child: const Center(child: Text('Expanded 2')),
            ),
          ),
          //@+node:swot.20221026193706.1: *7* Expanded
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.red,
              width: double.infinity,
              height: 200,
              child: const Center(child: Text('Expanded 3')),
            ),
          ),
          //@-others
        ],
      ),
    );
  }
  //@-others
}
//@+node:swot.20221031070602.2: *5* ExpansionTileExample
//@@language dart
//@@tabwidth -2
class ExpansionTileExample extends StatefulWidget {
  const ExpansionTileExample({super.key});

  @override
  State<ExpansionTileExample> createState() => _ExpansionTileExampleState();
}

class _ExpansionTileExampleState extends State<ExpansionTileExample>{
  //@+others
  //@+node:swot.20221031070602.3: *6* varible
  bool _customIcon = false;
  //@+node:swot.20221031070602.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221031074359.2: *7* Column
    Column(
      children: [
      //@+others
      //@+node:swot.20221031073139.1: *8* ExpansionTile -- _customIcon
      ExpansionTile(
        title: const Text('Expansion Tile -- custom icon'),
        trailing: Icon(
          _customIcon ? Icons.arrow_drop_down_circle : Icons.arrow_drop_down,
        ),
        children: const [
          ListTile(
            title: Text('This is tile number 2'),
          ),
        ],
        onExpansionChanged: (bool expanded) {
          setState(() {
            _customIcon = expanded;
          });
        },
      ),
      //@+node:swot.20221031074310.1: *8* ExpansionTile -- basic icon
      ExpansionTile(
        title: const Text('Expansion Tile -- basic icon'),
        // trailing: Icon(
          // _customIcon ? Icons.arrow_drop_down_circle : Icons.arrow_drop_down,
        // ),
        children: const [
          ListTile(
            title: Text('This is tile number 2'),
          ),
        ],
        onExpansionChanged: (bool expanded) {
          // setState(() {
            // _customIcon = expanded;
          // });
        },
      ),
      //@+node:swot.20221031074605.1: *8* ExpansionTile -- change icon location
      ExpansionTile(
        title: const Text('Expansion Tile -- basic icon'),
        // trailing: Icon(
          // _customIcon ? Icons.arrow_drop_down_circle : Icons.arrow_drop_down,
        // ),
        children: const [
          ListTile(
            title: Text('This is tile number 2'),
          ),
        ],
        onExpansionChanged: (bool expanded) {
          // setState(() {
            // _customIcon = expanded;
          // });
        },
        controlAffinity: ListTileControlAffinity.leading,  // icon location
      ),
      //@-others
      ],
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221026200827.1: *3* F Example
//@+node:swot.20221026200827.2: *4* F  -- Scaffold
class F extends StatelessWidget {
  const F({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    //@+others
    //@+node:swot.20221027113937.1: *5* SafeArea
    SafeArea(
      child:
      //@+others
      //@+node:swot.20221027114010.2: *6* Scaffold
      Scaffold(
        //@+others
        //@+node:swot.20221026200827.3: *7* appBar
        appBar: AppBar(
          title: const Text('Demo F'),
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
        //@+node:swot.20221027114010.4: *7* body
        body: DemoF(),
        //@+node:swot.20221027114010.6: *7* floatingActionButton
        //@@language dart
        //@@tabwidth -2
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.deepPurple.shade400,
            child: Icon(Icons.add),
        ),
        //@-others
      ),

      //@-others
    )
    //@-others
    ;
  }
}
//@+node:swot.20221026200827.4: *4* DemoF
//@@language dart
//@@tabwidth -2
class DemoF extends StatefulWidget {
  const DemoF({super.key});

  @override
  State<DemoF> createState() => _DemoFState();
}

class _DemoFState extends State<DemoF> {
  //@+others
  //@+node:swot.20221026200827.5: *5* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221026200827.6: *6* SingleChildScrollView
      SingleChildScrollView(
        child:
        //@+others
        //@+node:swot.20221026200827.7: *7* Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //@+others
            //@+node:swot.20221031063757.2: *8* ElevatedButton -- show FittedBoxExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FittedBoxExample(),
                  ),
                );
              },
              child: const Text('FittedBoxExample'),
            ),

            //@+node:swot.20221027112321.2: *8* show FlexbleExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              child: const Text('FlexibleExample'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FlexibleExample(),
                  ),
                );
              },
            ),

            //@+node:swot.20221027121244.1: *8* show FormExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              child: const Text('FormExample'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormExample(),
                  ),
                );
              },
            ),

            //@+node:swot.20221027203755.1: *8* show FadeInImageExample
            FadeInImageExample(),
            //@+node:swot.20221027213559.2: *8* show FractionallySizedBoxExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              child: const Text('FractionallySizedBox'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FractionallySizedBoxExample(),
                  ),
                );
              },
            ),

            //@+node:swot.20221028065632.1: *8* show FutureBuilderExample
            FutureBuilderExample(),
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

//@+node:swot.20221026200827.9: *4* ExampleF
//@+node:swot.20221030234221.2: *5* FittedBoxExample
//@@language dart
//@@tabwidth -2
class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221030234221.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221031064454.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221031064454.3: *8* appBar
      appBar: AppBar(
        title: Text('FittedBoxExample'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221031064454.4: *8* body
      body:
      //@+others
      //@+node:swot.20221030234303.2: *9* Center
      Center(
        child:
        //@+others
        //@+node:swot.20221031063239.2: *10* Container
        Container(
          // height: 25,
          // width: 100,
          // width: 300,
          width: double.infinity,
          color: Colors.orangeAccent,
          child:
          //@+others
          //@+node:swot.20221031070048.1: *11* FittedBox
          const FittedBox(
            child: Text(
              'This is a pretty long text',
              style: TextStyle(color: Colors.black),
            )
          )
          //@-others
        )
        //@-others
      )
      //@-others
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}
//@+node:swot.20221027111458.2: *5* FlexibleExample
//@@language dart
//@@tabwidth -2
class FlexibleExample extends StatelessWidget {
  const FlexibleExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221027111458.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221027112522.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221027112522.3: *8* appBar
      appBar: AppBar(
        title: Text('FlexibleExample'),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221027112522.4: *8* body
      body:
      //@+others
      //@+node:swot.20221027111807.1: *9* Column
      Column(
        children: [
          //@+others
          //@+node:swot.20221027111848.1: *10* Flexible -- FlexFit.loose is default
          Flexible(
            flex: 5,
            child: Container(
              height: 50,
              color: Colors.yellow,
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(
              height: 100,
              color: Colors.orange,
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              height: 200,
              color: Colors.red,
            ),
          ),
          //@-others
        ],
      )
      //@-others
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}
//@+node:swot.20221027115627.2: *5* FormExample
//@@language dart
//@@tabwidth -2
class FormExample extends StatelessWidget {
  FormExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221027120023.1: *6* value
  final _formKey = GlobalKey<FormState>();
  //@+node:swot.20221027115627.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221027115750.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221027115750.3: *8* appBar
      appBar: AppBar(
        title: Text('FormExample'),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221027115750.4: *8* body
      body:
      //@+others
      //@+node:swot.20221027115911.1: *9* Padding
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        //@+others
        //@+node:swot.20221027115952.1: *10* Form
        Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter something';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Great!'),
                      ),
                    );
                  }
                },
                child: const Text('Validate'),
              ),
            ],
          )
        ),
        //@-others
      ),
      //@-others
      //@-others
    )

    //@-others
    ;
  }
  //@-others
}
//@+node:swot.20221027203431.2: *5* FadeInImageExample
//@@language dart
//@@tabwidth -2
class FadeInImageExample extends StatelessWidget {
  const FadeInImageExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221027203431.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeInImage.assetNetwork(
        width: 100,
        height: 100,
        placeholder: 'assets/loading.gif',
        image: 'https://img2.baidu.com/it/u=1559210821,716203173&fm=253&fmt=auto&app=120&f=JPEG?w=200&h=200',
      ),
    );
  }
  //@-others
}
//@+node:swot.20221027212222.2: *5* FractionallySizedBoxExample
//@@language dart
//@@tabwidth -2
class FractionallySizedBoxExample extends StatelessWidget {
  const FractionallySizedBoxExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221027212222.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221027212407.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221027212407.3: *8* appBar
      appBar: AppBar(
        title: Text('FractionallySizedBox'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221027212407.4: *8* body 
      body:
      //@+others
      //@+node:swot.20221027212916.2: *9* Center
      Center(
        child:
        //@+others
        //@+node:swot.20221027212959.1: *10* FractionallySizedBox
        FractionallySizedBox(
          widthFactor: 0.5,
          heightFactor: 0.5,
          child: Container(
            color: Colors.amberAccent,
          ),
        ),
        //@-others
      )
      //@-others
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}
//@+node:swot.20221028064229.2: *5* FutureBuilderExample
//@@language dart
//@@tabwidth -2
class FutureBuilderExample extends StatefulWidget {
  const FutureBuilderExample({super.key});

  @override
  State<FutureBuilderExample> createState() => _FutureBuilderExampleState();
}

class _FutureBuilderExampleState extends State<FutureBuilderExample>{
  //@+others
  //@+node:swot.20221028064229.3: *6* varible
  Future<String> getData() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    // throw 'Error';
    return 'Super!';
  }
  //@+node:swot.20221028064229.4: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221028064229.5: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221028064229.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221028064815.1: *7* FutureBuilder
    FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        } else {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(snapshot.data.toString()),
              ElevatedButton(
                onPressed: () { setState(() {}); },
                child: const Text('Refresh'),
              ),
            ],
          );
        }
      }
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221028070508.1: *3* G Example
//@+node:swot.20221028070508.2: *4* G  -- Scaffold
class G extends StatelessWidget {
  const G({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    //@+others
    //@+node:swot.20221028070508.3: *5* SafeArea
    SafeArea(
      child:
      //@+others
      //@+node:swot.20221028070508.4: *6* Scaffold
      Scaffold(
        //@+others
        //@+node:swot.20221028070508.5: *7* appBar
        appBar: AppBar(
          title: const Text('Demo G'),
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
        //@+node:swot.20221028070508.6: *7* body
        body: DemoG(),
        //@+node:swot.20221028070508.7: *7* floatingActionButton
        //@@language dart
        //@@tabwidth -2
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.deepPurple.shade400,
            child: Icon(Icons.add),
        ),
        //@-others
      ),

      //@-others
    )
    //@-others
    ;
  }
}
//@+node:swot.20221028070508.8: *4* DemoG
//@@language dart
//@@tabwidth -2
class DemoG extends StatefulWidget {
  const DemoG({super.key});

  @override
  State<DemoG> createState() => _DemoGState();
}

class _DemoGState extends State<DemoG> {
  //@+others
  //@+node:swot.20221028070508.9: *5* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221028070508.10: *6* SingleChildScrollView
      SingleChildScrollView(
        child:
        //@+others
        //@+node:swot.20221028070508.11: *7* Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //@+others
            //@+node:swot.20221028090546.1: *8* SizedBox
            SizedBox(height: 5.00),
            //@+node:swot.20221028085926.1: *8* show GestureDetectorExample
            GestureDetectorExample(),
            //@+node:swot.20221028095636.2: *8* show GridViewExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              child: const Text('GridView'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GridViewExample(),
                  ),
                );
              },
            ),

            //@+node:swot.20221028131344.2: *8* show GridTileExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              child: const Text('GridTileExample'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GridTileExample(),
                  ),
                );
              },
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

//@+node:swot.20221028070508.17: *4* ExampleG
//@+node:swot.20221028084729.2: *5* GestureDetectorExample
//@@language dart
//@@tabwidth -2
class GestureDetectorExample extends StatefulWidget {
  const GestureDetectorExample({super.key});

  @override
  State<GestureDetectorExample> createState() => _GestureDetectorExampleState();
}

class _GestureDetectorExampleState extends State<GestureDetectorExample>{
  //@+others
  //@+node:swot.20221028084729.3: *6* varible
  int _counter = 0;
  //@+node:swot.20221028084729.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() { _counter += 1; });
        },
        child: Container(
          height: 50,
          color: Colors.orangeAccent,
          child: Row(
            children: [
              const Text("GestureDetector"),
              Text(
                _counter.toString(),
                style: const TextStyle(fontSize: 40),
              ),
            ]
          ),
        ),
      ),
    );
  }
  //@-others
}

//@+node:swot.20221028093414.2: *5* GridViewExample
//@@language dart
//@@tabwidth -2
class GridViewExample extends StatelessWidget {
  const GridViewExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221028093414.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221028122703.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221028122703.3: *8* appBar
      appBar: AppBar(
        title: Text('GridView'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221028122703.4: *8* body
      body:
      //@+others
      //@+node:swot.20221028093753.1: *9* GridView
      GridView.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (_, index) =>
        //@+others
        //@+node:swot.20221029070417.1: *10* GridTile -- use GridTileBar
        GridTile(
          header: const GridTileBar(
            backgroundColor: Colors.black45,
            leading: Icon(Icons.person),
            title: Text('Flutter App'),
            trailing: Icon(Icons.menu),
          ),
          child: Image.network(
            'https://img2.baidu.com/it/u=1559210821,716203173&fm=253&fmt=auto&app=120&f=JPEG?w=200&h=200',
            fit: BoxFit.cover,
          ),
          footer: const GridTileBar(
            backgroundColor: Colors.black45,
            leading: Icon(Icons.favorite),
          ),
        ),
        //@-others
      )

      //@+doc
      // You can use this also, not use itemBuilder
      // GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      //   children: <Widget>[],
      // )
      //@-others
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}
//@+node:swot.20221028130417.2: *5* GridTileExample
//@@language dart
//@@tabwidth -2
class GridTileExample extends StatelessWidget {
  const GridTileExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221028130417.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221028131715.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221028131715.3: *8* appBar
      appBar: AppBar(
        title: Text('GridTile'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221028131715.4: *8* body
      body:
      //@+others
      //@+node:swot.20221028130528.1: *9* Center
      Center(
        child:
        //@+others
        //@+node:swot.20221029070735.1: *10* SizedBox
        SizedBox(
          height: 400,
          width: 300,
          child:
          //@+others
          //@+node:swot.20221029070636.1: *11* GridTile  -- use Container
          GridTile(
            header: Container(
              height: 40,
              color: Colors.black38,
              child: const Center(
                child: Text(
                  'Header',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            child: Image.network(
              'https://img2.baidu.com/it/u=1559210821,716203173&fm=253&fmt=auto&app=120&f=JPEG?w=200&h=200',
              fit: BoxFit.cover,
            ),
            footer: Container(
              height: 40,
              color: Colors.black38,
              child: const Center(
                child: Text(
                  'Footer',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          //@-others
        ),
        //@-others
      ),
      //@-others
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}
//@+node:swot.20221029131000.1: ** Example H-N
//@+node:swot.20221023124355.1: *3* H Example
//@+node:swot.20221023124355.2: *4* H  -- Scaffold
class H extends StatelessWidget {
  const H({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //@+others
          //@+node:swot.20221023124355.3: *5* AppBar
          appBar: AppBar(
            title: const Text('Demo H'),
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
          body: DemoH(),
      ),
    );
  }
}
//@+node:swot.20221023124355.4: *4* DemoH
//@@language dart
//@@tabwidth -2
class DemoH extends StatefulWidget {
  const DemoH({super.key});

  @override
  State<DemoH> createState() => _DemoHState();
}

class _DemoHState extends State<DemoH> {
  //@+others
  //@+node:swot.20221023124355.5: *5* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221023124355.6: *6* SingleChildScrollView
      SingleChildScrollView(
        child:
        //@+others
        //@+node:swot.20221023124355.7: *7* Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //@+others
            //@+node:swot.20221029090411.1: *8* show HeroExample
            ListTile(
              title: const Text('Hero click'),
              trailing: const Hero(
                tag: 'tag-1',
                child: Icon(Icons.person),
              ),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HeroExample(),
                ),
              ),
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

//@+node:swot.20221023124644.1: *4* ExampleH
//@+node:swot.20221029092751.2: *5* HeroExample
//@@language dart
//@@tabwidth -2
class HeroExample extends StatelessWidget {
  const HeroExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221029092751.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029094712.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221029094712.3: *8* appBar
      appBar: AppBar(
        title: Text('Hero'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221029094712.4: *8* body
      body:
      //@+others
      //@+node:swot.20221029092810.1: *9* Center
      Center(
        child:
        //@+others
        //@+node:swot.20221029092914.1: *10* Hero
        Hero(
          tag: 'tag-1',
          child: Container(
            color: Colors.orangeAccent,
            width: 100.0,
            height: 100.0,
          ),
        ),
        //@-others
      )
      //@-others
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}
//@+node:swot.20221029081714.1: *3* I Example
//@+node:swot.20221029081714.2: *4* I  -- Scaffold
class I extends StatelessWidget {
  const I({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //@+others
          //@+node:swot.20221029081714.3: *5* AppBar
          appBar: AppBar(
            title: const Text('Demo I'),
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
          body: DemoI(),
      ),
    );
  }
}
//@+node:swot.20221029081714.4: *4* DemoI
//@@language dart
//@@tabwidth -2
class DemoI extends StatefulWidget {
  const DemoI({super.key});

  @override
  State<DemoI> createState() => _DemoIState();
}

class _DemoIState extends State<DemoI> {
  //@+others
  //@+node:swot.20221029081714.5: *5* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221029081714.6: *6* SingleChildScrollView
      SingleChildScrollView(
        child:
        //@+others
        //@+node:swot.20221029081714.7: *7* Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //@+others
            //@+node:swot.20221029081714.8: *8* ElevatedButton -- show InteractiveViewerExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              child: const Text('InteractiveViewerExample'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InteractiveViewerExample(),
                  ),
                );
              },
            ),
            //@+node:swot.20221029121446.1: *8* show IgnorePointerExample
            IgnorePointerExample(),
            //@+node:swot.20221029125017.1: *8* ElevatedButton -- show IndexedStackExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              child: const Text('IndexedStackExample'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IndexedStackExample(),
                  ),
                );
              },
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

//@+node:swot.20221029081714.13: *4* ExampleI
//@+node:swot.20221029081714.14: *5* InteractiveViewerExample
//@@language dart
//@@tabwidth -2
class InteractiveViewerExample extends StatefulWidget {
  const InteractiveViewerExample({super.key});

  @override
  State<InteractiveViewerExample> createState() => _InteractiveViewerExampleState();
}

class _InteractiveViewerExampleState extends State<InteractiveViewerExample>{
  //@+others
  //@+node:swot.20221029081714.15: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221029081714.16: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221029081714.17: *6* build()
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tool'),
      ),
      backgroundColor: Colors.orangeAccent,
      body: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(
          double.infinity,
        ),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('SwotApp'),
          ),
          body: Text('ALT + mouse zoom'),
        ),
      ),
    );
  }
  //@-others
}

//@+node:swot.20221029115307.2: *5* IgnorePointerExample
//@@language dart
//@@tabwidth -2
class IgnorePointerExample extends StatefulWidget {
  const IgnorePointerExample({super.key});

  @override
  State<IgnorePointerExample> createState() => _IgnorePointerExampleState();
}

class _IgnorePointerExampleState extends State<IgnorePointerExample>{
  //@+others
  //@+node:swot.20221029115307.3: *6* varible
  bool ignore = false;
  //@+node:swot.20221029115307.4: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221029115307.5: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221029115307.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029115522.1: *7* Row
    Row(
      children: [
      //@+others
      //@+node:swot.20221029115652.2: *8* ElevatedButton
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ignore ? Colors.red : Colors.green,
        ),
        onPressed: () {
          setState(() { ignore = !ignore; });
        },
        child: Text(
          ignore ? 'Blocked IgnorePointer' : 'Can press IgnorePointer',
        ),
      ),
      //@+node:swot.20221029120401.1: *8* IgnorePointer
      IgnorePointer(
        ignoring: ignore,
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('IgnorePointer'),
        ),
      ),
      //@-others
      ],
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221029122755.2: *5* IndexedStackExample
//@@language dart
//@@tabwidth -2
class IndexedStackExample extends StatefulWidget {
  const IndexedStackExample({super.key});

  @override
  State<IndexedStackExample> createState() => _IndexedStackExampleState();
}

class _IndexedStackExampleState extends State<IndexedStackExample>{
  //@+others
  //@+node:swot.20221029122755.3: *6* varible
  int index = 0;
  //@+node:swot.20221029122755.4: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221029122755.5: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221029122755.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029125202.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221029125202.3: *8* appBar
      appBar: AppBar(
        title: Text('IndexedStack'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221029125202.4: *8* body
      body:
      //@+others
      //@+node:swot.20221029123730.2: *9* Padding
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        //@+others
        //@+node:swot.20221029123925.2: *10* Column
        Column(
          children: [
          //@+others
          //@+node:swot.20221029124213.2: *11* Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            //@+others
            //@+node:swot.20221029124242.2: *12* ElevatedButton 0
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
                setState(() { index = 0; });
              },
              child: const Text('0'),
            ),

            //@+node:swot.20221029124327.1: *12* ElevatedButton 1
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
                setState(() { index = 1; });
              },
              child: const Text('1'),
            ),

            //@+node:swot.20221029124328.1: *12* ElevatedButton 2
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
                setState(() { index = 2; });
              },
              child: const Text('2'),
            ),

            //@-others
            ],
          ),
          //@+node:swot.20221029124503.1: *11* IndexedStack
          IndexedStack(
            index: index,
            children: [
              Center(
                child: Image.network('https://img1.baidu.com/it/u=2346614730,4149113350&fm=253&fmt=auto&app=138&f=JPEG?w=300&h=231'),
              ),
              Center(
                child: Image.network('https://img0.baidu.com/it/u=3654949633,659950172&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=612'),
              ),
              Center(
                child: Image.network('https://img0.baidu.com/it/u=2809418066,998395186&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=622'),
              ),
            ],
          ),
          //@-others
          ],
        ),
        //@-others
      )
      //@-others
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221023105117.1: *3* L Example
//@+node:swot.20221023105152.1: *4* L  -- Scaffold
class L extends StatelessWidget {
  const L({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //@+others
          //@+node:swot.20221023105152.2: *5* AppBar
          appBar: AppBar(
            title: const Text('Demo L'),
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
          body: DemoL(),
      ),
    );
  }
}
//@+node:swot.20221023105258.1: *4* DemoL
//@@language dart
//@@tabwidth -2
class DemoL extends StatefulWidget {
  const DemoL({super.key});

  @override
  State<DemoL> createState() => _DemoLState();
}

class _DemoLState extends State<DemoL> {
  //@+others
  //@+node:swot.20221023105258.2: *5* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221023105258.3: *6* SingleChildScrollView
      SingleChildScrollView(
        child:
        //@+others
        //@+node:swot.20221023105258.4: *7* Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //@+others
            //@+node:swot.20221030230436.2: *8* ElevatedButton -- show LayoutBuilderExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LayoutBuilderExample(),
                  ),
                );
              },
              child: const Text('LayoutBuilderExample'),
            ),

            //@+node:swot.20221023122724.2: *8* ElevatedButton -- show LongPressDraggableExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              child: const Text('LongPressDraggableExample'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LongPressDraggableExample(),
                  ),
                );
              },
            ),
            //@+node:swot.20221029132948.2: *8* ElevatedButton -- show ListViewExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ListViewExample()));
              },
              child: const Text('ListView'),
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

//@+node:swot.20221023105408.1: *4* ExampleL
//@+node:swot.20221030225430.2: *5* LayoutBuilderExample
//@@language dart
//@@tabwidth -2
class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221030225430.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221030230818.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221030230818.3: *8* appBar
      appBar: AppBar(
        title: Text('LayoutBuilderExample'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221030230818.4: *8* body
      body:
      //@+others
      //@+node:swot.20221030225455.1: *9* LayoutBuilder
      LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return Center(
              child: Image.network(
                'https://img1.baidu.com/it/u=2393225502,1254584585&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500',
              ),
            );
          } else {
            return const Center(
              child: Text('Screen under 600'),
            );
          }
        }
      )
      //@-others
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}
//@+node:swot.20221023105920.2: *5* LongPressDraggableExample
//@@language dart
//@@tabwidth -2
class LongPressDraggableExample extends StatefulWidget {
  const LongPressDraggableExample({super.key});

  @override
  State<LongPressDraggableExample> createState() => _LongPressDraggableExampleState();
}

class _LongPressDraggableExampleState extends State<LongPressDraggableExample>{
  //@+others
  //@+node:swot.20221023105947.1: *6* varible
  Offset _offset = const Offset(200, 250);
  //@+node:swot.20221023105920.3: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221023105920.4: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221023105920.5: *6* build()
  @override
  Widget build(BuildContext context) {
    //@+others
    //@+node:swot.20221023123049.2: *7* Scaffold
    return Scaffold(
      //@+others
      //@+node:swot.20221023123049.3: *8* appBar
      appBar: AppBar(
        title: Text('LongPressDraggable'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221023123049.4: *8* body
      body: Center(
        child: LayoutBuilder(
          builder: (context, constrains) {
            return Stack(
              children: [
                //@+others
                //@+node:swot.20221023110506.1: *9* Positioned
                Positioned(
                  left: _offset.dx,
                  top: _offset.dy,
                  child:
                  //@+others
                  //@+node:swot.20221023110634.1: *10* LongPressDraggable
                  LongPressDraggable(
                    feedback: Image.network(
                      'https://img2.baidu.com/it/u=935142738,1114949296&fm=253&fmt=auto&app=138&f=PNG?w=200&h=200',
                      height: 100,
                      color: Colors.orangeAccent,
                      colorBlendMode: BlendMode.colorBurn,
                    ),
                    child: Image.network(
                      'https://img2.baidu.com/it/u=935142738,1114949296&fm=253&fmt=auto&app=138&f=PNG?w=200&h=200',
                      height: 100,
                    ),
                    onDragEnd: (details) {
                      setState(() {
                        double adjustment = MediaQuery.of(context).size.height - constrains.maxHeight;
                        _offset = Offset(
                          details.offset.dx,
                          details.offset.dy - adjustment,
                        );
                      });
                    },
                  ),
                  //@-others
                ),
                //@-others
              ]
            );
          },
        ),
      ),
      //@-others
    );

    //@-others
  }
  //@-others
}

//@+node:swot.20221029130827.2: *5* ListViewExample
//@@language dart
//@@tabwidth -2
class ListViewExample extends StatelessWidget {
  const ListViewExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221029130827.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029133516.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221029133516.3: *8* appBar
      appBar: AppBar(
        title: Text('ListView'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221029133516.4: *8* body
      body:
      //@+others
      //@+node:swot.20221029132335.1: *9* ListView
      ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: Colors.white,
        ),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return
          //@+others
          //@+node:swot.20221029133717.1: *10* ListTile
          ListTile(
            tileColor: Colors.orangeAccent,
            leading: const Icon(Icons.person),
            title: const Text('Flutter App'),
            trailing: const Icon(Icons.menu),
            onTap: () {},
          )
          //@-others
          ;
        },
      )
      //@-others
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}
//@+node:swot.20221023080501.1: *3* M Example
//@+node:swot.20221023080540.1: *4* M  -- Scaffold
class M extends StatelessWidget {
  const M({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //@+others
          //@+node:swot.20221023080540.2: *5* AppBar
          appBar: AppBar(
            title: const Text('Demo M'),
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
          body: DemoM(),
      ),
    );
  }
}
//@+node:swot.20221023081047.1: *4* DemoM
//@@language dart
//@@tabwidth -2
class DemoM extends StatefulWidget {
  const DemoM({super.key});

  @override
  State<DemoM> createState() => _DemoMState();
}

class _DemoMState extends State<DemoM> {
  //@+others
  //@+node:swot.20221023081047.2: *5* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221023081047.3: *6* SingleChildScrollView
      SingleChildScrollView(
        child:
        //@+others
        //@+node:swot.20221023081047.4: *7* Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //@+others
            //@+node:swot.20221023081047.5: *8* show MaterialBannerExample
            MaterialBannerExample(),
            //@+node:swot.20221023081047.6: *8* Divider
            Divider(),
            //@+node:swot.20221023081815.1: *8* Divider
            Divider(),
            //@+node:swot.20221023081816.1: *8* Divider
            Divider(),
            //@+node:swot.20221023081817.1: *8* Divider
            Divider(),
            //@+node:swot.20221023081819.1: *8* Divider
            Divider(),
            //@-others
          ]
        ),
        //@-others
      );
      //@-others
  }
  //@-others
}

//@+node:swot.20221023081258.1: *4* ExampleM
//@+node:swot.20221023081535.2: *5* MaterialBannerExample
//@@language dart
//@@tabwidth -2
class MaterialBannerExample extends StatelessWidget {
  const MaterialBannerExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221023081535.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Open MaterialBanner'),
        onPressed: () {
          ScaffoldMessenger.of(context).showMaterialBanner(
            MaterialBanner(
              padding: const EdgeInsets.all(20),
              content: const Text('Subscribe!'),
              leading: const Icon(Icons.notifications_active_outlined),
              elevation: 5,
              backgroundColor: Colors.white12,
              actions: [
                Builder(
                  builder: (context) => TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                    },
                    child: const Text('Dismiss'),
                  ),
                ),
              ],
            )
          );
        },
      ),
    );
  }

  //@+doc
  // Looking up a deactivated widget's ancestor is unsafe.
  //
  // At this point the state of the widget's element tree is no longer stable.
  //
  // To safely refer to a widget's ancestor in its dispose() method, save a reference to the ancestor by calling dependOnInheritedWidgetOfExactType() in the widget's didChangeDependencies() method.
  //
  // Solved:
  // https://stackoverflow.com/questions/69141074/showmaterialbanner-doesnt-hide-on-change-route-looking-up-a-deactivated-widgets
  //
  //@@language dart
  // Builder(  // Can solve above problem
  //   builder: (context) => TextButton(
  //     onPressed: () {
  //       ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
  //     },
  //     child: const Text('Dismiss'),
  //   ),
  // )
  //@-others
}
//@+node:swot.20221029134405.1: *3* N Example
//@+node:swot.20221029134405.2: *4* N  -- Scaffold
class N extends StatelessWidget {
  const N({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //@+others
          //@+node:swot.20221029134405.3: *5* AppBar
          appBar: AppBar(
            title: const Text('Demo N'),
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
          body: DemoN(),
      ),
    );
  }
}
//@+node:swot.20221029134405.4: *4* DemoN
//@@language dart
//@@tabwidth -2
class DemoN extends StatefulWidget {
  const DemoN({super.key});

  @override
  State<DemoN> createState() => _DemoNState();
}

class _DemoNState extends State<DemoN> {
  //@+others
  //@+node:swot.20221029134405.5: *5* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221029134405.6: *6* SingleChildScrollView
      SingleChildScrollView(
        child:
        //@+others
        //@+node:swot.20221029134405.7: *7* Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //@+others
            //@+node:swot.20221029141845.2: *8* ElevatedButton -- show NavigationBarExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NavigationBarExample(),
              ),
            );
              },
              child: const Text('NavigationBarExample'),
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

//@+node:swot.20221029134405.14: *4* ExampleN
//@+node:swot.20221029140231.2: *5* NavigationBarExample
//@@language dart
//@@tabwidth -2
class NavigationBarExample extends StatefulWidget {
  const NavigationBarExample({super.key});

  @override
  State<NavigationBarExample> createState() => _NavigationBarExampleState();
}

class _NavigationBarExampleState extends State<NavigationBarExample>{
  //@+others
  //@+node:swot.20221029140231.3: *6* varible
  int currentIndex = 0;

  static const List body = [
    Icon(Icons.home, size: 50),
    Icon(Icons.search, size: 50),
    Icon(Icons.person, size: 50),
  ];
  //@+node:swot.20221029140231.4: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221029140231.5: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221029140231.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029141046.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221029141046.3: *8* appBar
      appBar: AppBar(
        title: Text('NavigationBar'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221029141046.4: *8* body
      body: Center(
        child: body.elementAt(currentIndex),
      ),

      //@+node:swot.20221029141046.5: *8* bottomNavigationBar
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          NavigationDestination(
            label: 'Menu',
            icon: Icon(Icons.menu),
          ),
          NavigationDestination(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
        selectedIndex: currentIndex,
        onDestinationSelected: (int index) {
          setState(() { currentIndex = index; });
        }
      ),
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221029131010.1: ** Example O-T
//@+node:swot.20221030231300.1: *3* O Example
//@+node:swot.20221030231300.2: *4* O  -- Scaffold
class O extends StatelessWidget {
  const O({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //@+others
      //@+node:swot.20221030231748.1: *5* AppBar
      appBar: AppBar(
        title: const Text('Demo O'),
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
      body: DemoO(),
    );
  }
}
//@+node:swot.20221030231300.4: *4* DemoO
//@@language dart
//@@tabwidth -2
class DemoO extends StatefulWidget {
  const DemoO({super.key});

  @override
  State<DemoO> createState() => _DemoOState();
}

class _DemoOState extends State<DemoO> {
  //@+others
  //@+node:swot.20221030231300.5: *5* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221030231300.6: *6* SingleChildScrollView
      SingleChildScrollView(
        child:
        //@+others
        //@+node:swot.20221030231300.7: *7* Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //@+others
            //@+node:swot.20221030232506.2: *8* ElevatedButton -- show OrientationBuilderExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrientationBuilderExample(),
                  ),
                );
              },
              child: const Text('OrientationBuilderExample'),
            ),

            //@+node:swot.20221030233533.2: *8* ElevatedButton -- show OverflowBarExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OverflowBarExample(),
                  ),
                );
              },
              child: const Text('OverflowBarExample'),
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

//@+node:swot.20221030231300.11: *4* ExampleO
//@+node:swot.20221030231950.2: *5* OrientationBuilderExample
//@@language dart
//@@tabwidth -2
class OrientationBuilderExample extends StatelessWidget {
  const OrientationBuilderExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221030231950.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221030232043.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221030232043.3: *8* appBar
      appBar: AppBar(
        title: Text('OrientationBuilderExample'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221030232043.4: *8* body
      body:
      //@+others
      //@+node:swot.20221030232118.1: *9* OrientationBuilder
      OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return const Center(
              child: Text('Portrait'),
            );
          } else {
            return const Center(
              child: Text('Landscape'),
            );
          }
        },
      ),
      //@-others
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}
//@+node:swot.20221030232847.2: *5* OverflowBarExample -- auto adjust row or column
//@@language dart
//@@tabwidth -2
class OverflowBarExample extends StatelessWidget {
  const OverflowBarExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221030232847.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221030233721.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221030233721.3: *8* appBar
      appBar: AppBar(
        title: Text('OverflowBarExample'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221030233721.4: *8* body
      body:
      //@+others
      //@+node:swot.20221030233137.2: *9* Padding
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        //@+others
        //@+node:swot.20221030233211.1: *10* OverflowBar
        OverflowBar(
          spacing: 8,
          children: [
          //@+others
          //@+node:swot.20221030233258.2: *11* ElevatedButton
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.orangeAccent,
            ),
            onPressed: () {},
            child: const Text('linux'),
          ),

          //@+node:swot.20221030233342.2: *11* ElevatedButton
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.orangeAccent,
            ),
            onPressed: () {},
            child: const Text('flutter'),
          ),

          //@+node:swot.20221030233342.1: *11* ElevatedButton
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.orangeAccent,
            ),
            onPressed: () {},
            child: const Text('javascript'),
          ),

          //@+node:swot.20221030233809.1: *11* ElevatedButton
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.orangeAccent,
            ),
            onPressed: () {},
            child: const Text('python'),
          ),

          //@+node:swot.20221030233843.1: *11* ElevatedButton
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.orangeAccent,
            ),
            onPressed: () {},
            child: const Text('dart'),
          ),

          //@-others
          ],
        )
        //@-others
      )

      //@-others
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}
//@+node:swot.20221023093033.1: *3* P Example
//@+node:swot.20221023093033.2: *4* P  -- Scaffold
class P extends StatelessWidget {
  const P({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //@+others
      //@+node:swot.20221023093803.1: *5* AppBar
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Container(
          height: 120,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Colors.redAccent,
                Colors.orangeAccent,
              ],
            ),
          ),
          child: SafeArea(
            child: Center(
              child: ListTile(
                title: const Text('PreferredSize'),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_back, size: 20),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ),
        ),
      ),
      //@-others
      body: DemoP(),
    );
  }
}
//@+node:swot.20221023093033.4: *4* DemoP
//@@language dart
//@@tabwidth -2
class DemoP extends StatefulWidget {
  const DemoP({super.key});

  @override
  State<DemoP> createState() => _DemoPState();
}

class _DemoPState extends State<DemoP> {
  //@+others
  //@+node:swot.20221023093033.5: *5* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221023093033.6: *6* SingleChildScrollView
      SingleChildScrollView(
        child:
        //@+others
        //@+node:swot.20221023093033.7: *7* Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //@+others
            //@+node:swot.20221029234843.2: *8* ElevatedButton -- show PageViewExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageViewExample(),
                  ),
                );
              },
              child: const Text('PageViewExample'),
            ),

            //@+node:swot.20221025191831.1: *8* show PopupMenuButtonExample
            PopupMenuButtonExample(),
            Divider(),
            //@+node:swot.20221030082123.2: *8* ElevatedButton -- show PositionedExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PositionedExample(),
                  ),
                );
              },
              child: const Text('PositionedExample'),
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

//@+node:swot.20221023093033.14: *4* ExampleP
//@+node:swot.20221029234453.2: *5* PageViewExample
//@@language dart
//@@tabwidth -2
class PageViewExample extends StatefulWidget {
  const PageViewExample({super.key});

  @override
  State<PageViewExample> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample>{
  //@+others
  //@+node:swot.20221029234453.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029235310.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221029235310.3: *8* appBar
      appBar: AppBar(
        title: Text('PageViewExample'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221029235310.4: *8* body
      body:
      //@+others
      //@+node:swot.20221029234534.1: *9* PageView
      PageView(
        children: [
        //@+others
        //@+node:swot.20221029234605.1: *10* Container
        Container(
          color: Colors.orangeAccent,
          child: const Center(
            child: Text(
              '1',
              style: TextStyle(fontSize: 100),
            ),
          ),
        ),
        //@+node:swot.20221029234724.1: *10* Container
        Container(
          color: Colors.redAccent,
          child: const Center(
            child: Text(
              '2',
              style: TextStyle(fontSize: 100),
            ),
          ),
        ),
        //@+node:swot.20221029234725.1: *10* Container
        Container(
          color: Colors.blueGrey,
          child: const Center(
            child: Text(
              '3',
              style: TextStyle(fontSize: 100),
            ),
          ),
        ),
        //@-others
        ],
      )
      //@-others
      ,
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221025114730.2: *5* PopupMenuButtonExample
//@@language dart
//@@tabwidth -2
class PopupMenuButtonExample extends StatefulWidget {
  const PopupMenuButtonExample({super.key});

  @override
  State<PopupMenuButtonExample> createState() => _PopupMenuButtonExampleState();
}

class _PopupMenuButtonExampleState extends State<PopupMenuButtonExample>{
  //@+others
  //@+node:swot.20221025114730.3: *6* varible
  String title = 'PopupMenuButton';
  String item1 = 'First item';
  String item2 = 'Second item';
  //@+node:swot.20221025114730.4: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221025114730.5: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221025114730.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: PopupMenuButton(
        itemBuilder: (context) => [
          PopupMenuItem(
            value: item1,
            child: Text(item1),
          ),
          PopupMenuItem(
            value: item2,
            child: Text(item2),
          ),
        ],
        onSelected: (String newValue) {
          setState(() {
            title = newValue;
          });
        }
      ),
    );
  }
  //@-others
}

//@+node:swot.20221029235922.2: *5* PositionedExample
//@@language dart
//@@tabwidth -2
class PositionedExample extends StatelessWidget {
  const PositionedExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221029235922.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221030082723.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221030082723.3: *8* appBar
      appBar: AppBar(
        title: Text('PositionedExample'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221030082723.4: *8* body
      body:
      //@+others
      //@+node:swot.20221030081223.2: *9* Center
      Center(
        child:
        //@+others
        //@+node:swot.20221030081235.1: *10* Stack
        Stack(
          children: [
          //@+others
          //@+node:swot.20221030081313.1: *11* Positioned
          Positioned(
            left: 20,
            top: 20,
            child: Image.network(
              'https://img0.baidu.com/it/u=3216067279,1683207701&fm=253&fmt=auto&app=138&f=JPEG?w=250&h=238',
              width: 250,
            ),
          ),
          //@+node:swot.20221030081540.1: *11* Positioned
          Positioned(
            left: 60,
            top: 120,
            child: Image.network(
              'https://img2.baidu.com/it/u=3325552638,2237228879&fm=253&fmt=auto&app=138&f=JPEG?w=260&h=298',
              width: 250,
            ),
          ),
          //@+node:swot.20221030081542.1: *11* Positioned
          Positioned(
            left: 100,
            top: 220,
            child: Image.network(
              'https://img1.baidu.com/it/u=3146473707,3528165124&fm=253&fmt=auto&app=138&f=JPEG?w=307&h=298',
              width: 250,
            ),
          ),
          //@-others
          ],
        ),
        //@-others
      )
      //@-others
      ,
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}
//@+node:swot.20221023152107.1: *3* R Example
//@+node:swot.20221023152107.2: *4* R  -- Scaffold
class R extends StatelessWidget {
  const R({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //@+others
      //@+node:swot.20221023152533.1: *5* AppBar
      appBar: AppBar(
        title: const Text('Demo R'),
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
      body: DemoR(),
    );
  }
}
//@+node:swot.20221023152107.4: *4* DemoR
//@@language dart
//@@tabwidth -2
class DemoR extends StatefulWidget {
  const DemoR({super.key});

  @override
  State<DemoR> createState() => _DemoRState();
}

class _DemoRState extends State<DemoR> {
  //@+others
  //@+node:swot.20221023152107.5: *5* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221023152107.6: *6* SingleChildScrollView
      SingleChildScrollView(
        child:
        //@+others
        //@+node:swot.20221023152107.7: *7* Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //@+others
            //@+node:swot.20221023154547.2: *8* ElevatedButton -- show ReorderableListViewExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              child: const Text('ReorderableListView'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReorderableListViewExample(),
                  ),
                );
              },
            ),
            //@+node:swot.20221030084137.1: *8* show RadioListTileExample
            RadioListTileExample(),
            //@+node:swot.20221030181409.2: *8* ElevatedButton -- show RefreshIndicatorExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RefreshIndicatorExample(),
              ),
            );
              },
              child: const Text('RefreshIndicatorExample'),
            ),

            //@+node:swot.20221030205503.1: *8* show RotatedBoxExample
            RotatedBoxExample(),
            //@-others
          ]
        ),
        //@-others
      );
      //@-others
  }
  //@-others
}

//@+node:swot.20221023152107.13: *4* ExampleR
//@+node:swot.20221030084432.1: *5* radioListTileOptions
List<String> radioListTileOptions = ['Option 1', 'Option 2'];
//@+node:swot.20221030083241.2: *5* RadioListTileExample
//@@language dart
//@@tabwidth -2
class RadioListTileExample extends StatefulWidget {
  const RadioListTileExample({super.key});

  @override
  State<RadioListTileExample> createState() => _RadioListTileExampleState();
}

class _RadioListTileExampleState extends State<RadioListTileExample>{
  //@+others
  //@+node:swot.20221030083241.3: *6* varible
  String currentOption = radioListTileOptions[0];
  //@+node:swot.20221030083241.4: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221030083241.5: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221030083241.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221030083721.2: *7* Column
    Column(
      mainAxisSize: MainAxisSize.min,
      children: [
      //@+others
      //@+node:swot.20221030083736.1: *8* RadioListTile
      RadioListTile(
        title: const Text('Option 1'),
        value: radioListTileOptions[0],
        groupValue: currentOption,
        onChanged: (value) {
          setState(() {
            currentOption = value.toString();
          });
        },
      ),
      //@+node:swot.20221030084017.1: *8* RadioListTile
      RadioListTile(
        title: const Text('Option 2'),
        value: radioListTileOptions[1],
        groupValue: currentOption,
        onChanged: (value) {
          setState(() {
            currentOption = value.toString();
          });
        },
      ),
      //@-others
      ],
    )

    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221030172700.2: *5* RefreshIndicatorExample
//@@language dart
//@@tabwidth -2
class RefreshIndicatorExample extends StatefulWidget {
  const RefreshIndicatorExample({super.key});

  @override
  State<RefreshIndicatorExample> createState() => _RefreshIndicatorExampleState();
}

class _RefreshIndicatorExampleState extends State<RefreshIndicatorExample>{
  //@+others
  //@+node:swot.20221030172700.3: *6* varible
  List<String> items = [
    "Item 1",
    "Item 2",
  ];
  //@+node:swot.20221030172700.4: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221030172700.5: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221030172700.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221030182420.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221030182420.3: *8* appBar
      appBar: AppBar(
        title: Text('RefreshIndicatorExample'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221030182420.4: *8* body
      body:
      //@+others
      //@+node:swot.20221030173047.1: *9* RefreshIndicator
      RefreshIndicator(
        color: Colors.white,
        backgroundColor: Colors.orangeAccent,

        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1));
          int nextItem = items.length + 1;
          setState(() {
            items.add("Item $nextItem");
          });
        },

        child: ListView.builder(
          padding: const EdgeInsets.all(5),
          itemCount: items.length,
          itemBuilder: (
            (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(items[index]),
                tileColor: Colors.white24,
              ),
            )
          ),
        ),
      ),
      //@-others
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221023152801.2: *5* ReorderableListViewExample
//@@language dart
//@@tabwidth -2
class ReorderableListViewExample extends StatefulWidget {
  const ReorderableListViewExample({super.key});

  @override
  State<ReorderableListViewExample> createState() => _ReorderableListViewExampleState();
}

class _ReorderableListViewExampleState extends State<ReorderableListViewExample>{
  //@+others
  //@+node:swot.20221023152933.1: *6* varible
  final List<int> items = List<int>.generate(30, (int index) => index);
  //@+node:swot.20221023152801.3: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221023152801.4: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221023152801.5: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221023154334.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221023154334.3: *8* appBar
      appBar: AppBar(
        title: Text('ReorderableListView'),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221023154334.4: *8* body
      body:
      //@+others
      //@+node:swot.20221023153058.1: *9* ReorderableListView
      ReorderableListView(
        children: List.generate(
          items.length,
          (index) => ListTile(
            key: Key('$index'),
            // tileColor: items[index].isOdd ? Colors.white12 : Colors.white30,
            tileColor: items[index].isOdd ? Colors.grey : Colors.white30,
            title: Text('Item ${items[index]}'),
            trailing: const Icon(Icons.drag_handle_sharp),
          ),
        ),
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            final int item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          });
        },
      ),
      //@-others
      //@-others
    );

    //@-others
  }
  //@-others
}

//@+node:swot.20221030205049.2: *5* RotatedBoxExample
//@@language dart
//@@tabwidth -2
class RotatedBoxExample extends StatelessWidget {
  const RotatedBoxExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221030205049.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221030205124.1: *7* RotatedBox
    const RotatedBox(
      // change this
      quarterTurns: 1,
      // quarterTurns: 2,
      child: FlutterLogo(size: 60),
    )
    //@-others
    ;
  }
  //@-others
}
//@+node:swot.20221024070848.1: *3* S Example
//@+node:swot.20221024070848.2: *4* S  -- Scaffold
class S extends StatelessWidget {
  const S({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //@+others
          //@+node:swot.20221024070848.3: *5* AppBar
          appBar: AppBar(
            title: const Text('Demo S'),
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
          body: DemoS(),
      ),
    );
  }
}
//@+node:swot.20221024070848.4: *4* DemoS
//@@language dart
//@@tabwidth -2
class DemoS extends StatefulWidget {
  const DemoS({super.key});

  @override
  State<DemoS> createState() => _DemoSState();
}

class _DemoSState extends State<DemoS> {
  //@+others
  //@+node:swot.20221024070848.5: *5* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221024070848.6: *6* SingleChildScrollView
      SingleChildScrollView(
        child:
        //@+others
        //@+node:swot.20221024070848.7: *7* Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //@+others
            //@+node:swot.20221024100552.1: *8* show DatePickerExample
            DatePickerExample(),
            Divider(),
            //@+node:swot.20221024103554.1: *8* show TimePickerExample
            TimePickerExample(),
            Divider(),
            //@+node:swot.20221024110745.1: *8* show DateRangePickerExample
            DateRangePickerExample(),
            Divider(),
            //@+node:swot.20221029143324.2: *8* ElevatedButton -- show StackExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StackExample(),
                  ),
                );
              },
              child: const Text('StackExample'),
            ),

            //@+node:swot.20221029190037.1: *8* ElevatedButton -- show StepperExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StepperExample(),
                  ),
                );
              },
              child: const Text('StepperExample'),
            ),

            //@+node:swot.20221029213808.1: *8* ElevatedButton -- show StreamBuilderExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StreamBuilderExample(),
                  ),
                );
              },
              child: const Text('StreamBuilderExample'),
            ),
            //@+node:swot.20221029215656.1: *8* show SwitchExample
            SwitchExample(),
            //@+node:swot.20221030210255.1: *8* show SelectableTextExample
            SelectableTextExample(),
            //@+node:swot.20221030211748.1: *8* show SliderExample
            SliderExample(),
            //@+node:swot.20221030212913.1: *8* show SnackBarExample
            SnackBarExample(),
            //@+node:swot.20221030225013.2: *8* ElevatedButton -- show SafeAreaExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SafeAreaExample(),
                  ),
                );
              },
              child: const Text('SafeAreaExample'),
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

//@+node:swot.20221024070848.8: *4* ExampleS
//@+node:swot.20221030224821.2: *5* SafeAreaExample
//@@language dart
//@@tabwidth -2
class SafeAreaExample extends StatelessWidget {
  const SafeAreaExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221030224821.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221030225147.1: *7* SafeArea
    SafeArea(
      child:
      //@+others
      //@+node:swot.20221030224837.1: *8* Text
      Text(
        'Swotpp App',
        style: TextStyle(fontSize: 30),
      )
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}
//@+node:swot.20221030210033.2: *5* SelectableTextExample
//@@language dart
//@@tabwidth -2
class SelectableTextExample extends StatefulWidget {
  const SelectableTextExample({super.key});

  @override
  State<SelectableTextExample> createState() => _SelectableTextExampleState();
}

class _SelectableTextExampleState extends State<SelectableTextExample>{
  //@+others
  //@+node:swot.20221030210033.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221030210100.1: *7* SelectableText
    SelectableText(
      'This is selectable',
      style: const TextStyle(fontSize: 30),
      onSelectionChanged: (selection, cause) {},
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221030210547.2: *5* SliderExample
//@@language dart
//@@tabwidth -2
class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample>{
  //@+others
  //@+node:swot.20221030210547.3: *6* varible
  double _currentSliderValue = 20;
  //@+node:swot.20221030210547.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221030211118.1: *7* Slider
    Slider(
      value: _currentSliderValue,
      max: 100,
      divisions: 5,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221030212509.2: *5* SnackBarExample
//@@language dart
//@@tabwidth -2
class SnackBarExample extends StatelessWidget {
  const SnackBarExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221030212509.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221030212550.2: *7* ElevatedButton
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        // backgroundColor: Colors.orangeAccent,
      ),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Flutter App'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: (){},
            ),
          ),
        );
      },
      child: const Text('Show SnackBar'),
    )

    //@-others
    ;
  }
  //@-others
}
//@+node:swot.20221024095344.2: *5* DatePickerExample
//@@language dart
//@@tabwidth -2
class DatePickerExample extends StatefulWidget {
  const DatePickerExample({super.key});

  @override
  State<DatePickerExample> createState() => _DatePickerExampleState();
}

class _DatePickerExampleState extends State<DatePickerExample>{
  //@+others
  //@+node:swot.20221024095406.1: *6* varible
  DateTime selectedDate = DateTime.now();
  //@+node:swot.20221024095344.3: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221024095344.4: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221024095344.5: *6* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          ElevatedButton(
            child: const Text('Choose Date'),
            onPressed: () async {
              final DateTime? dateTime = await showDatePicker(
                context: context,
                initialDate: selectedDate,
                firstDate: DateTime(2000),
                lastDate: DateTime(3000),
              );
              if (dateTime != null) {
                setState(() {
                  selectedDate = dateTime;
                });
              }
            },
          ),
          SizedBox(width: 10),
          Text("${selectedDate.year}-${selectedDate.month}-${selectedDate.day}"),
        ],
      ),
    );
  }
  //@-others
}

//@+node:swot.20221024103523.2: *5* TimePickerExample
//@@language dart
//@@tabwidth -2
class TimePickerExample extends StatefulWidget {
  const TimePickerExample({super.key});

  @override
  State<TimePickerExample> createState() => _TimePickerExampleState();
}

class _TimePickerExampleState extends State<TimePickerExample>{
  //@+others
  //@+node:swot.20221024103850.1: *6* varible
  TimeOfDay selectedTime = TimeOfDay.now();
  //@+node:swot.20221024103523.3: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221024103523.4: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221024103957.1: *6* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          ElevatedButton(
            child: const Text('Choose Time'),
            onPressed: () async {
              final TimeOfDay? timeOfDay = await showTimePicker(
                context: context,
                initialTime: selectedTime,
                initialEntryMode: TimePickerEntryMode.dial,
              );
              if (timeOfDay != null) {
                setState(() {
                  selectedTime = timeOfDay;
                });
              }
            },
          ),
          SizedBox(width: 10),
          Text("${selectedTime.hour}:${selectedTime.minute}"),
        ],
      ),
    );
  }
  //@-others
}

//@+node:swot.20221024110030.2: *5* DateRangePickerExample
//@@language dart
//@@tabwidth -2
class DateRangePickerExample extends StatefulWidget {
  const DateRangePickerExample({super.key});

  @override
  State<DateRangePickerExample> createState() => _DateRangePickerExampleState();
}

class _DateRangePickerExampleState extends State<DateRangePickerExample>{
  //@+others
  //@+node:swot.20221024110048.1: *6* varible
  DateTimeRange selectedDates = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now(),
  );
  //@+node:swot.20221024110030.3: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221024110030.4: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221024110030.5: *6* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          ElevatedButton(
            child: const Text('Choose Dates'),
            onPressed: () async {
              final DateTimeRange? dateTimeRange = await showDateRangePicker(
                context: context,
                firstDate: DateTime(2000),
                lastDate: DateTime(3000),
              );
              if (dateTimeRange != null) {
                setState(() {
                  selectedDates = dateTimeRange;
                });
              }
            },
          ),
          SizedBox(width: 10),
          Text("${selectedDates.duration.inDays}"),
        ],
      ),
    );
  }
  //@-others
}

//@+node:swot.20221029142534.2: *5* StackExample
//@@language dart
//@@tabwidth -2
class StackExample extends StatelessWidget {
  const StackExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221029142534.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029142715.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221029142715.3: *8* appBar
      appBar: AppBar(
        title: Text('Stack'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221029142715.4: *8* body
      body:
      //@+others
      //@+node:swot.20221029142815.2: *9* Center
      Center(
        child:
        //@+others
        //@+node:swot.20221029142627.1: *10* Stack
        Stack(
          children: [
            Center(
              child: Image.network(
                'https://img0.baidu.com/it/u=3512755295,746862310&fm=253&fmt=auto&app=120&f=JPEG?w=236&h=500',
                width: 500,
              ),
            ),
            Center(
              child: Image.network(
                'https://img1.baidu.com/it/u=695618151,2431461217&fm=253&fmt=auto&app=138&f=JPEG?w=350&h=250',
                width: 200,
              ),
            ),
          ],
        )
        //@-others
      )
      //@-others
      ,
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}
//@+node:swot.20221029144530.2: *5* StepperExample
//@@language dart
//@@tabwidth -2
class StepperExample extends StatefulWidget {
  const StepperExample({super.key});

  @override
  State<StepperExample> createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample>{
  //@+others
  //@+node:swot.20221029144530.3: *6* varible
  int _currentStep = 0;
  //@+node:swot.20221029144530.4: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221029144530.5: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221029144530.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029144924.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221029144924.3: *8* appBar
      appBar: AppBar(
        title: Text('Stepper'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221029144924.4: *8* body
      body:
      //@+others
      //@+node:swot.20221029144954.2: *9* Center
      Center(
        child:
        //@+others
        //@+node:swot.20221029145033.1: *10* Stepper
        Stepper(
          //@+others
          //@+node:swot.20221029191553.1: *11* steps
          steps: [
            Step(
              isActive: _currentStep == 0,
              title: const Text('Step 1'),
              content: const Text(
                'Information for step 1',
                style: TextStyle(
                  color: Colors.redAccent,
                ),
              ),
            ),
            Step(
              isActive: _currentStep == 1,
              title: const Text('Step 2'),
              content: const Text(
                'Information for step 2',
                style: TextStyle(
                  color: Colors.redAccent,
                ),
              ),
            ),
            Step(
              isActive: _currentStep == 2,
              title: const Text('Step 3'),
              content: const Text(
                'Information for step 3',
                style: TextStyle(
                  color: Colors.redAccent,
                ),
              ),
            ),
          ],
          //@-others
          // type: StepperType.horizontal,
          currentStep: _currentStep,

          onStepTapped: (int newIndex) {
            setState(() { _currentStep = newIndex; });
          },
          onStepContinue: () {
            if (_currentStep != 2) {
              setState(() {
                _currentStep += 1;
              });
            }
          },
          onStepCancel: () {
            if (_currentStep != 0) {
              setState(() {
                _currentStep -= 1;
              });
            }
          },
        ),
        //@-others
      )
      //@-others
      ,
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221029211743.1: *5* generateStream -- FAKE FIREBASE STREAM
//@@language dart
//@@tabwidth -2
Stream<int> generateStream = (() async* {
  await Future<void>.delayed(const Duration(seconds: 2));
  yield 1;
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 2;
  // throw 'An error occured';  // test After show 1, Error displayed
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 3;
})();
//@+node:swot.20221029211533.2: *5* StreamBuilderExample
//@@language dart
//@@tabwidth -2
class StreamBuilderExample extends StatefulWidget {
  const StreamBuilderExample({super.key});

  @override
  State<StreamBuilderExample> createState() => _StreamBuilderExampleState();
}

class _StreamBuilderExampleState extends State<StreamBuilderExample>{
  //@+others
  //@+node:swot.20221029211533.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029213944.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221029213944.3: *8* appBar
      appBar: AppBar(
        title: Text('StreamBuilder'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221029213944.4: *8* body
      body:
      //@+others
      //@+node:swot.20221029212803.2: *9* Center
      Center(
        child:
        //@+others
        //@+node:swot.20221029212812.1: *10* StreamBuilder
        StreamBuilder(
          stream: generateStream,
          initialData: 0,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator.adaptive();
            }
            if (snapshot.hasError) {
              return const Text('Error');
            } else {
              return Text(
                snapshot.data.toString(),
                style: const TextStyle(fontSize: 40),
              );
            }
          },
        ),
        //@-others
      )
      //@-others
      ,
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221029215403.2: *5* SwitchExample
//@@language dart
//@@tabwidth -2
class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample>{
  //@+others
  //@+node:swot.20221029215403.3: *6* varible
  bool isSwitched = false;
  //@+node:swot.20221029215403.4: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221029215403.5: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221029215403.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029215500.2: *7* Center
    Center(
      child:
      //@+others
      //@+node:swot.20221029215505.1: *8* Switch
      Switch(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
          });
        },
      )
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221023175859.1: *3* T Example
//@+node:swot.20221023175859.2: *4* T  -- Scaffold
class T extends StatelessWidget {
  const T({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //@+others
      //@+node:swot.20221023175859.3: *5* AppBar
      appBar: AppBar(
        title: const Text('Demo T'),
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
      body: const DemoT(),
    );
  }
}
//@+node:swot.20221023175859.4: *4* DemoT
//@@language dart
//@@tabwidth -2
class DemoT extends StatefulWidget {
  const DemoT({super.key});

  @override
  State<DemoT> createState() => _DemoTState();
}

class _DemoTState extends State<DemoT> {
  //@+others
  //@+node:swot.20221023175859.5: *5* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221023175859.6: *6* SingleChildScrollView
      SingleChildScrollView(
        child:
        //@+others
        //@+node:swot.20221023175859.7: *7* Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //@+others
            //@+node:swot.20221023195608.1: *8* show TableExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              child: const Text('Table'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TableExample(),
                  ),
                );
              },
            ),

            Divider(),
            //@+node:swot.20221027182544.1: *8* show TextFormFieldExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              child: const Text('TextFormFieldExample'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TextFormFieldExample(),
                  ),
                );
              },
            ),
            Divider(),
            //@+node:swot.20221029222412.2: *8* ElevatedButton -- show TabPageSelectorExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TabPageSelectorExample(),
                  ),
                );
              },
              child: const Text('TabPageSelector'),
            ),

            //@+node:swot.20221029232032.2: *8* ElevatedButton -- show TabBarExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TabBarExample(),
                  ),
                );
              },
              child: const Text('TabBarExample'),
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

//@+node:swot.20221023175859.14: *4* ExampleT
//@+node:swot.20221023193833.2: *5* TableExample
//@@language dart
//@@tabwidth -2
class TableExample extends StatelessWidget {
  const TableExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221023193833.3: *6* build()
  @override
  Widget build(BuildContext context) {
    //@+others
    //@+node:swot.20221023193950.2: *7* Scaffold
    return Scaffold(
      //@+others
      //@+node:swot.20221023193950.3: *8* appBar
      appBar: AppBar(
        title: const Text('Table'),
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221023193950.4: *8* body
      body:
      //@+others
      //@+node:swot.20221023194122.1: *9* Center
      Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child:
          //@+others
          //@+node:swot.20221023200224.1: *10* SingleChildScrollView
          SingleChildScrollView(
            child:
            //@+others
            //@+node:swot.20221023194310.1: *11* Table
            Table(
              border: TableBorder.all(color: Colors.white30),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                //@+others
                //@+node:swot.20221023194533.1: *12* TableRow
                const TableRow(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                  ),
                  children: [
                    //@+others
                    //@+node:swot.20221023194941.1: *13* TableCell
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Title 1'),
                      ),
                    ),
                    //@+node:swot.20221023194949.1: *13* TableCell
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Title 2'),
                      ),
                    ),
                    //@+node:swot.20221023194950.1: *13* TableCell
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Title 3'),
                      ),
                    ),
                    //@-others
                  ],
                ),
                //@+node:swot.20221023195102.1: *12* List.generate
                ...List.generate(
                  30,
                  (index) => const TableRow(
                    children: [
                      //@+others
                      //@+node:swot.20221023195414.1: *13* TableCell
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Cell 1'),
                        ),
                      ),
                      //@+node:swot.20221023195426.1: *13* TableCell
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Cell 2'),
                        ),
                      ),
                      //@+node:swot.20221023195426.2: *13* TableCell
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Cell 3'),
                        ),
                      ),
                      //@-others
                    ],
                  ),
                ),
                //@-others
              ]
            ),
            //@-others
          ),
          //@-others
        ),
      ),
      //@-others
      //@-others
    );

    //@-others
  }
  //@-others
}
//@+node:swot.20221027175533.2: *5* TextFormFieldExample
//@@language dart
//@@tabwidth -2
class TextFormFieldExample extends StatefulWidget {
  const TextFormFieldExample({super.key});

  @override
  State<TextFormFieldExample> createState() => _TextFormFieldExampleState();
}

class _TextFormFieldExampleState extends State<TextFormFieldExample>{
  //@+others
  //@+node:swot.20221027175533.3: *6* varible
  List<String> titles = [
    '',
    '',
    '',
  ];
  //@+node:swot.20221027175533.4: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221027175533.5: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221027175533.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221027183133.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221027183133.3: *8* appBar
      appBar: AppBar(
        title: Text('TextFormField'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221027183133.4: *8* body
      body:
      //@+others
      //@+node:swot.20221027180846.1: *9* SingleChildScrollView
      SingleChildScrollView(
        child:
        //@+others
        //@+node:swot.20221027180945.1: *10* Form
        Form(
          autovalidateMode: AutovalidateMode.always,
          onChanged: () {
            setState(() {
              Form.of(primaryFocus!.context!)!.save();
            });
          },
          child:
          //@+others
          //@+node:swot.20221027182206.1: *11* Column
          Column(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              3,
              (int index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        onSaved: (String? value) {
                          if (value != null) {
                            titles[index] = value;
                          }
                        },
                      ),
                      const SizedBox(height: 10),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(titles[index]),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          //@-others
        ),
        //@-others
      ),
      //@-others
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221029230649.2: *5* TabBarExample
//@@language dart
//@@tabwidth -2
class TabBarExample extends StatelessWidget {
  const TabBarExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221029230649.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029230800.1: *7* DefaultTabController
    DefaultTabController(
      length: 3,
      child:
      //@+others
      //@+node:swot.20221029230841.2: *8* Scaffold
      Scaffold(
        //@+others
        //@+node:swot.20221029230841.3: *9* appBar
        appBar: AppBar(
          title: Text('TabBar'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.settings)),
              Tab(icon: Icon(Icons.person)),
            ],
          ),
          // leading: Icon(Icons.menu),
          actions: [
            Icon(Icons.settings),
          ],
          elevation: 0.0,
          centerTitle: true,
        ),
        //@+node:swot.20221029230841.4: *9* body
        body:
        //@+others
        //@+node:swot.20221029231559.1: *10* TabBarView
        TabBarView(
          children: [
          //@+others
          //@+node:swot.20221029231700.1: *11* Container 3
          Container(
            color: Colors.orangeAccent,
            child: const Icon(Icons.home),
          ),
          Container(
            color: Colors.redAccent,
            child: const Icon(Icons.settings),
          ),
          Container(
            color: Colors.orangeAccent,
            child: const Icon(Icons.person),
          ),
          //@-others
          ],
        )
        //@-others
        ,
        //@-others
      )
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}
//@+node:swot.20221029220342.1: *5* tabPageSelectorWidgets
List<Widget> tabPageSelectorWidgets = const [
  Icon(Icons.home, size: 80),
  Icon(Icons.settings, size: 80),
  Icon(Icons.person, size: 80),
];
//@+node:swot.20221029220227.2: *5* TabPageSelectorExample
//@@language dart
//@@tabwidth -2
class TabPageSelectorExample extends StatefulWidget {
  const TabPageSelectorExample({super.key});

  @override
  State<TabPageSelectorExample> createState() => _TabPageSelectorExampleState();
}

class _TabPageSelectorExampleState extends State<TabPageSelectorExample>
    with SingleTickerProviderStateMixin {
  //@+others
  //@+node:swot.20221029220227.3: *6* varible
  late final TabController controller;
  int _index = 0;
  //@+node:swot.20221029220227.4: *6* initState()
  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: tabPageSelectorWidgets.length,
      initialIndex: _index,
      vsync: this,
    );
  }
  //@+node:swot.20221029220227.5: *6* dispose()
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  //@+node:swot.20221029220227.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029221243.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221029221243.3: *8* appBar
      appBar: AppBar(
        title: Text('TabPageSelector'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221029221243.4: *8* body
      body:
      //@+others
      //@+node:swot.20221029221337.1: *9* Stack
      Stack(
        alignment: Alignment.center,
        children: [
          TabBarView(
            controller: controller,  // TabController
            children: tabPageSelectorWidgets,
          ),
          Positioned(
            bottom: 40,
            child: TabPageSelector(
              controller: controller,  // TabController
              color: Colors.black38,
            ),
          ),
        ],
      )
      //@-others
      ,
      //@+node:swot.20221029221243.6: *8* floatingActionButton
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton.small(
            onPressed: () {
              (_index != tabPageSelectorWidgets.length - 1) ? _index++ : _index = 0;
              controller.animateTo(_index);
            },
            hoverElevation: 0,
            elevation: 0,
            child: const Icon(Icons.navigate_next),
          ),
        ],
      ),
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221030213442.1: ** Example U-Z
//@+node:swot.20221030213518.1: *3* V Example
//@+node:swot.20221030213518.2: *4* V  -- Scaffold
class V extends StatelessWidget {
  const V({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //@+others
      //@+node:swot.20221030213518.3: *5* AppBar
      appBar: AppBar(
        title: const Text('Demo V'),
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
      body: const DemoV(),
    );
  }
}
//@+node:swot.20221030213518.4: *4* DemoV
//@@language dart
//@@tabwidth -2
class DemoV extends StatefulWidget {
  const DemoV({super.key});

  @override
  State<DemoV> createState() => _DemoVState();
}

class _DemoVState extends State<DemoV> {
  //@+others
  //@+node:swot.20221030213518.5: *5* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221030213518.6: *6* SingleChildScrollView
      SingleChildScrollView(
        child:
        //@+others
        //@+node:swot.20221030213518.7: *7* Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //@+others
            //@+node:swot.20221030222854.1: *8* show VisibilityExample
            VisibilityExample(),
            //@-others
          ]
        ),
        //@-others
      );
      //@-others
  }
  //@-others
}

//@+node:swot.20221030213518.12: *4* ExampleV
//@+node:swot.20221030222244.2: *5* VisibilityExample
//@@language dart
//@@tabwidth -2
class VisibilityExample extends StatefulWidget {
  const VisibilityExample({super.key});

  @override
  State<VisibilityExample> createState() => _VisibilityExampleState();
}

class _VisibilityExampleState extends State<VisibilityExample>{
  //@+others
  //@+node:swot.20221030222244.3: *6* varible
  bool isVisible = true;
  //@+node:swot.20221030222244.4: *6* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221030222244.5: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221030222244.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221030222322.2: *7* Row
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      //@+others
      //@+node:swot.20221030222414.2: *8* ElevatedButton
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          // backgroundColor: Colors.orangeAccent,
        ),
        onPressed: () {
          setState(() {
            isVisible = !isVisible;
          });
        },
        child: const Text('Show/Hide Visibility'),
      ),

      //@+node:swot.20221030222619.1: *8* Visibility
      Visibility(
        visible: isVisible,
        child: Image.network(
          'https://img2.baidu.com/it/u=11150005,537174686&fm=253&fmt=auto&app=138&f=JPEG?w=435&h=500',
          width: 100,
        ),
      ),
      //@-others
      ],
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221030223524.1: *3* W Example
//@+node:swot.20221030223524.2: *4* W  -- Scaffold
class W extends StatelessWidget {
  const W({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //@+others
      //@+node:swot.20221030223524.3: *5* AppBar
      appBar: AppBar(
        title: const Text('Demo W'),
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
      body: const DemoW(),
    );
  }
}
//@+node:swot.20221030223524.4: *4* DemoW
//@@language dart
//@@tabwidth -2
class DemoW extends StatefulWidget {
  const DemoW({super.key});

  @override
  State<DemoW> createState() => _DemoWState();
}

class _DemoWState extends State<DemoW> {
  //@+others
  //@+node:swot.20221030223524.5: *5* build()
  @override
  Widget build(BuildContext context) {
    return
      //@+others
      //@+node:swot.20221030223524.6: *6* SingleChildScrollView
      SingleChildScrollView(
        child:
        //@+others
        //@+node:swot.20221030223524.7: *7* Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //@+others
            //@+node:swot.20221030224243.2: *8* ElevatedButton -- show WrapExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WrapExample(),
                  ),
                );
              },
              child: const Text('WrapExample'),
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

//@+node:swot.20221030223524.9: *4* ExampleW
//@+node:swot.20221030223719.2: *5* WrapExample
//@@language dart
//@@tabwidth -2
class WrapExample extends StatelessWidget {
  const WrapExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221030223719.3: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221030224541.2: *7* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221030224541.3: *8* appBar
      appBar: AppBar(
        title: Text('WrapExample'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221030224541.4: *8* body
      body:
      //@+others
      //@+node:swot.20221030223755.2: *9* Center
      Center(
        child:
        //@+others
        //@+node:swot.20221030223816.1: *10* Wrap
        Wrap(
          spacing: 10.0,
          runSpacing: 40.0,
          children: List.generate(
            10,
            (index) => const Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.orangeAccent,
                child: Icon(Icons.person),
              ),
              label: Text('SwotPP'),
            ),
          ),
        )
        //@-others
      )
      //@-others
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}
//@-others
//@-leo
