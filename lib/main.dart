//@+leo-ver=5-thin
//@+node:swot.20221017093031.2: * @file lib/main.dart
//@@language dart
//@@tabwidth -2
//@+others
//@+node:swot.20221017093031.3: ** import
import 'dart:async';
import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//@+node:swot.20221017093031.4: ** main
void main() {
  runApp(const MyApp());
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
        'home': (context) => const Home(),
        'a': (context) => const A(),
        'b': (context) => const B(),
        'c': (context) => const C(),
        'd': (context) => const D(),
        'e': (context) => const E(),
        'f': (context) => const F(),
        'g': (context) => const G(),
        'h': (context) => const H(),
        'i': (context) => const I(),
        'l': (context) => const L(),
        'm': (context) => const M(),
        'n': (context) => const N(),
        'o': (context) => const O(),
        'p': (context) => const P(),
        'r': (context) => const R(),
        's': (context) => const S(),
        't': (context) => const T(),
        'v': (context) => const V(),
        'w': (context) => const W(),
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
  const Home({Key? key}) : super(key: key);
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
        //@+node:swot.20221112195018.2: *6* Column
        Column(
          children: [
            //@+others
            //@+node:swot.20221112195648.1: *7* Center -- Alphabetical Example
            Center(
              child: Text(
                'Alphabetical Example',
                style: TextStyle(fontSize: 18),
              ),
            ),
            //@+node:swot.20221021133625.1: *7* Wrap
            Wrap(spacing: 8.0, children: [
              //@+others
              //@+node:swot.20221021134037.2: *8* ElevatedButton A
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.orangeAccent,
                    ),
                onPressed: () {
                  Navigator.pushNamed(context, 'a');
                },
                child: const Text('A'),
              ),

              //@+node:swot.20221021171707.1: *8* ElevatedButton B
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.orangeAccent,
                    ),
                onPressed: () {
                  Navigator.pushNamed(context, 'b');
                },
                child: const Text('B'),
              ),

              //@+node:swot.20221022115433.1: *8* ElevatedButton C
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.orangeAccent,
                    ),
                onPressed: () {
                  Navigator.pushNamed(context, 'c');
                },
                child: const Text('C'),
              ),

              //@+node:swot.20221024065732.1: *8* ElevatedButton D
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.orangeAccent,
                    ),
                onPressed: () {
                  Navigator.pushNamed(context, 'd');
                },
                child: const Text('D'),
              ),

              //@+node:swot.20221026064030.1: *8* ElevatedButton E
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.orangeAccent,
                    ),
                onPressed: () {
                  Navigator.pushNamed(context, 'e');
                },
                child: const Text('E'),
              ),

              //@+node:swot.20221026200727.1: *8* ElevatedButton F
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.orangeAccent,
                    ),
                onPressed: () {
                  Navigator.pushNamed(context, 'f');
                },
                child: const Text('F'),
              ),

              //@+node:swot.20221028090127.1: *8* ElevatedButton G
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.orangeAccent,
                    ),
                onPressed: () {
                  Navigator.pushNamed(context, 'g');
                },
                child: const Text('G'),
              ),

              //@+node:swot.20221023124300.1: *8* ElevatedButton H
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.orangeAccent,
                    ),
                onPressed: () {
                  Navigator.pushNamed(context, 'h');
                },
                child: const Text('H'),
              ),

              //@+node:swot.20221029081545.1: *8* ElevatedButton I
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.orangeAccent,
                    ),
                onPressed: () {
                  Navigator.pushNamed(context, 'i');
                },
                child: const Text('I'),
              ),

              //@+node:swot.20221023105031.1: *8* ElevatedButton L
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.orangeAccent,
                    ),
                onPressed: () {
                  Navigator.pushNamed(context, 'l');
                },
                child: const Text('L'),
              ),

              //@+node:swot.20221023081344.1: *8* ElevatedButton M
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.orangeAccent,
                    ),
                onPressed: () {
                  Navigator.pushNamed(context, 'm');
                },
                child: const Text('M'),
              ),

              //@+node:swot.20221029134319.1: *8* ElevatedButton N
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.orangeAccent,
                    ),
                onPressed: () {
                  Navigator.pushNamed(context, 'n');
                },
                child: const Text('N'),
              ),

              //@+node:swot.20221023093000.1: *8* ElevatedButton O
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.orangeAccent,
                    ),
                onPressed: () {
                  Navigator.pushNamed(context, 'o');
                },
                child: const Text('O'),
              ),

              //@+node:swot.20221030231220.1: *8* ElevatedButton P
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.orangeAccent,
                    ),
                onPressed: () {
                  Navigator.pushNamed(context, 'p');
                },
                child: const Text('P'),
              ),

              //@+node:swot.20221023152035.1: *8* ElevatedButton R
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.orangeAccent,
                    ),
                onPressed: () {
                  Navigator.pushNamed(context, 'r');
                },
                child: const Text('R'),
              ),

              //@+node:swot.20221024091106.1: *8* ElevatedButton S
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.orangeAccent,
                    ),
                onPressed: () {
                  Navigator.pushNamed(context, 's');
                },
                child: const Text('S'),
              ),

              //@+node:swot.20221023180102.1: *8* ElevatedButton T
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.orangeAccent,
                    ),
                onPressed: () {
                  Navigator.pushNamed(context, 't');
                },
                child: const Text('T'),
              ),

              //@+node:swot.20221030213345.1: *8* ElevatedButton V
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.orangeAccent,
                    ),
                onPressed: () {
                  Navigator.pushNamed(context, 'v');
                },
                child: const Text('V'),
              ),

              //@+node:swot.20221030223324.1: *8* ElevatedButton W
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
            ]),
            //@+node:swot.20221112195040.1: *7* Divider
            const Divider(),
            //@+node:swot.20221112195208.1: *7* Center -- Composite Example
            const Center(
              child: Text(
                'Composite Example',
                style: TextStyle(fontSize: 18),
              ),
            ),
            //@+node:swot.20221112213542.1: *7* ListTile -- User Login
            ListTile(
              tileColor: Colors.blueAccent,
              leading: const Icon(Icons.person),
              title: const Text('User Login'),
              trailing: const Icon(Icons.menu),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserLoginExample(),
                  ),
                );
              },
            )
            //@-others
          ],
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

//@+node:swot.20221112223923.1: ** AlphabeticalExample
//@+node:swot.20221029130915.1: *3* Example A-G
//@+node:swot.20221021133027.1: *4* A Example
//@+node:swot.20221017093031.6: *5* A  -- Scaffold
class A extends StatelessWidget {
  const A({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //@+others
      //@+node:swot.20221017093031.252: *6* AppBar
      appBar: AppBar(
        title: const Text('Demo A'),
        centerTitle: true,

        // leading: IconButton(
          // icon: const Icon(Icons.menu),
          // onPressed: (){},
        // ),

        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
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
        elevation: 0.0, // 去掉 appBar 与 body 之间的阴影
        
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Container(
            height: 80,
            color: Colors.black26,
            child: const Center(child: Text('Appbar Bottom')),
          ),
        ),
      ),
      //@-others
      body: DemoA(),
    );
  }
}

//@+node:swot.20221017093031.8: *5* DemoA
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
  //@+node:swot.20221017093031.9: *6* variable
  //@+node:swot.20221017093031.10: *7* var for AnimatedXXX
  // AnimatedAlign
  bool selected = false;
  //@+node:swot.20221017093031.17: *6* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221017093031.20: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221017093031.21: *6* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221017093031.22: *7* SingleChildScrollView
        SingleChildScrollView(
          child:
          //@+others
          //@+node:swot.20221017093031.23: *8* Column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            //@+others
            //@+node:swot.20221017093031.24: *9* Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //@+others
                //@+node:swot.20221017093031.25: *10* ElevatedButton  -- show AboutDialog
                ElevatedButton(
                  child: const Text('Show About Dialog'),
                  onPressed: () {
                    //@+others
                    //@+node:swot.20221017093031.26: *11* showDialog
                    showDialog(
                      context: context,
                      builder: (context) =>
                      //@+others
                      //@+node:swot.20221017093031.152: *12* AboutDialog
                      //@+doc
                      //@@language asciidoc
                      // :nofooter:
                      // image::../image/AboutDialog.png[AboutDialog,240]
                      //@@c
                      //@@language dart
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
                  },
                ),
                //@+node:swot.20221017093031.28: *10* SizedBox -- show AboutListTile
                //@+doc
                //@@language asciidoc
                // :nofooter:
                // https://www.flutterbeads.com/renderbox-was-not-laid-out/?[3 Ways to Fix RenderBox was not Laid Out in Flutter [2022]]
                //
                // 使用 SizedBox 可以解决上面报错的问题
                //@@c
                //@@language dart
                const SizedBox(
                  width: 200.0,
                  height: 40.0,
                  child:
                  //@+others
                  //@+node:swot.20221017093031.153: *11* AboutListTile
                  //@+doc
                  //@@language asciidoc
                  // :nofooter:
                  // image::../image/AboutListTile.png[AboutListTile,240]
                  //@@c
                  //@@language dart
                  AboutListTile(
                    icon: Icon(Icons.info),
                    applicationIcon: FlutterLogo(),
                    applicationLegalese: 'Legalese',
                    applicationName: 'XCall',
                    applicationVersion: 'version 1.0.0',
                    aboutBoxChildren: [
                      Text('This is a text created by Flutter Swot'),
                    ],
                  ),
                  //@-others
                ),
                //@-others
              ],
            ),
            Divider(),
            //@+node:swot.20221017093031.31: *9* Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //@+others
                //@+node:swot.20221017093031.32: *10* Stack           -- show AbsorbPointer包含按钮不可点击
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    //@+others
                    //@+node:swot.20221017093031.33: *11* SizedBox
                    SizedBox(
                      width: 100.0,
                      height: 30.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: null,
                      ),
                    ),
                    //@+node:swot.20221017093031.34: *11* SizedBox
                    SizedBox(
                      width: 40.0,
                      height: 60.0,
                      child:
                          //@+others
                          //@+node:swot.20221017093031.154: *12* AbsorbPointer -- include button can not be clicked
                          //@+doc
                          //@@language asciidoc
                          // :nofooter:
                          // image::../image/AbsorbPointer.png[AbsorbPointer,240]
                          //
                          //@@c
                          //@@language dart
                          AbsorbPointer(
                            child:
                            //@+others
                            //@+node:swot.20221017093031.155: *13* ElevatedButton 不可点击
                            //@@language dart
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue.shade200,
                              ),
                              onPressed: () {},
                              child: Text("不能点"),
                            ),
                            //@-others
                          ),
                          //@-others
                    ),
                    //@-others
                  ],
                ),
                //@+node:swot.20221017093031.37: *10* ElevatedButton  -- show AlertDialog
                ElevatedButton(
                  child: const Text('Show Alert Dialog'),
                  onPressed: () {
                    //@+others
                    //@+node:swot.20221017093031.38: *11* showDialog
                    showDialog(
                      context: context,
                      builder: (context) =>
                          //@+others
                          //@+node:swot.20221017093031.156: *12* AlertDialog
                          AlertDialog(
                            title: const Text('Flutter App'),
                            content: const Text('This is the alert Dialog'),
                            contentPadding: const EdgeInsets.all(20.0),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('CANCEL'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('OK'),
                              )
                            ],
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
            //@+node:swot.20221017093031.41: *9* Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //@+others
                //@+node:swot.20221017093031.42: *10* Container       -- show Align
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 4.0),
                  height: 40.0,
                  width: 100.0,
                  color: Colors.blueGrey,
                  child:
                  //@+others
                  //@+node:swot.20221017093031.157: *11* Align
                  //@+doc
                  //@@language asciidoc
                  // :nofooter:
                  // image::../image/Align.png[Align,240]
                  //@@c
                  //@@language dart
                  const Align(
                    alignment: Alignment.topRight,
                    // alignment: Alignment.bottonLeft,
                    child: FlutterLogo(
                      size: 20,
                    ),
                  ),
                  //@-others
                ),
                //@+node:swot.20221017093031.44: *10* GestureDetector -- show AnimatedAlign
                GestureDetector(
                  onTap: () {
                    setState(() {
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
                      //@+node:swot.20221017093031.159: *11* AnimatedAlign
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
            //@+node:swot.20221017093031.47: *9* Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //@+others
                //@+node:swot.20221101141445.1: *10* show AnimatedBuilderExample
                AnimatedBuilderExample(),
                //@+node:swot.20221101163555.1: *10* show AnimatedContainerExample
                AnimatedContainerExample(),
                //@-others
              ],
            ),

            Divider(),
            //@+node:swot.20221031193616.1: *9* show AnimatedCrossFadeExample
            AnimatedCrossFadeExample(),
            //@+node:swot.20221101175441.1: *9* show AnimatedDefaultTextStyleExample
            AnimatedDefaultTextStyleExample(),
            const Divider(),
            //@+node:swot.20221017093031.61: *9* Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //@+others
                //@+node:swot.20221027194417.2: *10* show AnimatedIconExample
                AnimatedIconExample(),
                //@+node:swot.20221017093031.179: *10* AnimatedModalBarrier  -- show AnimatedModalBarrier
                const AnimatedModalBarrierExample(),
                //@-others
              ],
            ),

            Divider(),
            //@+node:swot.20221031135430.2: *9* ElevatedButton -- show AdaptiveExample
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  // backgroundColor: Colors.orangeAccent,
                  ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdaptiveExample(),
                  ),
                );
              },
              child: const Text('AdaptiveExample'),
            ),

            //@+node:swot.20221101181724.1: *9* show AnimatedListExample
            AnimatedListExample(),
            //@+node:swot.20221017093031.194: *9* show AnimatedOpacity
            AnimatedOpacityExample(),
            Divider(),
            //@+node:swot.20221017093031.196: *9* show AnimatedPadding
            AnimatedPaddingExample(),
            Divider(),
            //@+node:swot.20221017093031.207: *9* show AnimatedPhysicalModel
            AnimatedPhysicalModelExample(),
            Divider(),
            //@+node:swot.20221017093031.216: *9* show AnimatedPositionedExample
            AnimatedPositionedExample(),
            Divider(),
            //@+node:swot.20221017093031.226: *9* show AnimatedRotationExample
            AnimatedRotationExample(),
            Divider(),
            //@+node:swot.20221017093031.235: *9* show AnimatedSizeExample
            AnimatedSizeExample(),
            Divider(),
            //@+node:swot.20221017093031.251: *10* show AnimatedSwitcherExample
            AnimatedSwitcherExample(),
            Divider(),
            //@+node:swot.20221017093031.253: *9* AspectRatio
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
            //@+node:swot.20221017093031.255: *9* show AutoCompleteExample
            AutoCompleteExample(),
            Divider(),
            //@+node:swot.20221017093031.88: *9* SizedBox
            SizedBox(height: 200.0),
            Divider(),
            //@-others
          ]),

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

//@+node:swot.20221031134256.2: *5* AdaptiveExample
//@@language dart
//@@tabwidth -2
class AdaptiveExample extends StatefulWidget {
  const AdaptiveExample({super.key});

  @override
  State<AdaptiveExample> createState() => _AdaptiveExampleState();
}

class _AdaptiveExampleState extends State<AdaptiveExample> {
  //@+others
  //@+node:swot.20221031134256.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221031134345.2: *7* Scaffold
        Scaffold(
          //@+others
          //@+node:swot.20221031134345.3: *8* appBar
          appBar: AppBar(
            title: Text('.adaptive'),
            // leading: Icon(Icons.menu),
            actions: [
              Icon(Icons.settings),
            ],
            elevation: 0.0,
            centerTitle: true,
          ),
          //@+node:swot.20221031134345.4: *8* body
          body:
          //@+others
          //@+node:swot.20221031134422.2: *9* Center
          Center(
            child:
            //@+others
            //@+node:swot.20221031134446.2: *10* Column
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //@+others
                //@+node:swot.20221031134619.1: *11* Slider.adaptive
                Slider.adaptive(
                  onChanged: (double newValue) {},
                  value: 1,
                ),
                //@+node:swot.20221031140355.1: *11* SwitchListTile.adaptive
                SwitchListTile.adaptive(
                  title: const Text('Switch List tile'),
                  onChanged: (bool newValue) {},
                  value: true,
                ),
                //@+node:swot.20221031140635.1: *11* Switch.adaptive
                Switch.adaptive(
                  onChanged: (bool newValue) {},
                  value: true,
                ),
                //@+node:swot.20221031140816.1: *11* Icons.adaptive
                Icon(
                  Icons.adaptive.share,
                ),
                //@+node:swot.20221031140929.1: *11* CircularProgressIndicator.adaptive
                const CircularProgressIndicator.adaptive(),
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

//@+node:swot.20221101080952.2: *5* AnimatedBuilderExample -- step 1
//@@language dart
//@@tabwidth -2
class AnimatedBuilderExample extends StatefulWidget {
  const AnimatedBuilderExample({super.key});

  @override
  State<AnimatedBuilderExample> createState() => _AnimatedBuilderExampleState();
}

class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample>
    with TickerProviderStateMixin {
  //@+others
  //@+node:swot.20221101080952.3: *6* varible             -- step 2
  late AnimationController _controllerBuilder;
  //@+node:swot.20221101080952.4: *6* initState()         -- step 3
  @override
  void initState() {
    _controllerBuilder = AnimationController(
      duration: const Duration(seconds: 10), // 转一圈的时间
      vsync: this, // use TickerProviderStateMixin
    )..repeat(); // 10s 后重复

    super.initState();
  }

  //@+node:swot.20221101080952.5: *6* dispose()           -- step 4
  @override
  void dispose() {
    _controllerBuilder.dispose();
    super.dispose();
  }

  //@+node:swot.20221101080952.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221101140943.1: *7* AnimatedBuilder  -- step 5
    //@@language dart
    //@@tabwidth -2
    AnimatedBuilder(
      animation: _controllerBuilder,
      child: const FlutterLogo(size: 30),
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          // scale & translate can be used
          angle: _controllerBuilder.value * 2.0 * math.pi,
          child: child,
        );
      },
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221101163948.2: *5* AnimatedContainerExample
//@@language dart
//@@tabwidth -2
class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  //@+others
  //@+node:swot.20221101163948.3: *6* varible
  bool selected = false;
  //@+node:swot.20221101163948.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221101165100.1: *7* GestureDetector
    GestureDetector(
      onTap: () {
        setState(() { selected = !selected; });
      },
      child: Center(
        child:
        //@+others
        //@+node:swot.20221101165100.2: *8* AnimatedContainer
        AnimatedContainer(
          width: selected ? 150.0 : 25.0,
          height: selected ? 25.0 : 40.0,
          color: selected ? Colors.blueGrey : Colors.grey,
          alignment: selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: const FlutterLogo(size: 20.0),
        ),
        //@-others
      ),
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221031193012.2: *5* AnimatedCrossFadeExample
//@@language dart
//@@tabwidth -2
class AnimatedCrossFadeExample extends StatefulWidget {
  const AnimatedCrossFadeExample({super.key});

  @override
  State<AnimatedCrossFadeExample> createState() =>
      _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {
  //@+others
  //@+node:swot.20221031193012.3: *6* varible
  bool selected = false;
  //@+node:swot.20221031193012.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221031193341.2: *7* Row
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //@+others
        //@+node:swot.20221031193450.1: *8* TextButton
        Container(
          height: 30.0,
          child: TextButton(
            onPressed: () {
              setState(() {
                selected = !selected;
              });
            },
            child: const Text(
              'AnimatedCrossFade',
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
          crossFadeState:
              selected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 1),
        ),
        //@-others
      ],
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221101175102.2: *5* AnimatedDefaultTextStyleExample
//@@language dart
//@@tabwidth -2
class AnimatedDefaultTextStyleExample extends StatefulWidget {
  const AnimatedDefaultTextStyleExample({super.key});

  @override
  State<AnimatedDefaultTextStyleExample> createState() =>
      _AnimatedDefaultTextStyleExampleState();
}

class _AnimatedDefaultTextStyleExampleState
    extends State<AnimatedDefaultTextStyleExample> {
  //@+others
  //@+node:swot.20221101175102.3: *6* varible
  bool selected = false;
  double _fontSize = 20;
  Color _color = Colors.blue;
  //@+node:swot.20221101175102.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221101175533.1: *7* Row
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221101175533.2: *8* TextButton
        TextButton(
          onPressed: () {
            setState(() {
              _fontSize = selected ? 40 : 20;
              _color = selected ? Colors.blue : Colors.red;
              selected = !selected;
            });
          },
          child: const Text('AnimatedDefaultTextStyle'),
        ),
        //@+node:swot.20221101175533.3: *8* SizedBox
        SizedBox(
          height: 40,
          child:
          //@+others
          //@+node:swot.20221101175533.4: *9* AnimatedDefaultTextStyle
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
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221027192851.2: *5* AnimatedIconExample -- TickerProviderStateMixin
//@@language dart
//@@tabwidth -2
class AnimatedIconExample extends StatefulWidget {
  const AnimatedIconExample({super.key});

  @override
  State<AnimatedIconExample> createState() => _AnimatedIconExampleState();
}

class _AnimatedIconExampleState extends State<AnimatedIconExample>
    with TickerProviderStateMixin {
  //@+others
  //@+node:swot.20221027192851.3: *6* varible
  bool _isPlay = false;
  late AnimationController _controllerIcon;
  //@+node:swot.20221027192851.4: *6* initState()
  @override
  void initState() {
    _controllerIcon = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this // use TickerProviderStateMixin
    );
    super.initState();
  }

  //@+node:swot.20221027192851.5: *6* dispose()
  @override
  void dispose() {
    _controllerIcon.dispose();
    super.dispose();
  }

  //@+node:swot.20221027192851.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221027194101.1: *7* GestureDetector
    GestureDetector(
      onTap: () {
        if (_isPlay == false) {
          _controllerIcon.forward(); // next icon
          _isPlay = true;
        } else {
          _controllerIcon.reverse(); // previous icon
          _isPlay = false;
        }
      },
      child:
      //@+others
      //@+node:swot.20221027194101.2: *8* AnimatedIcon
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

//@+node:swot.20221101181708.2: *5* AnimatedListExample
//@@language dart
//@@tabwidth -2
class AnimatedListExample extends StatefulWidget {
  const AnimatedListExample({super.key});

  @override
  State<AnimatedListExample> createState() => _AnimatedListExampleState();
}

class _AnimatedListExampleState extends State<AnimatedListExample> {
  //@+others
  //@+node:swot.20221101181708.3: *6* varible
  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  void _addItem() {
    _items.insert(0, "Item ${_items.length + 1}");
    _key.currentState!.insertItem(
      0,
      duration: const Duration(seconds: 1),
    );
  }

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
              visualDensity:
                  VisualDensity(vertical: -3), // adjust listTile height
              dense: true,
            ),
          ),
        );
      },
      duration: const Duration(milliseconds: 600),
    );
    _items.removeAt(index);
  }

  //@+node:swot.20221101181708.4: *6* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221101181708.5: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221101181708.6: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221101182425.2: *7* Column
    Column(
      children: [
        //@+others
        //@+node:swot.20221101182506.1: *8* IconButton
        IconButton(
          onPressed: _addItem,
          icon: const Icon(Icons.add),
        ),
        //@+node:swot.20221101182536.1: *8* SizedBox
        SizedBox(
          height: 150,
          child:
          //@+others
          //@+node:swot.20221101182340.2: *9* AnimatedList
          AnimatedList(
            key: _key,
            initialItemCount: 0,
            padding: const EdgeInsets.all(10),
            itemBuilder: (context, index, animation) {
              //@+others
              //@+node:swot.20221101182340.3: *10* SizeTransition
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
                      onPressed: () {
                        _removeItem(index);
                      },
                    ),
                    visualDensity: const VisualDensity(vertical: -3), // adjust listTile height
                    dense: true, // 高度会更加紧密，就是高度更小的意思
                  ),
                ),
              );
              //@-others
            },
          ),
          //@-others
        ),
        //@-others
      ],
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221017093031.180: *5* AnimatedModalBarrierExample
//@@language dart
//@@tabwidth -2
class AnimatedModalBarrierExample extends StatefulWidget {
  const AnimatedModalBarrierExample({super.key});

  @override
  State<AnimatedModalBarrierExample> createState() =>
      _AnimatedModalBarrierExampleState();
}

class _AnimatedModalBarrierExampleState
    extends State<AnimatedModalBarrierExample>
    with SingleTickerProviderStateMixin {
  //@+others
  //@+node:swot.20221017093031.181: *6* varible
  bool _isPressed = false;
  late Widget _animatedModalBarrier;
  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  //@+node:swot.20221017093031.182: *6* initState()
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
      dismissible: false,
    );

    super.initState();
  }

  //@+node:swot.20221017093031.183: *6* dispose()
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  //@+node:swot.20221017093031.184: *6* build()
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: 150.0,
      child:
      //@+others
      //@+node:swot.20221101193037.1: *7* Stack
      Stack(
        alignment: AlignmentDirectional.center,
        children: [
          //@+others
          //@+node:swot.20221017093031.185: *8* ElevatedButton
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orangeAccent,
            ),
            onPressed: () {
              setState(() {
                _isPressed = true;
              });
              _animationController.reset();
              _animationController.forward();
              Future.delayed(const Duration(seconds: 3), () {
                setState(() {
                  _isPressed = false;
                });
              });
            },
            child: const Text('Press'),
          ),
          //@+node:swot.20221017093031.186: *8* _animatedModalBarrier
          if (_isPressed) _animatedModalBarrier,
          //@-others
        ],
      ),
      //@-others
    );
  }
  //@-others
}

//@+node:swot.20221017093031.188: *5* AnimatedOpacityExample
//@@language dart
//@@tabwidth -2
class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({super.key});

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  //@+others
  //@+node:swot.20221017093031.189: *6* varible
  double opacityLevel = 1.0;
  //@+node:swot.20221017093031.191: *6* build()
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221017093031.192: *7* AnimatedOpacity
        AnimatedOpacity(
          opacity: opacityLevel,
          duration: const Duration(seconds: 2),
          child: const FlutterLogo(size: 30),
        ),

        //@+node:swot.20221017093031.193: *7* ElevatedButton
        ElevatedButton(
          child: const Text('AnimatedOpacity Fade Logo'),
          onPressed: () {
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

//@+node:swot.20221017093031.197: *5* AnimatedPaddingExample
//@@language dart
//@@tabwidth -2
class AnimatedPaddingExample extends StatefulWidget {
  const AnimatedPaddingExample({super.key});

  @override
  State<AnimatedPaddingExample> createState() => _AnimatedPaddingExampleState();
}

class _AnimatedPaddingExampleState extends State<AnimatedPaddingExample> {
  //@+others
  //@+node:swot.20221017093031.198: *6* varible
  double padValue = 0.0;
  //@+node:swot.20221017093031.199: *6* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221017093031.200: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221017093031.201: *7* Column
    Column(
      children: [
        //@+others
        //@+node:swot.20221017093031.202: *8* Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //@+others
            //@+node:swot.20221017093031.203: *9* ElevatedButton
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
              ),
              child: const Text('Change padding'),
              onPressed: () {
                setState(() {
                  padValue = padValue == 0.0 ? 100.0 : 0.0;
                });
              },
            ),

            //@+node:swot.20221017093031.204: *9* Text
            Text('Padding = $padValue'),
            //@-others
          ],
        ),
        //@+node:swot.20221017093031.205: *8* AnimatedPadding
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

//@+node:swot.20221017093031.208: *5* AnimatedPhysicalModelExample
//@@language dart
//@@tabwidth -2
class AnimatedPhysicalModelExample extends StatefulWidget {
  const AnimatedPhysicalModelExample({super.key});

  @override
  State<AnimatedPhysicalModelExample> createState() =>
      _AnimatedPhysicalModelExampleState();
}

class _AnimatedPhysicalModelExampleState
    extends State<AnimatedPhysicalModelExample> {
  //@+others
  //@+node:swot.20221017093031.209: *6* varible
  bool isFlat = true;
  //@+node:swot.20221017093031.210: *6* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221017093031.211: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221017093031.212: *6* build()
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221017093031.213: *7* ElevatedButton
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.orangeAccent,
              ),
          child: const Text('Click'),
          onPressed: () {
            setState(() {
              isFlat = !isFlat;
            });
          },
        ),

        //@+node:swot.20221017093031.214: *7* AnimatedPhysicalModel
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

//@+node:swot.20221017093031.217: *5* AnimatedPositionedExample
//@@language dart
//@@tabwidth -2
class AnimatedPositionedExample extends StatefulWidget {
  const AnimatedPositionedExample({super.key});

  @override
  State<AnimatedPositionedExample> createState() =>
      _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
  //@+others
  //@+node:swot.20221017093031.218: *6* varible
  bool selected = false;
  //@+node:swot.20221017093031.219: *6* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221017093031.220: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221017093031.221: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221017093031.222: *7* SizedBox
    SizedBox(
      width: 200,
      height: 100,
      child:
      //@+others
      //@+node:swot.20221017093031.223: *8* Stack
      Stack(children: [
        //@+others
        //@+node:swot.20221017093031.224: *9* AnimatedPositioned
        AnimatedPositioned(
          width: selected ? 200.0 : 150.0,
          height: selected ? 60.0 : 20.0,
          top: selected ? 35.0 : 5.0,
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
              child: const Text('AnimatedPositioned click change position'),
            ),
          ),
        ),
        //@-others
      ]),
      //@-others
    );
    //@-others
  }
  //@-others
}

//@+node:swot.20221017093031.227: *5* AnimatedRotationExample
//@@language dart
//@@tabwidth -2
class AnimatedRotationExample extends StatefulWidget {
  const AnimatedRotationExample({super.key});

  @override
  State<AnimatedRotationExample> createState() =>
      _AnimatedRotationExampleState();
}

class _AnimatedRotationExampleState extends State<AnimatedRotationExample> {
  //@+others
  //@+node:swot.20221017093031.228: *6* varible
  double turns = 0.0;
  //@+node:swot.20221017093031.229: *6* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221017093031.230: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221017093031.231: *6* build()
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221017093031.232: *7* ElevatedButton
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.orangeAccent,
              ),
          onPressed: () {
            setState(() {
              turns += 1 / 4;
            });
          },
          child: const Text('AnimatedRotation Rotate Logo'),
        ),

        //@+node:swot.20221017093031.233: *7* Padding
        Padding(
          padding: const EdgeInsets.all(5),
          child:
          //@+others
          //@+node:swot.20221101201546.1: *8* AnimatedRotation
          AnimatedRotation(
            turns: turns,
            duration: const Duration(seconds: 1),
            child: const FlutterLogo(size: 40),
          ),
          //@-others
        ),
        //@-others
      ],
    );
  }
  //@-others
}

//@+node:swot.20221017093031.236: *5* AnimatedSizeExample
//@@language dart
//@@tabwidth -2
class AnimatedSizeExample extends StatefulWidget {
  const AnimatedSizeExample({super.key});

  @override
  State<AnimatedSizeExample> createState() => _AnimatedSizeExampleState();
}

class _AnimatedSizeExampleState extends State<AnimatedSizeExample> {
  //@+others
  //@+node:swot.20221017093031.237: *6* varible
  double _size = 30;
  //@+node:swot.20221017093031.238: *6* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221017093031.239: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221017093031.240: *6* build()
  //@@language dart
  //@@tabwidth -2
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221017093031.241: *7* Text
        Text("Click logo change size"),
        //@+node:swot.20221017093031.242: *7* GestureDetector AnimatedSize FlutterLogo
        GestureDetector(
          onTap: () {
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

//@+node:swot.20221017093031.244: *5* AnimatedSwitcherExample
//@@language dart
//@@tabwidth -2
class AnimatedSwitcherExample extends StatefulWidget {
  const AnimatedSwitcherExample({super.key});

  @override
  State<AnimatedSwitcherExample> createState() =>
      _AnimatedSwitcherExampleState();
}

class _AnimatedSwitcherExampleState extends State<AnimatedSwitcherExample> {
  //@+others
  //@+node:swot.20221017093031.245: *6* varible
  int _count = 0;
  //@+node:swot.20221017093031.246: *6* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221017093031.247: *6* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221017093031.248: *6* build()
  //@@language dart
  //@@tabwidth -2
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221017093031.249: *7* ElevatedButton
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

        //@+node:swot.20221017093031.250: *7* AnimatedSwitcher
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),

          // Custom default animation
          // transitionBuilder: (Widget child, Animation<double> animation) {
          // return ScaleTransition(scale: animation, child: child);
          // },

          child: Text(
            '$_count',
            style: const TextStyle(fontSize: 30),
            key: ValueKey(_count), // IMPORTANT no key no animation
          ),
        ),
        //@-others
      ],
    );
  }
  //@-others
}

//@+node:swot.20221017093031.256: *5* AutoCompleteExample 不要在屏幕中部以下(会被软键盘挡住)
//@@language dart
//@@tabwidth -2
class AutoCompleteExample extends StatelessWidget {
  const AutoCompleteExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221017093031.257: *6* varible
  static const List<String> listItems = <String>[
    'apple',
    'banana',
    'melon',
  ];
  //@+node:swot.20221017093031.258: *6* build()
  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        // user input value
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

//@+node:swot.20221021133039.1: *4* B Example
//@+node:swot.20221021171949.1: *5* B  -- Scaffold
class B extends StatelessWidget {
  const B({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //@+others
        //@+node:swot.20221021173128.1: *6* AppBar
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
              onPressed: () {},
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
          elevation: 0.0, // 去掉 appBar 与 body 之间的阴影
        ),
        //@-others
        body: DemoB(),
      ),
    );
  }
}

//@+node:swot.20221021172558.1: *5* DemoB
//@@language dart
//@@tabwidth -2
class DemoB extends StatefulWidget {
  const DemoB({super.key});

  @override
  State<DemoB> createState() => _DemoBState();
}

class _DemoBState extends State<DemoB> {
  //@+others
  //@+node:swot.20221021172558.14: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221021172558.15: *7* SingleChildScrollView
    SingleChildScrollView(
      child:
      //@+others
      //@+node:swot.20221021172558.16: *8* Column
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //@+others
        //@+node:swot.20221021173506.1: *9* show BackdropFilterExample
        BackdropFilterExample(),
        Divider(),
        //@+node:swot.20221021181118.1: *9* show BannerExample
        BannerExample(),
        Divider(),
        //@+node:swot.20221021181700.1: *9* show BaselineExample
        BaselineExample(),
        Divider(),
        //@+node:swot.20221022085519.1: *9* show BlockSemanticsExample
        BlockSemanticsExample(),
        Divider(),
        //@+node:swot.20221022101129.1: *9* show BottomNavigationBarExample
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
        Divider(),
        //@+node:swot.20221022094818.1: *9* show BottomSheetExample
        BottomSheetExample(),
        Divider(),
        //@+node:swot.20221022111104.1: *9* show BuilderExample
        BuilderExample(),
        Divider(),
        //@-others
      ]),
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221022121355.1: *5* ExampleB
//@+node:swot.20221019111317.2: *6* BackdropFilterExample
//@@language dart
//@@tabwidth -2
class BackdropFilterExample extends StatelessWidget {
  const BackdropFilterExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221019111317.3: *7* build()
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

//@+node:swot.20221021175217.2: *6* BannerExample
//@@language dart
//@@tabwidth -2
class BannerExample extends StatelessWidget {
  const BannerExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221021175217.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221021175330.1: *8* Center
    Center(
      child:
      //@+others
      //@+node:swot.20221021175401.1: *9* Container
      Container(
        margin: const EdgeInsets.all(10.0),
        child:
        //@+others
        //@+node:swot.20221021180745.1: *10* ClipRect
        ClipRect(
          child:
          //@+others
          //@+node:swot.20221021180828.1: *11* Banner
          Banner(
            message: "25% off",
            location: BannerLocation.topEnd,
            color: Colors.red,
            child:
            //@+others
            //@+node:swot.20221021175506.1: *12* Container
            Container(
              color: Colors.blueGrey,
              child:
              //@+others
              //@+node:swot.20221021175604.1: *13* Padding
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child:
                //@+others
                //@+node:swot.20221021175702.1: *14* Column
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //@+others
                    //@+node:swot.20221021175915.1: *15* Image
                    Image.network(
                      'https://img1.baidu.com/it/u=1855083458,281793390&fm=253&fmt=auto&app=138&f=JPEG?w=989&h=500',
                    ),
                    //@+node:swot.20221021180035.1: *15* SizedBox
                    const SizedBox(height: 10),
                    //@+node:swot.20221021180106.1: *15* Row
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

//@+node:swot.20221021181642.2: *6* BaselineExample
//@@language dart
//@@tabwidth -2
class BaselineExample extends StatelessWidget {
  const BaselineExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221021181642.3: *7* build()
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
          child: FlutterLogo(
            size: 30,
          ),
        ),
      ),
    );
  }
  //@-others
}

//@+node:swot.20221022080218.2: *6* BlockSemanticsExample
//@@language dart
//@@tabwidth -2
class BlockSemanticsExample extends StatefulWidget {
  const BlockSemanticsExample({super.key});

  @override
  State<BlockSemanticsExample> createState() => _BlockSemanticsExampleState();
}

class _BlockSemanticsExampleState extends State<BlockSemanticsExample> {
  //@+others
  //@+node:swot.20221022083723.1: *7* varible
  bool isShow = false;
  //@+node:swot.20221022080218.3: *7* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221022080218.4: *7* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221022080218.5: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221022080422.1: *8* SizedBox
    SizedBox(
      width: double.infinity,
      child:
      //@+others
      //@+node:swot.20221022083203.1: *9* SizedBox
      SizedBox(
        width: 500,
        height: 135,
        child:
        //@+others
        //@+node:swot.20221022083954.1: *10* Column
        Column(children: [
          //@+others
          //@+node:swot.20221022084045.1: *11* OutlinedButton
          OutlinedButton(
            onPressed: () {
              setState(() {
                isShow = true;
              });
            },
            child: const Text('Click'),
          ),
          //@+node:swot.20221022084513.1: *11* if (isShow)
          if (isShow)
            //@+others
            //@+node:swot.20221022091825.1: *12* BlockSemantics
            BlockSemantics(
              blocking: isShow, // hidden OutlinedButton?
              child:
                  //@+others
                  //@+node:swot.20221022090937.1: *13* Card
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
        ]),
        //@-others
      ),
      //@-others
    );
    //@-others
  }
  //@-others
}

//@+node:swot.20221022094100.2: *6* BottomNavigationBarExample
//@@language dart
//@@tabwidth -2
class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  //@+others
  //@+node:swot.20221022094133.1: *7* varible
  int _currentIndex = 0;

  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.person),
  ];

  //@+node:swot.20221022094100.5: *7* build()
  @override
  Widget build(BuildContext context) {
    //@+others
    //@+node:swot.20221022095720.2: *8* Scaffold
    return Scaffold(
      //@+others
      //@+node:swot.20221022101748.1: *9* appBar
      appBar: AppBar(
        title: Text('BottomNavigationBar'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221022095720.4: *9* body
      body: Center(
        child: body[_currentIndex],
      ),
      //@+node:swot.20221022095720.5: *9* bottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
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
          type: BottomNavigationBarType.fixed,
          // type: BottomNavigationBarType.shifting,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
      ),
      //@-others
    );

    //@-others
  }
  //@-others
}

//@+node:swot.20221022104843.2: *6* BottomSheetExample
//@@language dart
//@@tabwidth -2
class BottomSheetExample extends StatefulWidget {
  const BottomSheetExample({super.key});

  @override
  State<BottomSheetExample> createState() => _BottomSheetExampleState();
}

class _BottomSheetExampleState extends State<BottomSheetExample> {
  //@+others
  //@+node:swot.20221022104843.5: *7* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Modal Bottom Sheet'),
        onPressed: () {
          //@+others
          //@+node:swot.20221110210618.1: *8* showModalBottomSheet !!!
          showModalBottomSheet(
            context: context,
            // isScrollControlled: true,   // 可以滚动
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            builder: (BuildContext context) {
              return Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  // mainAxisSize: MainAxisSize.min,  // 收缩到最小
                  children: [
                    FlutterLogo(size: 120),
                    FlutterLogo(size: 120),
                    FlutterLogo(size: 120),
                    FlutterLogo(size: 120),
                    Center(
                      child: ElevatedButton(
                        child: const Text('Close'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              );
              // return SizedBox(
                // height: 200,
                // child: Center(
                  // child: ElevatedButton(
                    // child: const Text('Close'),
                    // onPressed: () {
                      // Navigator.pop(context);
                    // },
                  // ),
                // ),
              // );
            },
          );
          //@-others
        },
      ),
    );
  }
  //@-others
}

//@+node:swot.20221022110627.2: *6* BuilderExample
//@@language dart
//@@tabwidth -2
class BuilderExample extends StatelessWidget {
  const BuilderExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022110627.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return myBuilderWidget();
  }

  //@+node:swot.20221022110900.1: *7* myBuilderWidget()
  // 不加 Builder,则无法找到上面 build's context,
  myBuilderWidget() => Builder(builder: (context) {
    return Text(
      'Text with Theme',
      // context 需要使用上面的 Builder 来获取
      style: Theme.of(context).textTheme.displayLarge,
    );
  });
  //@-others
}

//@+node:swot.20221022121254.1: *4* C Example
//@+node:swot.20221022121336.1: *5* C  -- Scaffold
class C extends StatelessWidget {
  const C({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //@+others
        //@+node:swot.20221022121336.2: *6* AppBar
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
              onPressed: () {},
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
          elevation: 0.0, // 去掉 appBar 与 body 之间的阴影
        ),
        //@-others
        body: DemoC(),
      ),
    );
  }
}

//@+node:swot.20221022121559.1: *5* DemoC
//@@language dart
//@@tabwidth -2
class DemoC extends StatefulWidget {
  const DemoC({super.key});

  @override
  State<DemoC> createState() => _DemoCState();
}

class _DemoCState extends State<DemoC> {
  //@+others
  //@+node:swot.20221022121559.2: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221022121559.3: *7* SingleChildScrollView
    SingleChildScrollView(
      child:
      //@+others
      //@+node:swot.20221022121559.4: *8* Column
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //@+others
        //@+node:swot.20221022121559.5: *9* show CardExample
        CardExample(),
        Divider(),
        //@+node:swot.20221022123052.1: *9* show CenterExample
        CenterExample(),
        Divider(),
        //@+node:swot.20221022141621.1: *9* show CheckboxExample
        CheckboxExample(),
        Divider(),
        //@+node:swot.20221022142602.1: *9* show CheckboxListTileExample
        CheckboxListTileExample(),
        Divider(),
        //@+node:swot.20221022143204.1: *9* show ChipExample
        ChipExample(),
        Divider(),
        //@+node:swot.20221022144701.1: *9* show ChoiceChipExample
        ChoiceChipExample(),
        Divider(),
        //@+node:swot.20221022145230.1: *9* show CircleAvatarExample
        CircleAvatarExample(),
        Divider(),
        //@+node:swot.20221022153425.1: *9* show CircularProgressIndicatorExample
        CircularProgressIndicatorExample(),
        Divider(),
        //@+node:swot.20221022154220.1: *9* show ClipOvalExample
        ClipOvalExample(),
        Divider(),
        //@+node:swot.20221022162124.1: *9* show ClipPathExample
        ClipPathExample(),
        Divider(),
        //@+node:swot.20221022164554.1: *9* show ClipRectExample
        ClipRectExample(),
        Divider(),
        //@+node:swot.20221022165721.1: *9* show ClipRRectExample
        ClipRRectExample(),
        Divider(),
        //@+node:swot.20221022170737.1: *9* show CloseButtonExample
        CloseButtonExample(),
        Divider(),
        //@+node:swot.20221022171708.1: *9* show ColoredBoxExample
        ColoredBoxExample(),
        Divider(),
        //@+node:swot.20221022173017.1: *9* show ColorFilteredExample
        ColorFilteredExample(),
        Divider(),
        //@+node:swot.20221022202111.1: *9* show ConstrainedBoxExample
        ConstrainedBoxExample(),
        Divider(),
        //@+node:swot.20221022203303.1: *9* show ContainerExample
        ContainerExample(),
        Divider(),
        //@+node:swot.20221022203824.1: *9* show ColumnExample
        ColumnExample(),
        Divider(),
        //@+node:swot.20221022210532.1: *9* show CupertinoActionSheetExample
        CupertinoActionSheetExample(),
        Divider(),
        //@+node:swot.20221022214055.1: *9* show CupertinoAppExample
        CupertinoAppExample(),
        Divider(),
        //@+node:swot.20221023164513.1: *9* show CupertinoContextMenuExample
        CupertinoContextMenuExample(),
        Divider(),
        //@+node:swot.20221031083344.1: *9* show CupertinoSlidingSegmentedControlExample
        CupertinoSlidingSegmentedControlExample(),
        Divider(),
        //@-others
      ]),

      //@-others
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221022121728.1: *5* ExampleC
//@+node:swot.20221022121755.2: *6* CardExample
//@@language dart
//@@tabwidth -2
class CardExample extends StatelessWidget {
  const CardExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022121755.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      //@+others
      //@+node:swot.20221022122022.1: *8* Card
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

//@+node:swot.20221022122655.2: *6* CenterExample
//@@language dart
//@@tabwidth -2
class CenterExample extends StatelessWidget {
  const CenterExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022122655.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        color: Colors.orangeAccent,
        child:
        //@+others
        //@+node:swot.20221022122945.1: *8* Center
        const Center(
          heightFactor: 5, // Text 组件高度倍数（Container有高度则无效）
          child: Text('Flutter learning'),
        ),
        //@-others
      ),
    ]);
  }
  //@-others
}

//@+node:swot.20221022141252.2: *6* CheckboxExample
//@@language dart
//@@tabwidth -2
class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  //@+others
  //@+node:swot.20221022141315.1: *7* varible
  bool? isChecked = false;
  //@+node:swot.20221022141252.3: *7* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221022141252.4: *7* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221022141252.5: *7* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          //@+others
          //@+node:swot.20221110225519.1: *8* Theme
          Theme(
            data: Theme.of(context).copyWith(
              unselectedWidgetColor: Colors.blue,
            ),
            child:
                //@+others
                //@+node:swot.20221110225224.1: *9* Checkbox !!!
                Checkbox(
                  value: isChecked,
                  activeColor: Colors.orangeAccent,
                  checkColor: Colors.red,
                  tristate: true, // allow null value
                  onChanged: (newBool) {
                    setState(() {
                      isChecked = newBool;
                    });
                  },
                ),
                //@-others
          ),
          //@-others
    );
  }
  //@-others
}

//@+node:swot.20221022141946.2: *6* CheckboxListTileExample
//@@language dart
//@@tabwidth -2
class CheckboxListTileExample extends StatefulWidget {
  const CheckboxListTileExample({super.key});

  @override
  State<CheckboxListTileExample> createState() =>
      _CheckboxListTileExampleState();
}

class _CheckboxListTileExampleState extends State<CheckboxListTileExample> {
  //@+others
  //@+node:swot.20221022142005.1: *7* varible
  bool? _isChecked = false;
  //@+node:swot.20221022141946.5: *7* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      //@+others
      //@+node:swot.20221022142124.1: *8* CheckboxListTile
      CheckboxListTile(
        title: const Text('Checkbox List Tile'),
        value: _isChecked,
        activeColor: Colors.orangeAccent,
        checkColor: Colors.white,
        tileColor: Colors.black12,
        subtitle: const Text('This is a subtitle'),
        controlAffinity: ListTileControlAffinity.leading,
        tristate: true,
        onChanged: (bool? newValue) {
          setState(() {
            _isChecked = newValue;
          });
        },
      ),
      //@-others
    );
  }
  //@-others
}

//@+node:swot.20221022142919.2: *6* ChipExample
//@@language dart
//@@tabwidth -2
class ChipExample extends StatelessWidget {
  const ChipExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022142919.3: *7* build()
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

//@+node:swot.20221022144339.2: *6* ChoiceChipExample
//@@language dart
//@@tabwidth -2
class ChoiceChipExample extends StatefulWidget {
  const ChoiceChipExample({super.key});

  @override
  State<ChoiceChipExample> createState() => _ChoiceChipExampleState();
}

class _ChoiceChipExampleState extends State<ChoiceChipExample> {
  //@+others
  //@+node:swot.20221022144356.1: *7* varible
  bool isSelected = false;
  //@+node:swot.20221022144339.5: *7* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ChoiceChip(
        avatar: Image.asset('assets/avatar.webp'),
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

//@+node:swot.20221022145018.2: *6* CircleAvatarExample
//@@language dart
//@@tabwidth -2
class CircleAvatarExample extends StatelessWidget {
  const CircleAvatarExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022145018.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircleAvatar(
        backgroundColor: Colors.orangeAccent,
        radius: 30,
        // backgroundImage: AssetImage(''),
        backgroundImage: NetworkImage(
            "https://img1.baidu.com/it/u=4237790906,511339359&fm=253&fmt=auto&app=138&f=JPEG?w=400&h=400"),
        child: Text(
          'Hello',
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
  //@-others
}

//@+node:swot.20221022153237.2: *6* CircularProgressIndicatorExample
//@@language dart
//@@tabwidth -2
class CircularProgressIndicatorExample extends StatefulWidget {
  const CircularProgressIndicatorExample({super.key});

  @override
  State<CircularProgressIndicatorExample> createState() =>
      _CircularProgressIndicatorExampleState();
}

class _CircularProgressIndicatorExampleState
    extends State<CircularProgressIndicatorExample> {
  //@+others
  //@+node:swot.20221022153237.3: *7* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221022153237.4: *7* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221022153237.5: *7* build()
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

//@+node:swot.20221022153848.2: *6* ClipOvalExample
//@@language dart
//@@tabwidth -2
class ClipOvalExample extends StatelessWidget {
  const ClipOvalExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022153848.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        clipper: CustomClip(), // change shape
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

//@+node:swot.20221022154849.1: *6* CustomClip
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

//@+node:swot.20221022161946.2: *6* ClipPathExample
//@@language dart
//@@tabwidth -2
class ClipPathExample extends StatelessWidget {
  const ClipPathExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022161946.3: *7* build()
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

//@+node:swot.20221022162343.1: *6* MyClipper1
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

//@+node:swot.20221022163926.2: *6* ClipRectExample
//@@language dart
//@@tabwidth -2
class ClipRectExample extends StatelessWidget {
  const ClipRectExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022163926.3: *7* build()
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

//@+node:swot.20221022164337.1: *6* MyClipper2
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

//@+node:swot.20221022165324.2: *6* ClipRRectExample
//@@language dart
//@@tabwidth -2
class ClipRRectExample extends StatefulWidget {
  const ClipRRectExample({super.key});

  @override
  State<ClipRRectExample> createState() => _ClipRRectExampleState();
}

class _ClipRRectExampleState extends State<ClipRRectExample> {
  //@+others
  //@+node:swot.20221022165324.3: *7* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221022165324.4: *7* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221022165324.5: *7* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.network(
            'https://img1.baidu.com/it/u=3866320064,995069430&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=500',
            width: 250),
      ),
    );
  }
  //@-others
}

//@+node:swot.20221022170557.2: *6* CloseButtonExample
//@@language dart
//@@tabwidth -2
class CloseButtonExample extends StatelessWidget {
  const CloseButtonExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022170557.3: *7* build()
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

//@+node:swot.20221022171523.2: *6* ColoredBoxExample
//@@language dart
//@@tabwidth -2
class ColoredBoxExample extends StatelessWidget {
  const ColoredBoxExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022171523.3: *7* build()
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

//@+node:swot.20221022172641.2: *6* ColorFilteredExample
//@@language dart
//@@tabwidth -2
class ColorFilteredExample extends StatelessWidget {
  const ColorFilteredExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022172641.3: *7* build()
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

//@+node:swot.20221022201619.2: *6* ConstrainedBoxExample
//@@language dart
//@@tabwidth -2
class ConstrainedBoxExample extends StatelessWidget {
  const ConstrainedBoxExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022201619.3: *7* build()
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

//@+node:swot.20221022202825.2: *6* ContainerExample
//@@language dart
//@@tabwidth -2
class ContainerExample extends StatelessWidget {
  const ContainerExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022202825.3: *7* build()
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

//@+node:swot.20221022203601.2: *6* ColumnExample
//@@language dart
//@@tabwidth -2
class ColumnExample extends StatelessWidget {
  const ColumnExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022203601.3: *7* build()
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

//@+node:swot.20221022210338.2: *6* CupertinoActionSheetExample
//@@language dart
//@@tabwidth -2
class CupertinoActionSheetExample extends StatefulWidget {
  const CupertinoActionSheetExample({super.key});

  @override
  State<CupertinoActionSheetExample> createState() =>
      _CupertinoActionSheetExampleState();
}

class _CupertinoActionSheetExampleState
    extends State<CupertinoActionSheetExample> {
  //@+others
  //@+node:swot.20221022210338.3: *7* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221022210338.4: *7* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221022210338.5: *7* build()
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // Not important here
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
                    onPressed: () {
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

//@+node:swot.20221022213243.2: *6* CupertinoAppExample
//@@language dart
//@@tabwidth -2
class CupertinoAppExample extends StatelessWidget {
  const CupertinoAppExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022213243.3: *7* build()
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

//@+node:swot.20221022213726.2: *6* MyCupertinoApp
//@@language dart
//@@tabwidth -2
class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022213726.3: *7* build()
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

//@+node:swot.20221023163418.2: *6* CupertinoContextMenuExample
//@@language dart
//@@tabwidth -2
class CupertinoContextMenuExample extends StatelessWidget {
  const CupertinoContextMenuExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221023163418.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 100,
        height: 100,
        child:
        //@+others
        //@+node:swot.20221023163626.1: *8* CupertinoContextMenu
        CupertinoContextMenu(
          child: Image.network(
            'https://img0.baidu.com/it/u=574351580,3649561547&fm=253&fmt=auto&app=138&f=JPEG?w=640&h=320',
          ),
          actions: <Widget>[
            CupertinoContextMenuAction(
              child: const Text('Action one'),
              onPressed: () { Navigator.pop(context); },
            ),
            CupertinoContextMenuAction(
              child: const Text('Action two'),
              onPressed: () { Navigator.pop(context); },
            ),
          ],
        ),
        //@-others
      ),
    );
  }
  //@-others
}

//@+node:swot.20221031082929.2: *6* CupertinoSlidingSegmentedControlExample
//@@language dart
//@@tabwidth -2
class CupertinoSlidingSegmentedControlExample extends StatefulWidget {
  const CupertinoSlidingSegmentedControlExample({super.key});

  @override
  State<CupertinoSlidingSegmentedControlExample> createState() =>
      _CupertinoSlidingSegmentedControlExampleState();
}

class _CupertinoSlidingSegmentedControlExampleState
    extends State<CupertinoSlidingSegmentedControlExample> {
  //@+others
  //@+node:swot.20221031083017.1: *7* value
  int? _sliding = 0;
  //@+node:swot.20221031082929.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221031083051.1: *8* CupertinoSlidingSegmentedControl
    CupertinoSlidingSegmentedControl(
      groupValue: _sliding,
      onValueChanged: (int? newValue) {
        setState(() { _sliding = newValue; });
      },
      children: {
        0: Text('Text 0'),
        1: Text('Text 1'),
        2: Text('Text 2'),
      },
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221024065815.1: *4* D Example
//@+node:swot.20221024065902.1: *5* D  -- Scaffold
class D extends StatelessWidget {
  const D({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //@+others
        //@+node:swot.20221024065902.2: *6* AppBar
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
              onPressed: () {},
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
          elevation: 0.0, // 去掉 appBar 与 body 之间的阴影
        ),
        //@-others
        body: DemoD(),
      ),
    );
  }
}

//@+node:swot.20221024070012.1: *5* DemoD
//@@language dart
//@@tabwidth -2
class DemoD extends StatefulWidget {
  const DemoD({super.key});

  @override
  State<DemoD> createState() => _DemoDState();
}

class _DemoDState extends State<DemoD> {
  //@+others
  //@+node:swot.20221024070127.1: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221024070127.2: *7* SingleChildScrollView
    SingleChildScrollView(
      child:
      //@+others
      //@+node:swot.20221024070127.3: *8* Column
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //@+others
        //@+node:swot.20221024112602.1: *9* show DismissibleExample
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
        //@+node:swot.20221102102136.1: *9* ElevatedButton -- show DividerExample
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            // backgroundColor: Colors.orangeAccent,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DividerExample(),
              ),
            );
          },
          child: const Text('DividerExample'),
        ),

        //@+node:swot.20221025075357.1: *9* show DraggableScrollableExample
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
        //@+node:swot.20221025091113.1: *9* show DragTargetExample
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
        //@+node:swot.20221025095859.1: *9* show DrawerExample
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
        //@+node:swot.20221110233828.1: *9* show DropDownButtonExample
        DropDownButtonExample(),
        //@-others
      ]),

      //@-others
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221024070225.1: *5* ExampleD
//@+node:swot.20221024112614.2: *6* DismissibleExample
//@@language dart
//@@tabwidth -2
class DismissibleExample extends StatefulWidget {
  const DismissibleExample({super.key});

  @override
  State<DismissibleExample> createState() => _DismissibleExampleState();
}

class _DismissibleExampleState extends State<DismissibleExample> {
  //@+others
  //@+node:swot.20221024112703.1: *7* varible
  List<int> items = List<int>.generate(50, (int index) => index);
  //@+node:swot.20221024112614.3: *7* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221024112614.4: *7* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221024112614.5: *7* build()
  @override
  Widget build(BuildContext context) {
    //@+others
    //@+node:swot.20221024113603.2: *8* Scaffold
    return Scaffold(
      //@+others
      //@+node:swot.20221024113603.3: *9* appBar
      appBar: AppBar(
        title: Text('DismissibleExample'),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221024113603.4: *9* body
      body:
      //@+others
      //@+node:swot.20221024113627.1: *10* ListView
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

//@+node:swot.20221102101634.2: *6* DividerExample
//@@language dart
//@@tabwidth -2
class DividerExample extends StatelessWidget {
  const DividerExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221102101634.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221102103902.2: *8* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221102103902.3: *9* appBar
      appBar: AppBar(
        title: Text(''),
        // leading: Icon(Icons.menu),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
        ],
      ),
      //@+node:swot.20221102103902.4: *9* body
      body:
      //@+others
      //@+node:swot.20221102103050.2: *10* Column
      Column(
        children: [
          //@+others
          //@+node:swot.20221102102110.1: *11* Container
          Container(
            width: double.infinity,
            height: 200.0,
            color: Colors.orange,
          ),
          //@+node:swot.20221102101649.1: *11* Divider
          const Divider(
            color: Colors.red,
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 40,
          ),
          //@+node:swot.20221102101920.2: *11* Container
          Container(
            width: double.infinity,
            height: 200.0,
            color: Colors.orange,
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

//@+node:swot.20221025074739.2: *6* DraggableScrollableExample
//@@language dart
//@@tabwidth -2
class DraggableScrollableExample extends StatelessWidget {
  const DraggableScrollableExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221025074739.3: *7* build()
  @override
  Widget build(BuildContext context) {
    //@+others
    //@+node:swot.20221025081258.2: *8* Scaffold
    return Scaffold(
      //@+others
      //@+node:swot.20221025081258.3: *9* appBar
      appBar: AppBar(
        title: Text('DraggableScrollableSheet'),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221025081258.4: *9* body
      body:
      //@+others
      //@+node:swot.20221025081316.1: *10* DraggableScrollableSheet
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

//@+node:swot.20221025081939.2: *6* DragTargetExample
//@@language dart
//@@tabwidth -2
class DragTargetExample extends StatefulWidget {
  const DragTargetExample({super.key});

  @override
  State<DragTargetExample> createState() => _DragTargetExampleState();
}

class _DragTargetExampleState extends State<DragTargetExample> {
  //@+others
  //@+node:swot.20221025081939.3: *7* varible
  Color caughtColor = Colors.red;
  //@+node:swot.20221025081939.4: *7* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221025081939.5: *7* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221025081939.6: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221025091431.2: *8* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221025091431.3: *9* appBar
      appBar: AppBar(
        title: Text('DragTargetExample'),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221025091431.4: *9* body
      body:
      //@+others
      //@+node:swot.20221025083125.1: *10* SizedBox
      SizedBox(
        width: double.infinity,
        child:
        //@+others
        //@+node:swot.20221025083519.1: *11* Column
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //@+others
            //@+node:swot.20221025083732.1: *12* Draggable
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
            //@+node:swot.20221025084843.1: *12* DragTarget
            DragTarget(
              onAccept: (Color color) {
                caughtColor = color; // color is Draggable data
              },
              builder: (BuildContext context, List<dynamic> accepted, List<dynamic> rejected) {
                return Container(
                  width: 200.0,
                  height: 200.0,
                  color: accepted.isEmpty
                      ? caughtColor
                      : Colors.grey.shade200,
                  child: const Center(
                    child: Text("Drag here"),
                  ),
                );
              },
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

//@+node:swot.20221025095334.2: *6* DrawerExample
//@@language dart
//@@tabwidth -2
class DrawerExample extends StatelessWidget {
  const DrawerExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221025095334.3: *7* build()
  @override
  Widget build(BuildContext context) {
    //@+others
    //@+node:swot.20221025095436.2: *8* Scaffold
    return Scaffold(
      //@+others
      //@+node:swot.20221025095436.3: *9* appBar
      appBar: AppBar(
        title: Text('NewPage'),
      ),
      //@+node:swot.20221025095436.4: *9* body
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

      //@+node:swot.20221025095602.1: *9* endDrawer
      endDrawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(title: const Text('Item 1'), onTap: () {}),
            ListTile(title: const Text('Item 2'), onTap: () {}),
          ],
        ),
      ),
      //@-others
    );

    //@-others
  }
  //@-others
}

//@+node:swot.20221110233138.2: *6* DropDownButtonExample
//@@language dart
//@@tabwidth -2
class DropDownButtonExample extends StatefulWidget {
  const DropDownButtonExample({super.key});

  @override
  State<DropDownButtonExample> createState() => _DropDownButtonExampleState();
}

class _DropDownButtonExampleState extends State<DropDownButtonExample>{
  //@+others
  //@+node:swot.20221110233138.3: *7* varible
  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
  ];

  String? selectedItem = 'Item 1';
  //@+node:swot.20221110233138.4: *7* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221110233138.5: *7* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221110233138.6: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221111000936.2: *8* Column
    Column(
      children: [
        //@+others
        //@+node:swot.20221111000057.1: *9* SizedBox
        SizedBox(
          width: 240,
          child:
          //@+others
          //@+node:swot.20221110233541.2: *10* DropdownButton !!!
          DropdownButton(
            // hint: const Text("Filter by"),
            value: selectedItem,
            items: items.map((item) => DropdownMenuItem<String>(
              value: item,
              child: Text(item, style: const TextStyle(fontSize: 20),
              ),
            )).toList(),
            onChanged: (item) {
              setState(() {
                selectedItem = item;
              });
            },
          ),
          //@-others
        ),
        //@+node:swot.20221111001008.1: *9* SizedBox
        SizedBox(
          width: 240,
          child:
          //@+others
          //@+node:swot.20221111001008.2: *10* DropdownButtonFormField !!!
          DropdownButtonFormField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(width: 3, color: Colors.blue)
              )
            ),
            // hint: const Text("Filter by"),
            value: selectedItem,
            items: items.map((item) => DropdownMenuItem<String>(
              value: item,
              child: Text(item, style: const TextStyle(fontSize: 20),
              ),
            )).toList(),
            onChanged: (item) {
              setState(() {
                selectedItem = item;
              });
            },
          ),
          //@-others
        )
        //@-others
      ],
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221025205925.1: *4* E Example
//@+node:swot.20221025205946.1: *5* E  -- Scaffold
class E extends StatelessWidget {
  const E({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //@+others
        //@+node:swot.20221025205946.2: *6* AppBar
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
              onPressed: () {},
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
          elevation: 0.0, // 去掉 appBar 与 body 之间的阴影
        ),
        //@-others
        body: DemoE(),
      ),
    );
  }
}

//@+node:swot.20221025211051.1: *5* DemoE
//@@language dart
//@@tabwidth -2
class DemoE extends StatefulWidget {
  const DemoE({super.key});

  @override
  State<DemoE> createState() => _DemoEState();
}

class _DemoEState extends State<DemoE> {
  //@+others
  //@+node:swot.20221025211051.2: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221025211051.3: *7* SingleChildScrollView
    SingleChildScrollView(
      child:
      //@+others
      //@+node:swot.20221025211051.4: *8* Column
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //@+others
        //@+node:swot.20221026194030.1: *9* show ExpandedExample
        ExpandedExample(),
        Divider(),
        //@+node:swot.20221111204125.2: *9* show ExpansionPanelListExample
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            // backgroundColor: Colors.orangeAccent,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ExpansionPanelListExample(),
              ),
            );
          },
          child: const Text('ExpansionPanelListExample'),
        ),

        //@+node:swot.20221031073947.1: *9* show ExpansionTileExample
        ExpansionTileExample(),
        Divider(),
        //@-others
      ]),

      //@-others
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221025211157.1: *5* ExampleE
//@+node:swot.20221026073602.2: *6* ExpandedExample -- height in Expanded takes no effect
//@@language dart
//@@tabwidth -2
class ExpandedExample extends StatelessWidget {
  const ExpandedExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221026073602.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: double.infinity,
      height: 100.0,
      child: Column(
        children: [
          //@+others
          //@+node:swot.20221026193458.1: *8* Expanded
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              width: double.infinity,
              height: 200,
              child: const Center(child: Text('Expanded 1')),
            ),
          ),
          //@+node:swot.20221026193703.1: *8* Expanded
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.orange,
              width: double.infinity,
              height: 200,
              child: const Center(child: Text('Expanded 2')),
            ),
          ),
          //@+node:swot.20221026193706.1: *8* Expanded
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

//@+node:swot.20221111204854.1: *6* class Item
class Item {
  final String header;
  final String body;
  bool isExpanded;

  Item({
    required this.header,
    required this.body,
    this.isExpanded = false,
  });
}
//@+node:swot.20221111201811.2: *6* ExpansionPanelListExample
//@@language dart
//@@tabwidth -2
class ExpansionPanelListExample extends StatefulWidget {
  const ExpansionPanelListExample({super.key});

  @override
  State<ExpansionPanelListExample> createState() => _ExpansionPanelListExampleState();
}

class _ExpansionPanelListExampleState extends State<ExpansionPanelListExample>{
  //@+others
  //@+node:swot.20221111201811.3: *7* varible
  static const loremIpsum = 'Officia elit et minim, est et lorem excepteur in et laborum velit. Id sit incididunt laborum fugiat ad est. Laborum non cillum ad in eu. Tempor aute consequat exercitation anim excepteur dolor nulla. Ea lorem ea proident consectetur proident.';

  final List<Item> items = [
    Item(header: 'Panel 1', body: loremIpsum),
    Item(header: 'Panel 2', body: loremIpsum),
    Item(header: 'Panel 3', body: loremIpsum),
  ];
  //@+node:swot.20221111201811.4: *7* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221111201811.5: *7* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221111201811.6: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221111202207.2: *8* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221111202207.3: *9* appBar
      appBar: AppBar(
        title: Text('ExpansionPanelListExample'),
      ),
      //@+node:swot.20221111202207.4: *9* body
      body:
      //@+others
      //@+node:swot.20221111202707.2: *10* SingleChildScrollView
      SingleChildScrollView(
        child:
        //@+others
        //@+node:swot.20221111213642.2: *11* Column
        Column(
          children: [
            //@+others
            //@+node:swot.20221111213817.1: *12* Text('Radio')
            Text(
              'Radio',
              style: TextStyle(fontSize: 20),
            ),
            //@+node:swot.20221111202728.1: *12* ExpansionPanelList.radio !!!
            ExpansionPanelList.radio(
              children: items.map(
                (item) => ExpansionPanelRadio(
                  canTapOnHeader: true,
                  value: item.header,  // has to be unique!
                  headerBuilder: (context, isExpanded) => ListTile(
                    title: Text(
                      item.header,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  body: ListTile(
                    title: Text(
                      item.body,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ).toList(),
            ),
            //@+node:swot.20221111214514.1: *12* SizedBox
            SizedBox(height: 20.0),
            //@+node:swot.20221111214154.1: *12* Text('Multiple')
            Text(
              'Multiple',
              style: TextStyle(fontSize: 20),
            ),
            //@+node:swot.20221111212929.1: *12* ExpansionPanelList !!!
            // ExpansionPanelList.radio(
            ExpansionPanelList(
              expansionCallback: (index, isExpanded) {
                setState(() {
                  items[index].isExpanded = !isExpanded;
                });
              },
              children: items.map(
                // (item) => ExpansionPanelRadio(
                (item) => ExpansionPanel(
                  canTapOnHeader: true,
                  // value: item.header,  // has to be unique!
                  isExpanded: item.isExpanded,
                  headerBuilder: (context, isExpanded) => ListTile(
                    title: Text(
                      item.header,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  body: ListTile(
                    title: Text(
                      item.body,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ).toList(),
            ),
            //@-others
          ],
        )
        //@-others
      ),
      //@-others
      //@-others
    );
    //@-others
  }
  //@-others
}

//@+node:swot.20221031070602.2: *6* ExpansionTileExample
//@@language dart
//@@tabwidth -2
class ExpansionTileExample extends StatefulWidget {
  const ExpansionTileExample({super.key});

  @override
  State<ExpansionTileExample> createState() => _ExpansionTileExampleState();
}

class _ExpansionTileExampleState extends State<ExpansionTileExample> {
  //@+others
  //@+node:swot.20221031070602.3: *7* varible
  bool _customIcon = false;
  //@+node:swot.20221031070602.6: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221031074359.2: *8* Column
    Column(
      children: [
        //@+others
        //@+node:swot.20221031074310.1: *9* ExpansionTile -- basic icon
        ExpansionTile(
          title: const Text('Expansion Tile -- basic icon'),
          // trailing: Icon(
          // _customIcon ? Icons.arrow_drop_down_circle : Icons.arrow_drop_down,
          // ),
          children: const [
            ListTile(
              title: Text('This is tile number 2'),
            ),
            ListTile(
              title: Text('This is tile number 3'),
            ),
          ],
          onExpansionChanged: (bool expanded) {
            // setState(() {
            // _customIcon = expanded;
            // });
          },
        ),
        //@+node:swot.20221031073139.1: *9* ExpansionTile -- _customIcon
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
        //@+node:swot.20221031074605.1: *9* ExpansionTile -- change icon location
        ExpansionTile(
          title: const Text('Expansion Tile -- basic icon'),
          onExpansionChanged: (bool expanded) {
            // setState(() {
            // _customIcon = expanded;
            // });
          },
          controlAffinity: ListTileControlAffinity.leading,
          // leading: const Icon(Icons.info),
          // trailing: Icon(
          // _customIcon ? Icons.arrow_drop_down_circle : Icons.arrow_drop_down,
          // ),
          children: const [
            ListTile(
              title: Text('This is tile number 2'),
            ),
          ], // icon location
        ),
        //@-others
      ],
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221026200827.1: *4* F Example
//@+node:swot.20221026200827.2: *5* F  -- Scaffold
class F extends StatelessWidget {
  const F({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221027113937.1: *6* SafeArea
    SafeArea(
      child:
      //@+others
      //@+node:swot.20221027114010.2: *7* Scaffold
      Scaffold(
        //@+others
        //@+node:swot.20221026200827.3: *8* appBar
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
              onPressed: () {},
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
          elevation: 0.0, // 去掉 appBar 与 body 之间的阴影
        ),
        //@+node:swot.20221027114010.4: *8* body
        body: DemoF(),
        //@+node:swot.20221027114010.6: *8* floatingActionButton
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
//@+node:swot.20221026200827.4: *5* DemoF
//@@language dart
//@@tabwidth -2
class DemoF extends StatefulWidget {
  const DemoF({super.key});

  @override
  State<DemoF> createState() => _DemoFState();
}

class _DemoFState extends State<DemoF> {
  //@+others
  //@+node:swot.20221026200827.5: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221026200827.6: *7* SingleChildScrollView
    SingleChildScrollView(
      child:
      //@+others
      //@+node:swot.20221026200827.7: *8* Column
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //@+others
        //@+node:swot.20221031063757.2: *9* ElevatedButton -- show FittedBoxExample
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

        //@+node:swot.20221027112321.2: *9* show FlexbleExample
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

        //@+node:swot.20221027121244.1: *9* show FormExample
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

        //@+node:swot.20221027203755.1: *9* show FadeInImageExample
        FadeInImageExample(),
        //@+node:swot.20221027213559.2: *9* show FractionallySizedBoxExample
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

        //@+node:swot.20221028065632.1: *9* show FutureBuilderExample
        FutureBuilderExample(),
        //@-others
      ]),

      //@-others
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221026200827.9: *5* ExampleF
//@+node:swot.20221030234221.2: *6* FittedBoxExample
//@@language dart
//@@tabwidth -2
class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221030234221.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221031064454.2: *8* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221031064454.3: *9* appBar
      appBar: AppBar(
        title: Text('FittedBoxExample'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221031064454.4: *9* body
      body:
      //@+others
      //@+node:swot.20221030234303.2: *10* Center
      Center(
        child:
        //@+others
        //@+node:swot.20221031063239.2: *11* Container
        Container(
          // height: 25,
          // width: 100,
          // width: 300,
          width: double.infinity,
          color: Colors.orangeAccent,
          child:
          //@+others
          //@+node:swot.20221031070048.1: *12* FittedBox
          const FittedBox(
            child: Text(
              'This is a pretty long text',
              style: TextStyle(color: Colors.black),
            ),
          ),
          //@-others
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

//@+node:swot.20221027111458.2: *6* FlexibleExample
//@@language dart
//@@tabwidth -2
class FlexibleExample extends StatelessWidget {
  const FlexibleExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221027111458.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221027112522.2: *8* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221027112522.3: *9* appBar
      appBar: AppBar(
        title: Text('FlexibleExample'),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221027112522.4: *9* body
      body:
      //@+others
      //@+node:swot.20221027111807.1: *10* Column
      Column(
        children: [
          //@+others
          //@+node:swot.20221027111848.1: *11* Flexible -- FlexFit.loose is default
          Flexible(
            flex: 6,
            child: Container(
              height: 50, // flex takes no effect
              color: Colors.yellow,
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(
              height: 100, // flex takes no effect
              color: Colors.orange,
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              height: 200, // flex takes no effect
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

//@+node:swot.20221027115627.2: *6* FormExample
//@@language dart
//@@tabwidth -2
class FormExample extends StatelessWidget {
  FormExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221027120023.1: *7* value
  final _formKey = GlobalKey<FormState>();
  //@+node:swot.20221027115627.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221027115750.2: *8* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221027115750.3: *9* appBar
      appBar: AppBar(
        title: Text('FormExample'),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221027115750.4: *9* body
      body:
      //@+others
      //@+node:swot.20221027115911.1: *10* Padding
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        //@+others
        //@+node:swot.20221027115952.1: *11* Form !!! -- _formKey
        Form(
          key: _formKey,
          child: Column(
            children: [
              //@+others
              //@+node:swot.20221112175512.1: *12* TextFormField
              TextFormField(
                //@+others
                //@+node:swot.20221112181907.1: *13* 2) validator !!!
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter something';
                  }
                  return null;
                },
                //@-others
              ),
              //@+node:swot.20221112175530.1: *12* ElevatedButton
              ElevatedButton(
                //@+others
                //@+node:swot.20221112182043.1: *13* 1) onPressed !!! _formKey.currentState!.validate()
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    //@+others
                    //@+node:swot.20221112182228.1: *14* 3) showSnackBar
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Great!'),
                      ),
                    );
                    //@-others
                  }
                },
                //@-others
                child: const Text('Validate'),
              ),
              //@-others
            ],
          ),
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

//@+node:swot.20221027203431.2: *6* FadeInImageExample
//@@language dart
//@@tabwidth -2
class FadeInImageExample extends StatelessWidget {
  const FadeInImageExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221027203431.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeInImage.assetNetwork(
        width: 100,
        height: 100,
        placeholder: 'assets/loading.gif',
        image:
            'https://img2.baidu.com/it/u=1559210821,716203173&fm=253&fmt=auto&app=120&f=JPEG?w=200&h=200',
      ),
    );
  }
  //@-others
}

//@+node:swot.20221027212222.2: *6* FractionallySizedBoxExample
//@@language dart
//@@tabwidth -2
class FractionallySizedBoxExample extends StatelessWidget {
  const FractionallySizedBoxExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221027212222.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221027212407.2: *8* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221027212407.3: *9* appBar
      appBar: AppBar(
        title: Text('FractionallySizedBox'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221027212407.4: *9* body
      body:
      //@+others
      //@+node:swot.20221027212916.2: *10* Center
      Center(
        child:
        //@+others
        //@+node:swot.20221027212959.1: *11* FractionallySizedBox
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

//@+node:swot.20221028064229.2: *6* FutureBuilderExample
//@@language dart
//@@tabwidth -2
class FutureBuilderExample extends StatefulWidget {
  const FutureBuilderExample({super.key});

  @override
  State<FutureBuilderExample> createState() => _FutureBuilderExampleState();
}

class _FutureBuilderExampleState extends State<FutureBuilderExample> {
  //@+others
  //@+node:swot.20221028064229.3: *7* varible
  Future<String> getData() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    // throw 'Error';
    return 'Super!';
  }

  //@+node:swot.20221028064229.6: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221028064815.1: *8* FutureBuilder
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
                onPressed: () {
                  setState(() {});
                },
                child: const Text('FutureBuilder Refresh'),
              ),
            ],
          );
        }
      },
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221028070508.1: *4* G Example
//@+node:swot.20221028070508.2: *5* G  -- Scaffold
class G extends StatelessWidget {
  const G({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221028070508.3: *6* SafeArea
    SafeArea(
      child:
      //@+others
      //@+node:swot.20221028070508.4: *7* Scaffold
      Scaffold(
        //@+others
        //@+node:swot.20221028070508.5: *8* appBar
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
              onPressed: () {},
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
          elevation: 0.0, // 去掉 appBar 与 body 之间的阴影
        ),
        //@+node:swot.20221028070508.6: *8* body
        body: DemoG(),
        //@+node:swot.20221028070508.7: *8* floatingActionButton
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
//@+node:swot.20221028070508.8: *5* DemoG
//@@language dart
//@@tabwidth -2
class DemoG extends StatefulWidget {
  const DemoG({super.key});

  @override
  State<DemoG> createState() => _DemoGState();
}

class _DemoGState extends State<DemoG> {
  //@+others
  //@+node:swot.20221028070508.9: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221028070508.10: *7* SingleChildScrollView
    SingleChildScrollView(
      child:
      //@+others
      //@+node:swot.20221028070508.11: *8* Column
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //@+others
        //@+node:swot.20221028090546.1: *9* SizedBox
        SizedBox(height: 5.00),
        //@+node:swot.20221028085926.1: *9* show GestureDetectorExample
        GestureDetectorExample(),
        //@+node:swot.20221028095636.2: *9* show GridViewExample
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

        //@+node:swot.20221028131344.2: *9* show GridTileExample
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

        //@+node:swot.20221031213940.2: *9* ElevatedButton -- show GridPaperExample
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.orangeAccent,
              ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GridPaperExample(),
              ),
            );
          },
          child: const Text('GridPaperExample'),
        ),

        //@-others
      ]),

      //@-others
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221028070508.17: *5* ExampleG
//@+node:swot.20221028084729.2: *6* GestureDetectorExample
//@@language dart
//@@tabwidth -2
class GestureDetectorExample extends StatefulWidget {
  const GestureDetectorExample({super.key});

  @override
  State<GestureDetectorExample> createState() => _GestureDetectorExampleState();
}

class _GestureDetectorExampleState extends State<GestureDetectorExample> {
  //@+others
  //@+node:swot.20221028084729.3: *7* varible
  int _counter = 0;
  //@+node:swot.20221028084729.6: *7* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _counter += 1;
          });
        },
        child: Container(
          height: 50,
          color: Colors.orangeAccent,
          child: Row(children: [
            const Text("GestureDetector"),
            Text(
              _counter.toString(),
              style: const TextStyle(fontSize: 40),
            ),
          ]),
        ),
      ),
    );
  }
  //@-others
}

//@+node:swot.20221031213433.2: *6* GridPaperExample
//@@language dart
//@@tabwidth -2
class GridPaperExample extends StatelessWidget {
  const GridPaperExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221031213433.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221031213506.2: *8* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221031213506.3: *9* appBar
      appBar: AppBar(
        title: Text('GridPaper'),
        // leading: Icon(Icons.menu),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
        ],
      ),
      //@+node:swot.20221031213506.4: *9* body
      body:
      //@+others
      //@+node:swot.20221031213547.1: *10* SizedBox
      const SizedBox(
        width: double.infinity,
        height: double.infinity,
        child:
        //@+others
        //@+node:swot.20221031213653.1: *11* GridPaper
        GridPaper(
          color: Colors.pink,
          divisions: 2,
          interval: 200,
          subdivisions: 5,
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

//@+node:swot.20221028093414.2: *6* GridViewExample
//@@language dart
//@@tabwidth -2
class GridViewExample extends StatelessWidget {
  const GridViewExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221028093414.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221028122703.2: *8* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221028122703.3: *9* appBar
      appBar: AppBar(
        title: Text('GridView'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221028122703.4: *9* body
      body:
      //@+others
      //@+node:swot.20221028093753.1: *10* GridView
      GridView.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (_, index) =>
        //@+others
        //@+node:swot.20221029070417.1: *11* GridTile -- use GridTileBar
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

//@+node:swot.20221028130417.2: *6* GridTileExample
//@@language dart
//@@tabwidth -2
class GridTileExample extends StatelessWidget {
  const GridTileExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221028130417.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221028131715.2: *8* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221028131715.3: *9* appBar
      appBar: AppBar(
        title: Text('GridTile'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221028131715.4: *9* body
      body:
      //@+others
      //@+node:swot.20221028130528.1: *10* Center
      Center(
        child:
        //@+others
        //@+node:swot.20221029070735.1: *11* SizedBox
        SizedBox(
          height: 400,
          width: 300,
          child:
          //@+others
          //@+node:swot.20221029070636.1: *12* GridTile  -- use Container
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

//@+node:swot.20221029131000.1: *3* Example H-N
//@+node:swot.20221023124355.1: *4* H Example
//@+node:swot.20221023124355.2: *5* H  -- Scaffold
class H extends StatelessWidget {
  const H({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //@+others
        //@+node:swot.20221023124355.3: *6* AppBar
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
              onPressed: () {},
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
          elevation: 0.0, // 去掉 appBar 与 body 之间的阴影
        ),
        //@-others
        body: DemoH(),
      ),
    );
  }
}

//@+node:swot.20221023124355.4: *5* DemoH
//@@language dart
//@@tabwidth -2
class DemoH extends StatefulWidget {
  const DemoH({super.key});

  @override
  State<DemoH> createState() => _DemoHState();
}

class _DemoHState extends State<DemoH> {
  //@+others
  //@+node:swot.20221023124355.5: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221023124355.6: *7* SingleChildScrollView
    SingleChildScrollView(
      child:
      //@+others
      //@+node:swot.20221023124355.7: *8* Column
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //@+others
        //@+node:swot.20221029090411.1: *9* show HeroExample
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
        //@+node:swot.20221031151733.1: *9* show HeroExample2
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HeroExample2(),
              ),
            );
          },
          child: ClipRRect(
            child: Hero(
              tag: 'tag-2',
              child: Image.asset(
                'assets/fengjing.webp',
                width: 100,
              ),
            ),
          ),
        )
        //@-others
      ]),
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221023124644.1: *5* ExampleH
//@+node:swot.20221029092751.2: *6* HeroExample
//@@language dart
//@@tabwidth -2
class HeroExample extends StatelessWidget {
  const HeroExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221029092751.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029094712.2: *8* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221029094712.3: *9* appBar
      appBar: AppBar(
        title: Text('Hero'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221029094712.4: *9* body
      body:
      //@+others
      //@+node:swot.20221029092810.1: *10* Center
      Center(
        child:
        //@+others
        //@+node:swot.20221029092914.1: *11* Hero
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

//@+node:swot.20221031143139.2: *6* HeroExample2
//@@language dart
//@@tabwidth -2
class HeroExample2 extends StatelessWidget {
  const HeroExample2({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221031143139.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221031143419.2: *8* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221031143419.3: *9* appBar
      appBar: AppBar(
        title: Text('HeroExample2'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221031143419.4: *9* body
      body:
      //@+others
      //@+node:swot.20221031143456.1: *10* Hero
      Hero(
        tag: 'tag-2',
        child: Image.asset('assets/fengjing.webp'),
      ),
      //@-others
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221029081714.1: *4* I Example
//@+node:swot.20221029081714.2: *5* I  -- Scaffold
class I extends StatelessWidget {
  const I({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //@+others
        //@+node:swot.20221029081714.3: *6* AppBar
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
              onPressed: () {},
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
          elevation: 0.0, // 去掉 appBar 与 body 之间的阴影
        ),
        //@-others
        body: DemoI(),
      ),
    );
  }
}

//@+node:swot.20221029081714.4: *5* DemoI
//@@language dart
//@@tabwidth -2
class DemoI extends StatefulWidget {
  const DemoI({super.key});

  @override
  State<DemoI> createState() => _DemoIState();
}

class _DemoIState extends State<DemoI> {
  //@+others
  //@+node:swot.20221029081714.5: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029081714.6: *7* SingleChildScrollView
    SingleChildScrollView(
      child:
      //@+others
      //@+node:swot.20221029081714.7: *8* Column
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //@+others
        //@+node:swot.20221029081714.8: *9* ElevatedButton -- show InteractiveViewerExample
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
        //@+node:swot.20221101065031.2: *9* ElevatedButton -- show InteractiveViewerExample2
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.orangeAccent,
              ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => InteractiveViewerExample2(),
              ),
            );
          },
          child: const Text('InteractiveViewerExample2'),
        ),

        //@+node:swot.20221029121446.1: *9* show IgnorePointerExample
        IgnorePointerExample(),
        //@+node:swot.20221029125017.1: *9* ElevatedButton -- show IndexedStackExample
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
        //@+node:swot.20221101063450.1: *9* show InkwellExample
        InkwellExample(),
        //@-others
      ]),
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221029081714.13: *5* ExampleI
//@+node:swot.20221029081714.14: *6* InteractiveViewerExample
//@@language dart
//@@tabwidth -2
class InteractiveViewerExample extends StatefulWidget {
  const InteractiveViewerExample({super.key});

  @override
  State<InteractiveViewerExample> createState() =>
      _InteractiveViewerExampleState();
}

class _InteractiveViewerExampleState extends State<InteractiveViewerExample> {
  //@+others
  //@+node:swot.20221029081714.17: *7* build()
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

//@+node:swot.20221101064424.1: *6* InteractiveViewerExample2 -- scale the image
//@@language dart
//@@tabwidth -2
class InteractiveViewerExample2 extends StatefulWidget {
  const InteractiveViewerExample2({super.key});

  @override
  State<InteractiveViewerExample2> createState() =>
      _InteractiveViewerExample2State();
}

class _InteractiveViewerExample2State extends State<InteractiveViewerExample2> {
  //@+others
  //@+node:swot.20221101064424.2: *7* build()
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scall'),
      ),
      body: Center(
        child: InteractiveViewer(
          maxScale: 5,
          child: Image.asset('assets/fengjing.webp'),
        ),
      ),
    );
  }
  //@-others
}

//@+node:swot.20221029115307.2: *6* IgnorePointerExample
//@@language dart
//@@tabwidth -2
class IgnorePointerExample extends StatefulWidget {
  const IgnorePointerExample({super.key});

  @override
  State<IgnorePointerExample> createState() => _IgnorePointerExampleState();
}

class _IgnorePointerExampleState extends State<IgnorePointerExample> {
  //@+others
  //@+node:swot.20221029115307.3: *7* varible
  bool ignore = false;
  //@+node:swot.20221029115307.4: *7* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221029115307.5: *7* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221029115307.6: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029115522.1: *8* Row
    Row(
      children: [
        //@+others
        //@+node:swot.20221029115652.2: *9* ElevatedButton
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ignore ? Colors.red : Colors.green,
          ),
          onPressed: () {
            setState(() {
              ignore = !ignore;
            });
          },
          child: Text(
            ignore ? 'Blocked IgnorePointer' : 'Can press IgnorePointer',
          ),
        ),
        //@+node:swot.20221029120401.1: *9* IgnorePointer
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

//@+node:swot.20221029122755.2: *6* IndexedStackExample
//@@language dart
//@@tabwidth -2
class IndexedStackExample extends StatefulWidget {
  const IndexedStackExample({super.key});

  @override
  State<IndexedStackExample> createState() => _IndexedStackExampleState();
}

class _IndexedStackExampleState extends State<IndexedStackExample> {
  //@+others
  //@+node:swot.20221029122755.3: *7* varible
  int index = 0;
  //@+node:swot.20221029122755.4: *7* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221029122755.5: *7* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221029122755.6: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029125202.2: *8* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221029125202.3: *9* appBar
      appBar: AppBar(
        title: Text('IndexedStack'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221029125202.4: *9* body
      body:
      //@+others
      //@+node:swot.20221029123730.2: *10* Padding
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        //@+others
        //@+node:swot.20221029123925.2: *11* Column
        Column(
          children: [
            //@+others
            //@+node:swot.20221029124213.2: *12* Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //@+others
                //@+node:swot.20221029124242.2: *13* ElevatedButton 0
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                      ),
                  onPressed: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  child: const Text('0'),
                ),

                //@+node:swot.20221029124327.1: *13* ElevatedButton 1
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                      ),
                  onPressed: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  child: const Text('1'),
                ),

                //@+node:swot.20221029124328.1: *13* ElevatedButton 2
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                      ),
                  onPressed: () {
                    setState(() {
                      index = 2;
                    });
                  },
                  child: const Text('2'),
                ),

                //@-others
              ],
            ),
            //@+node:swot.20221029124503.1: *12* IndexedStack
            IndexedStack(
              index: index,
              children: [
                Center(
                  child: Image.network(
                      'https://img1.baidu.com/it/u=2346614730,4149113350&fm=253&fmt=auto&app=138&f=JPEG?w=300&h=231'),
                ),
                Center(
                  child: Image.network(
                      'https://img0.baidu.com/it/u=3654949633,659950172&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=612'),
                ),
                Center(
                  child: Image.network(
                      'https://img0.baidu.com/it/u=2809418066,998395186&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=622'),
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

//@+node:swot.20221031231919.2: *6* InkwellExample -- press ALT to scale
//@@language dart
//@@tabwidth -2
class InkwellExample extends StatefulWidget {
  const InkwellExample({super.key});

  @override
  State<InkwellExample> createState() => _InkwellExampleState();
}

class _InkwellExampleState extends State<InkwellExample> {
  //@+others
  //@+node:swot.20221031231919.3: *7* varible
  Color boxColor = Colors.blue;
  //@+node:swot.20221031231919.6: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221101062927.1: *8* InkWell
    InkWell(
      onTap: () {
        setState(() { boxColor = Colors.blue; });
      },
      onDoubleTap: () {
        setState(() {
          boxColor = Colors.red;
        });
      },
      onLongPress: () {
        setState(() {
          boxColor = Colors.yellow;
        });
      },
      child: Ink(
        width: 100.0,
        height: 100.0,
        color: boxColor,
        child: const FlutterLogo(size: 100),
      ),
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221023105117.1: *4* L Example
//@+node:swot.20221023105152.1: *5* L  -- Scaffold
class L extends StatelessWidget {
  const L({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //@+others
        //@+node:swot.20221023105152.2: *6* AppBar
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
              onPressed: () {},
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
          elevation: 0.0, // 去掉 appBar 与 body 之间的阴影
        ),
        //@-others
        body: DemoL(),
      ),
    );
  }
}

//@+node:swot.20221023105258.1: *5* DemoL
//@@language dart
//@@tabwidth -2
class DemoL extends StatefulWidget {
  const DemoL({super.key});

  @override
  State<DemoL> createState() => _DemoLState();
}

class _DemoLState extends State<DemoL> {
  //@+others
  //@+node:swot.20221023105258.2: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221023105258.3: *7* SingleChildScrollView
    SingleChildScrollView(
      child:
      //@+others
      //@+node:swot.20221023105258.4: *8* Column
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //@+others
        //@+node:swot.20221030230436.2: *9* ElevatedButton -- show LayoutBuilderExample
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

        //@+node:swot.20221023122724.2: *9* ElevatedButton -- show LongPressDraggableExample
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
        //@+node:swot.20221029132948.2: *9* ElevatedButton -- show ListViewExample
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.orangeAccent,
              ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ListViewExample()));
          },
          child: const Text('ListView'),
        ),

        //@-others
      ]),
      //@-others
    );
    //@-others
  }
  //@-others
}

//@+node:swot.20221023105408.1: *5* ExampleL
//@+node:swot.20221030225430.2: *6* LayoutBuilderExample
//@@language dart
//@@tabwidth -2
class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221030225430.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221030230818.2: *8* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221030230818.3: *9* appBar
      appBar: AppBar(
        title: Text('LayoutBuilderExample'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221030230818.4: *9* body
      body:
      //@+others
      //@+node:swot.20221030225455.1: *10* LayoutBuilder
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

//@+node:swot.20221023105920.2: *6* LongPressDraggableExample
//@@language dart
//@@tabwidth -2
class LongPressDraggableExample extends StatefulWidget {
  const LongPressDraggableExample({super.key});

  @override
  State<LongPressDraggableExample> createState() =>
      _LongPressDraggableExampleState();
}

class _LongPressDraggableExampleState extends State<LongPressDraggableExample> {
  //@+others
  //@+node:swot.20221023105947.1: *7* varible
  Offset _offset = const Offset(200, 250);
  //@+node:swot.20221023105920.3: *7* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221023105920.4: *7* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221023105920.5: *7* build()
  @override
  Widget build(BuildContext context) {
    //@+others
    //@+node:swot.20221023123049.2: *8* Scaffold
    return Scaffold(
      //@+others
      //@+node:swot.20221023123049.3: *9* appBar
      appBar: AppBar(
        title: Text('LongPressDraggable'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221023123049.4: *9* body
      body: Center(
        child: LayoutBuilder(
          builder: (context, constrains) {
            return Stack(children: [
              //@+others
              //@+node:swot.20221023110506.1: *10* Positioned
              Positioned(
                left: _offset.dx,
                top: _offset.dy,
                child:
                //@+others
                //@+node:swot.20221023110634.1: *11* LongPressDraggable
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
                      double adjustment = MediaQuery.of(context).size.height -
                          constrains.maxHeight;
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
            ]);
          },
        ),
      ),
      //@-others
    );

    //@-others
  }
  //@-others
}

//@+node:swot.20221029130827.2: *6* ListViewExample
//@@language dart
//@@tabwidth -2
class ListViewExample extends StatelessWidget {
  const ListViewExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221029130827.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029133516.2: *8* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221029133516.3: *9* appBar
      appBar: AppBar(
        title: Text('ListView'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221029133516.4: *9* body
      body:
      //@+others
      //@+node:swot.20221029132335.1: *10* ListView
      ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.white),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return
          //@+others
          //@+node:swot.20221029133717.1: *11* ListTile
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
      ),
      //@-others
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221023080501.1: *4* M Example
//@+node:swot.20221023080540.1: *5* M  -- Scaffold
class M extends StatelessWidget {
  const M({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //@+others
        //@+node:swot.20221023080540.2: *6* AppBar
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
              onPressed: () {},
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
          elevation: 0.0, // 去掉 appBar 与 body 之间的阴影
        ),
        //@-others
        body: DemoM(),
      ),
    );
  }
}

//@+node:swot.20221023081047.1: *5* DemoM
//@@language dart
//@@tabwidth -2
class DemoM extends StatefulWidget {
  const DemoM({super.key});

  @override
  State<DemoM> createState() => _DemoMState();
}

class _DemoMState extends State<DemoM> {
  //@+others
  //@+node:swot.20221023081047.2: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221023081047.3: *7* SingleChildScrollView
    SingleChildScrollView(
      child:
      //@+others
      //@+node:swot.20221023081047.4: *8* Column
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //@+others
        //@+node:swot.20221023081047.5: *9* show MaterialBannerExample
        MaterialBannerExample(),
        //@-others
      ]),
      //@-others
    );
    //@-others
  }
  //@-others
}

//@+node:swot.20221023081258.1: *5* ExampleM
//@+node:swot.20221023081535.2: *6* MaterialBannerExample
//@@language dart
//@@tabwidth -2
class MaterialBannerExample extends StatelessWidget {
  const MaterialBannerExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221023081535.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Open MaterialBanner'),
        onPressed: () {
          ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
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
          ));
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

//@+node:swot.20221029134405.1: *4* N Example
//@+node:swot.20221029134405.2: *5* N  -- Scaffold
class N extends StatelessWidget {
  const N({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //@+others
        //@+node:swot.20221029134405.3: *6* AppBar
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
              onPressed: () {},
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
          elevation: 0.0, // 去掉 appBar 与 body 之间的阴影
        ),
        //@-others
        body: DemoN(),
      ),
    );
  }
}

//@+node:swot.20221029134405.4: *5* DemoN
//@@language dart
//@@tabwidth -2
class DemoN extends StatefulWidget {
  const DemoN({super.key});

  @override
  State<DemoN> createState() => _DemoNState();
}

class _DemoNState extends State<DemoN> {
  //@+others
  //@+node:swot.20221029134405.5: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029134405.6: *7* SingleChildScrollView
    SingleChildScrollView(
      child:
      //@+others
      //@+node:swot.20221029134405.7: *8* Column
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //@+others
        //@+node:swot.20221029141845.2: *9* ElevatedButton -- show NavigationBarExample
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
      ]),
      //@-others
    );
    //@-others
  }
  //@-others
}

//@+node:swot.20221029134405.14: *5* ExampleN
//@+node:swot.20221029140231.2: *6* NavigationBarExample
//@@language dart
//@@tabwidth -2
class NavigationBarExample extends StatefulWidget {
  const NavigationBarExample({super.key});

  @override
  State<NavigationBarExample> createState() => _NavigationBarExampleState();
}

class _NavigationBarExampleState extends State<NavigationBarExample> {
  //@+others
  //@+node:swot.20221029140231.3: *7* varible
  int currentIndex = 0;

  static const List body = [
    Icon(Icons.home, size: 50),
    Icon(Icons.search, size: 50),
    Icon(Icons.person, size: 50),
  ];
  //@+node:swot.20221029140231.4: *7* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221029140231.5: *7* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221029140231.6: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029141046.2: *8* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221029141046.3: *9* appBar
      appBar: AppBar(
        title: Text('NavigationBar'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221029141046.4: *9* body
      body: Center(
        child: body.elementAt(currentIndex),
      ),

      //@+node:swot.20221029141046.5: *9* bottomNavigationBar
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
          setState(() {
            currentIndex = index;
          });
        },
      ),
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221029131010.1: *3* Example O-T
//@+node:swot.20221030231300.1: *4* O Example
//@+node:swot.20221030231300.2: *5* O  -- Scaffold
class O extends StatelessWidget {
  const O({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //@+others
      //@+node:swot.20221030231748.1: *6* AppBar
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
            onPressed: () {},
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
        elevation: 0.0, // 去掉 appBar 与 body 之间的阴影
      ),
      //@-others
      body: DemoO(),
    );
  }
}

//@+node:swot.20221030231300.4: *5* DemoO
//@@language dart
//@@tabwidth -2
class DemoO extends StatefulWidget {
  const DemoO({super.key});

  @override
  State<DemoO> createState() => _DemoOState();
}

class _DemoOState extends State<DemoO> {
  //@+others
  //@+node:swot.20221030231300.5: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221030231300.6: *7* SingleChildScrollView
    SingleChildScrollView(
      child:
      //@+others
      //@+node:swot.20221030231300.7: *8* Column
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //@+others
        //@+node:swot.20221030232506.2: *9* ElevatedButton -- show OrientationBuilderExample
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

        //@+node:swot.20221030233533.2: *9* ElevatedButton -- show OverflowBarExample
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
      ]),
      //@-others
    );
    //@-others
  }
  //@-others
}

//@+node:swot.20221030231300.11: *5* ExampleO
//@+node:swot.20221030231950.2: *6* OrientationBuilderExample
//@@language dart
//@@tabwidth -2
class OrientationBuilderExample extends StatelessWidget {
  const OrientationBuilderExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221030231950.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221030232043.2: *8* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221030232043.3: *9* appBar
      appBar: AppBar(
        title: Text('OrientationBuilderExample'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221030232043.4: *9* body
      body:
      //@+others
      //@+node:swot.20221030232118.1: *10* OrientationBuilder
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

//@+node:swot.20221030232847.2: *6* OverflowBarExample -- auto adjust row or column
//@@language dart
//@@tabwidth -2
class OverflowBarExample extends StatelessWidget {
  const OverflowBarExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221030232847.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221030233721.2: *8* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221030233721.3: *9* appBar
      appBar: AppBar(
        title: Text('OverflowBarExample'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221030233721.4: *9* body
      body:
      //@+others
      //@+node:swot.20221030233137.2: *10* Padding
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        //@+others
        //@+node:swot.20221030233211.1: *11* OverflowBar
        OverflowBar(
          spacing: 8,
          children: [
            //@+others
            //@+node:swot.20221030233258.2: *12* ElevatedButton
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  // backgroundColor: Colors.orangeAccent,
                  ),
              onPressed: () {},
              child: const Text('linux'),
            ),

            //@+node:swot.20221030233342.2: *12* ElevatedButton
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  // backgroundColor: Colors.orangeAccent,
                  ),
              onPressed: () {},
              child: const Text('flutter'),
            ),

            //@+node:swot.20221030233342.1: *12* ElevatedButton
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  // backgroundColor: Colors.orangeAccent,
                  ),
              onPressed: () {},
              child: const Text('javascript'),
            ),

            //@+node:swot.20221030233809.1: *12* ElevatedButton
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  // backgroundColor: Colors.orangeAccent,
                  ),
              onPressed: () {},
              child: const Text('python'),
            ),

            //@+node:swot.20221030233843.1: *12* ElevatedButton
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

//@+node:swot.20221023093033.1: *4* P Example
//@+node:swot.20221023093033.2: *5* P  -- Scaffold
class P extends StatelessWidget {
  const P({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //@+others
      //@+node:swot.20221023093803.1: *6* AppBar
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

//@+node:swot.20221023093033.4: *5* DemoP
//@@language dart
//@@tabwidth -2
class DemoP extends StatefulWidget {
  const DemoP({super.key});

  @override
  State<DemoP> createState() => _DemoPState();
}

class _DemoPState extends State<DemoP> {
  //@+others
  //@+node:swot.20221023093033.5: *6* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221023093033.6: *7* SingleChildScrollView
    SingleChildScrollView(
      child:
      //@+others
      //@+node:swot.20221023093033.7: *8* Column
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //@+others
        //@+node:swot.20221029234843.2: *9* ElevatedButton -- show PageViewExample
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

        //@+node:swot.20221025191831.1: *9* show PopupMenuButtonExample
        PopupMenuButtonExample(),
        Divider(),
        //@+node:swot.20221030082123.2: *9* ElevatedButton -- show PositionedExample
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
      ]),
      //@-others
    );
    //@-others
  }
  //@-others
}

//@+node:swot.20221023093033.14: *5* ExampleP
//@+node:swot.20221029234453.2: *6* PageViewExample
//@@language dart
//@@tabwidth -2
class PageViewExample extends StatefulWidget {
  const PageViewExample({super.key});

  @override
  State<PageViewExample> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  //@+others
  //@+node:swot.20221111064532.1: *7* varible
  final controller = PageController(initialPage: 1);  // Page 2
  //@+node:swot.20221111064612.1: *7* dispose()
  dispose() {
    super.dispose();
    controller.dispose();
  }
  //@+node:swot.20221029234453.6: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029235310.2: *8* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221029235310.3: *9* appBar
      appBar: AppBar(
        title: Text('PageViewExample'),
        // leading: Icon(Icons.menu),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          //@+others
          //@+node:swot.20221111065157.2: *10* IconButton left !!!
          IconButton(
            icon: const Icon(Icons.keyboard_arrow_left),
            onPressed: (){
              // controller.animateToPage(
                // 0,  // index 0 is the first page
                // duration: const Duration(seconds: 1),
                // curve: Curves.easeInOut,
              // );
              controller.previousPage(
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
              );
            },
          ),
          //@+node:swot.20221111065339.1: *10* IconButton right !!!
          IconButton(
            icon: const Icon(Icons.keyboard_arrow_right),
            onPressed: (){
              // controller.animateToPage(
                // 2,  // index 2 is the last page
                // duration: const Duration(seconds: 1),
                // curve: Curves.easeInOut,
              // );
              controller.nextPage(
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
              );
            },
          ),
          //@-others
        ],
      ),
      //@+node:swot.20221029235310.4: *9* body
      body:
      //@+others
      //@+node:swot.20221029234534.1: *10* PageView !!!
      PageView(
        // physics: const NeverScrollableScrollPhysics(),
        // scrollDirection: Axis.vertical,  // default is Axis.horizontal
        controller: controller,
        onPageChanged: (index) {
          print('Page ${index + 1}');
        },
        children: [
          //@+others
          //@+node:swot.20221029234605.1: *11* Container
          Container(
            color: Colors.orangeAccent,
            child: const Center(
              child: Text(
                'Page 1',
                style: TextStyle(fontSize: 100),
              ),
            ),
          ),
          //@+node:swot.20221029234724.1: *11* Container
          Container(
            color: Colors.redAccent,
            child: const Center(
              child: Text(
                'Page 2',
                style: TextStyle(fontSize: 100),
              ),
            ),
          ),
          //@+node:swot.20221029234725.1: *11* Container
          Container(
            color: Colors.blueGrey,
            child: const Center(
              child: Text(
                'Page 3',
                style: TextStyle(fontSize: 100),
              ),
            ),
          ),
          //@-others
        ],
      ),
      //@-others
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221025114730.2: *6* PopupMenuButtonExample
//@@language dart
//@@tabwidth -2
class PopupMenuButtonExample extends StatefulWidget {
  const PopupMenuButtonExample({super.key});

  @override
  State<PopupMenuButtonExample> createState() => _PopupMenuButtonExampleState();
}

class _PopupMenuButtonExampleState extends State<PopupMenuButtonExample> {
  //@+others
  //@+node:swot.20221025114730.3: *7* varible
  String title = 'PopupMenuButton';
  String item1 = 'First item';
  String item2 = 'Second item';
  //@+node:swot.20221025114730.6: *7* build()
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
        },
      ),
    );
  }
  //@-others
}

//@+node:swot.20221029235922.2: *6* PositionedExample
//@@language dart
//@@tabwidth -2
class PositionedExample extends StatelessWidget {
  const PositionedExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221029235922.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221030082723.2: *8* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221030082723.3: *9* appBar
      appBar: AppBar(
        title: Text('PositionedExample'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221030082723.4: *9* body
      body:
      //@+others
      //@+node:swot.20221030081223.2: *10* Center
      Center(
        child:
        //@+others
        //@+node:swot.20221030081235.1: *11* Stack
        Stack(
          children: [
            //@+others
            //@+node:swot.20221030081313.1: *12* Positioned
            Positioned(
              left: 20,
              top: 20,
              child: Image.network(
                'https://img0.baidu.com/it/u=3216067279,1683207701&fm=253&fmt=auto&app=138&f=JPEG?w=250&h=238',
                width: 250,
              ),
            ),
            //@+node:swot.20221030081540.1: *12* Positioned
            Positioned(
              left: 60,
              top: 120,
              child: Image.network(
                'https://img2.baidu.com/it/u=3325552638,2237228879&fm=253&fmt=auto&app=138&f=JPEG?w=260&h=298',
                width: 250,
              ),
            ),
            //@+node:swot.20221030081542.1: *12* Positioned
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
      ),
      //@-others
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221023152107.1: *4* R Example
//@+node:swot.20221023152107.2: *5* R  -- Scaffold
class R extends StatelessWidget {
  const R({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //@+others
      //@+node:swot.20221023152533.1: *6* AppBar
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
            onPressed: () {},
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
        elevation: 0.0, // 去掉 appBar 与 body 之间的阴影
      ),
      //@-others
      body: DemoR(),
    );
  }
}

//@+node:swot.20221023152107.4: *5* DemoR
//@@language dart
//@@tabwidth -2
class DemoR extends StatefulWidget {
  const DemoR({super.key});

  @override
  State<DemoR> createState() => _DemoRState();
}

class _DemoRState extends State<DemoR> {
  //@+others
  //@+node:swot.20221023152107.5: *6* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221023152107.6: *7* SingleChildScrollView
        SingleChildScrollView(
          child:
          //@+others
          //@+node:swot.20221023152107.7: *8* Column
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //@+others
            //@+node:swot.20221023154547.2: *9* ElevatedButton -- show ReorderableListViewExample
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
            //@+node:swot.20221030084137.1: *9* show RadioListTileExample
            RadioListTileExample(),
            //@+node:swot.20221030181409.2: *9* ElevatedButton -- show RefreshIndicatorExample
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

            //@+node:swot.20221030205503.1: *9* show RotatedBoxExample
            RotatedBoxExample(),
            //@+node:swot.20221031182942.1: *9* show RangeSliderExample
            RangeSliderExample(),
            //@-others
          ]),
          //@-others
        );
        //@-others
  }
  //@-others
}

//@+node:swot.20221023152107.13: *5* ExampleR
//@+node:swot.20221030084432.1: *6* radioListTileOptions
List<String> radioListTileOptions = ['Option 1', 'Option 2'];

//@+node:swot.20221030083241.2: *6* RadioListTileExample
//@@language dart
//@@tabwidth -2
class RadioListTileExample extends StatefulWidget {
  const RadioListTileExample({super.key});

  @override
  State<RadioListTileExample> createState() => _RadioListTileExampleState();
}

class _RadioListTileExampleState extends State<RadioListTileExample> {
  //@+others
  //@+node:swot.20221030083241.3: *7* varible
  String currentOption = radioListTileOptions[0];
  //@+node:swot.20221030083241.4: *7* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221030083241.5: *7* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221030083241.6: *7* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221030083721.2: *8* Column
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //@+others
            //@+node:swot.20221030083736.1: *9* RadioListTile
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
            //@+node:swot.20221030084017.1: *9* RadioListTile
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

//@+node:swot.20221031182202.2: *6* RangeSliderExample
//@@language dart
//@@tabwidth -2
class RangeSliderExample extends StatefulWidget {
  const RangeSliderExample({super.key});

  @override
  State<RangeSliderExample> createState() => _RangeSliderExampleState();
}

class _RangeSliderExampleState extends State<RangeSliderExample> {
  //@+others
  //@+node:swot.20221031182202.3: *7* varible
  RangeValues values = const RangeValues(0.1, 0.5);
  //@+node:swot.20221031182202.4: *7* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221031182202.5: *7* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221031182202.6: *7* build()
  @override
  Widget build(BuildContext context) {
    //@+others
    //@+node:swot.20221031182439.1: *8* varible
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );
    //@+node:swot.20221031182617.2: *8* Center
    return Center(
      child:
          //@+others
          //@+node:swot.20221031182643.1: *9* RangeSlider
          RangeSlider(
            values: values,
            divisions: 8,
            labels: labels,
            onChanged: (newValues) {
              setState(() {
                values = newValues;
              });
            },
          ),
          //@-others
    );
    //@-others
  }
  //@-others
}

//@+node:swot.20221030172700.2: *6* RefreshIndicatorExample
//@@language dart
//@@tabwidth -2
class RefreshIndicatorExample extends StatefulWidget {
  const RefreshIndicatorExample({super.key});

  @override
  State<RefreshIndicatorExample> createState() =>
      _RefreshIndicatorExampleState();
}

class _RefreshIndicatorExampleState extends State<RefreshIndicatorExample> {
  //@+others
  //@+node:swot.20221030172700.3: *7* varible
  List<String> items = [
    "Item 1",
    "Item 2",
  ];
  //@+node:swot.20221030172700.4: *7* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221030172700.5: *7* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221030172700.6: *7* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221030182420.2: *8* Scaffold
        Scaffold(
          //@+others
          //@+node:swot.20221030182420.3: *9* appBar
          appBar: AppBar(
            title: Text('RefreshIndicatorExample'),
            // leading: Icon(Icons.menu),
            actions: [
              Icon(Icons.settings),
            ],
            elevation: 0.0,
            centerTitle: true,
          ),
          //@+node:swot.20221030182420.4: *9* body
          body:
              //@+others
              //@+node:swot.20221030173047.1: *10* RefreshIndicator
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
                  itemBuilder: ((context, index) =>
                    Padding(
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

//@+node:swot.20221023152801.2: *6* ReorderableListViewExample
//@@language dart
//@@tabwidth -2
class ReorderableListViewExample extends StatefulWidget {
  const ReorderableListViewExample({super.key});

  @override
  State<ReorderableListViewExample> createState() =>
      _ReorderableListViewExampleState();
}

class _ReorderableListViewExampleState
    extends State<ReorderableListViewExample> {
  //@+others
  //@+node:swot.20221023152933.1: *7* varible
  final List<int> items = List<int>.generate(30, (int index) => index);
  //@+node:swot.20221023152801.3: *7* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221023152801.4: *7* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221023152801.5: *7* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221023154334.2: *8* Scaffold
        Scaffold(
          //@+others
          //@+node:swot.20221023154334.3: *9* appBar
          appBar: AppBar(
            title: Text('ReorderableListView'),
            actions: [
              Icon(Icons.settings),
            ],
            elevation: 0.0,
            centerTitle: true,
          ),
          //@+node:swot.20221023154334.4: *9* body
          body:
              //@+others
              //@+node:swot.20221023153058.1: *10* ReorderableListView
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

//@+node:swot.20221030205049.2: *6* RotatedBoxExample
//@@language dart
//@@tabwidth -2
class RotatedBoxExample extends StatelessWidget {
  const RotatedBoxExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221030205049.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221030205124.1: *8* RotatedBox
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

//@+node:swot.20221024070848.1: *4* S Example
//@+node:swot.20221024070848.2: *5* S  -- Scaffold
class S extends StatelessWidget {
  const S({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //@+others
        //@+node:swot.20221024070848.3: *6* AppBar
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
              onPressed: () {},
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
          elevation: 0.0, // 去掉 appBar 与 body 之间的阴影
        ),
        //@-others
        body: DemoS(),
      ),
    );
  }
}

//@+node:swot.20221024070848.4: *5* DemoS
//@@language dart
//@@tabwidth -2
class DemoS extends StatefulWidget {
  const DemoS({super.key});

  @override
  State<DemoS> createState() => _DemoSState();
}

class _DemoSState extends State<DemoS> {
  //@+others
  //@+node:swot.20221024070848.5: *6* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221024070848.6: *7* SingleChildScrollView
        SingleChildScrollView(
          child:
              //@+others
              //@+node:swot.20221024070848.7: *8* Column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //@+others
                  //@+node:swot.20221024100552.1: *9* show DatePickerExample
                  DatePickerExample(),
                  Divider(),
                  //@+node:swot.20221024103554.1: *9* show TimePickerExample
                  TimePickerExample(),
                  Divider(),
                  //@+node:swot.20221024110745.1: *9* show DateRangePickerExample
                  DateRangePickerExample(),
                  Divider(),
                  //@+node:swot.20221029143324.2: *9* ElevatedButton -- show StackExample
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

                  //@+node:swot.20221029190037.1: *9* ElevatedButton -- show StepperExample
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

                  //@+node:swot.20221029213808.1: *9* ElevatedButton -- show StreamBuilderExample
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
                  //@+node:swot.20221029215656.1: *9* show SwitchExample
                  SwitchExample(),
                  //@+node:swot.20221030210255.1: *9* show SelectableTextExample
                  SelectableTextExample(),
                  //@+node:swot.20221030211748.1: *9* show SliderExample
                  SliderExample(),
                  //@+node:swot.20221030212913.1: *9* show SnackBarExample
                  SnackBarExample(),
                  //@+node:swot.20221030225013.2: *9* ElevatedButton -- show SafeAreaExample
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

                  //@+node:swot.20221031122837.2: *9* ElevatedButton -- show SearchDelegateExample
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        // backgroundColor: Colors.orangeAccent,
                        ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchDelegateExample(),
                        ),
                      );
                    },
                    child: const Text('CustomSearchDelegate'),
                  ),
                  //@+node:swot.20221031172540.2: *9* ElevatedButton -- show SliveAppBarExample
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        // backgroundColor: Colors.orangeAccent,
                        ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SliveAppBarExample(),
                        ),
                      );
                    },
                    child: const Text('SliveAppBarExample'),
                  ),
                  //@+node:swot.20221031225347.2: *9* ElevatedButton -- show SpreadOperatorExample
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        // backgroundColor: Colors.orangeAccent,
                        ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SpreadOperatorExample(),
                        ),
                      );
                    },
                    child: const Text('SpreadOperatorExample'),
                  ),

                  //@-others
                ],
              ),

              //@-others
        )
        //@-others
        ;
  }
  //@-others
}

//@+node:swot.20221024070848.8: *5* ExampleS
//@+node:swot.20221030224821.2: *6* SafeAreaExample
//@@language dart
//@@tabwidth -2
class SafeAreaExample extends StatelessWidget {
  const SafeAreaExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221030224821.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221030225147.1: *8* SafeArea
        SafeArea(
        child:
            //@+others
            //@+node:swot.20221030224837.1: *9* Text
            Text(
              'Swotpp App',
              style: TextStyle(fontSize: 30),
            )
            //@-others
        );
        //@-others
  }
  //@-others
}

//@+node:swot.20221031115636.1: *6* CustomSearchDelegate
class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Apple',
    'Banana',
    'Pear',
    'Watermelons',
    'Oranges',
    'Blueberries',
    'Strawberries',
    'Raspberries',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}

//@+node:swot.20221031114947.2: *6* SearchDelegateExample
//@@language dart
//@@tabwidth -2
class SearchDelegateExample extends StatefulWidget {
  const SearchDelegateExample({super.key});

  @override
  State<SearchDelegateExample> createState() => _SearchDelegateExampleState();
}

class _SearchDelegateExampleState extends State<SearchDelegateExample> {
  //@+others
  //@+node:swot.20221031114947.3: *7* varible
  //@+node:swot.20221031114947.6: *7* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221031115107.2: *8* Scaffold
        Scaffold(
          //@+others
          //@+node:swot.20221031115107.3: *9* appBar
          appBar: AppBar(
            title: Text('SearchDelegateExample'),
            elevation: 0.0,
            centerTitle: true,
            actions: [
              //@+others
              //@+node:swot.20221031115310.2: *10* IconButton !!!
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  showSearch(
                    // call search
                    context: context,
                    delegate: CustomSearchDelegate(),
                  );
                },
              ),
              //@-others
            ],
          ),
          //@+node:swot.20221031115107.4: *9* body
          body: null,
          //@-others
        );
        //@-others
  }
  //@-others
}

//@+node:swot.20221030210033.2: *6* SelectableTextExample
//@@language dart
//@@tabwidth -2
class SelectableTextExample extends StatefulWidget {
  const SelectableTextExample({super.key});

  @override
  State<SelectableTextExample> createState() => _SelectableTextExampleState();
}

class _SelectableTextExampleState extends State<SelectableTextExample> {
  //@+others
  //@+node:swot.20221101072329.1: *7* varible
  String selectedText = '';

  final String _selectableText = 'This is a selectable text';

  final TextStyle _styleBlue = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  );

  final TextStyle _style = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );
  //@+node:swot.20221030210033.6: *7* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221101072843.2: *8* Column
        Column(
          children: [
            //@+others
            //@+node:swot.20221030210100.1: *9* SelectableText
            Text(
              selectedText,
              style: _styleBlue,
            ),
            TextSelectionTheme(
              data: const TextSelectionThemeData(
                selectionColor: Colors.yellow,
              ),
              child: SelectableText(
                _selectableText,
                style: _style,
                onSelectionChanged: (selection, cause) {
                  setState(() {
                    selectedText = _selectableText.substring(
                      selection.start,
                      selection.end,
                    );
                  });
                },
              ),
            ),
            //@-others
          ],
        );
        //@-others
  }
  //@-others
}

//@+node:swot.20221024095344.2: *6* DatePickerExample
//@@language dart
//@@tabwidth -2
class DatePickerExample extends StatefulWidget {
  const DatePickerExample({super.key});

  @override
  State<DatePickerExample> createState() => _DatePickerExampleState();
}

class _DatePickerExampleState extends State<DatePickerExample> {
  //@+others
  //@+node:swot.20221024095406.1: *7* varible
  DateTime selectedDate = DateTime.now();
  // DateTime selectedDate = DateTime(2100);
  //@+node:swot.20221024095344.3: *7* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221024095344.4: *7* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221024095344.5: *7* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
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
          Text(
              "${selectedDate.year}-${selectedDate.month}-${selectedDate.day}"),
        ],
      ),
    );
  }
  //@-others
}

//@+node:swot.20221024103523.2: *6* TimePickerExample
//@@language dart
//@@tabwidth -2
class TimePickerExample extends StatefulWidget {
  const TimePickerExample({super.key});

  @override
  State<TimePickerExample> createState() => _TimePickerExampleState();
}

class _TimePickerExampleState extends State<TimePickerExample> {
  //@+others
  //@+node:swot.20221024103850.1: *7* varible
  TimeOfDay selectedTime = TimeOfDay.now();
  // TimeOfDay? time = const TimeOfDay(hour: 12, minute: 12);
  //@+node:swot.20221024103523.3: *7* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221024103523.4: *7* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221024103957.1: *7* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
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

//@+node:swot.20221024110030.2: *6* DateRangePickerExample
//@@language dart
//@@tabwidth -2
class DateRangePickerExample extends StatefulWidget {
  const DateRangePickerExample({super.key});

  @override
  State<DateRangePickerExample> createState() => _DateRangePickerExampleState();
}

class _DateRangePickerExampleState extends State<DateRangePickerExample> {
  //@+others
  //@+node:swot.20221024110048.1: *7* varible
  DateTimeRange selectedDates = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now(),
  );
  //@+node:swot.20221024110030.3: *7* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221024110030.4: *7* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221024110030.5: *7* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
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

//@+node:swot.20221030210547.2: *6* SliderExample
//@@language dart
//@@tabwidth -2
class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  //@+others
  //@+node:swot.20221030210547.3: *7* varible
  double _currentSliderValue = 20;
  //@+node:swot.20221030210547.6: *7* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221030211118.1: *8* Slider
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
        );
        //@-others
  }
  //@-others
}

//@+node:swot.20221031171010.2: *6* SliveAppBarExample
//@@language dart
//@@tabwidth -2
class SliveAppBarExample extends StatefulWidget {
  const SliveAppBarExample({super.key});

  @override
  State<SliveAppBarExample> createState() => _SliveAppBarExampleState();
}

class _SliveAppBarExampleState extends State<SliveAppBarExample> {
  //@+others
  //@+node:swot.20221031171010.6: *7* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221031171922.2: *8* Scaffold
        Scaffold(
          //@+others
          //@+node:swot.20221031171922.4: *9* body
          body:
              //@+others
              //@+node:swot.20221031172002.1: *10* CustomScrollView
              CustomScrollView(
                slivers: [
                  const SliverAppBar(
                    title: Text('Flutter'),
                    centerTitle: false,
                    // pinned: true,
                    floating: true,
                    // snap: true,
                    expandedHeight: 150.0,
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text('Swot'),
                      centerTitle: true,
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate([
                      const Text(
                        'SLIVER',
                        style: TextStyle(fontSize: 600),
                      ),
                    ]),
                  ),
                ],
              ),
              //@-others
          //@-others
        );
        //@-others
  }
  //@-others
}

//@+node:swot.20221030212509.2: *6* SnackBarExample
//@@language dart
//@@tabwidth -2
class SnackBarExample extends StatelessWidget {
  const SnackBarExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221030212509.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221030212550.2: *8* ElevatedButton
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
                  onPressed: () {},
                ),
              ),
            );
          },
          child: const Text('Show SnackBar'),
        );

        //@-others
  }
  //@-others
}

//@+node:swot.20221031222131.2: *6* SpreadOperatorExample
//@@language dart
//@@tabwidth -2
class SpreadOperatorExample extends StatelessWidget {
  const SpreadOperatorExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221031222131.3: *7* build()
  @override
  Widget build(BuildContext context) {
    //@+others
    //@+node:swot.20221031222154.1: *8* varible
    List<Widget> imagesList = [
      Image.asset(
        'assets/fengjing.webp',
        height: 50,
      ),
      Image.asset(
        'assets/fengjing.webp',
        height: 50,
      ),
      Image.asset(
        'assets/fengjing.webp',
        height: 50,
      ),
    ];
    //@+node:swot.20221031225000.2: *8* Scaffold
    return Scaffold(
      //@+others
      //@+node:swot.20221031225000.3: *9* appBar
      appBar: AppBar(
        title: Text('SpreadOperator'),
        // leading: Icon(Icons.menu),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
        ],
      ),
      //@+node:swot.20221031225000.4: *9* body
      body:
          //@+others
          //@+node:swot.20221031225029.2: *10* Column
          Column(
            children: [
              Image.asset('assets/avatar.webp'),
              SizedBox(height: 20.0),
              Column(children: imagesList),
              SizedBox(height: 20.0),
              ...imagesList, // same result with above Column
            ],
          ),
          //@-others
      //@-others
    );
    //@-others
  }
  //@-others
}

//@+node:swot.20221029142534.2: *6* StackExample
//@@language dart
//@@tabwidth -2
class StackExample extends StatelessWidget {
  const StackExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221029142534.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221029142715.2: *8* Scaffold
        Scaffold(
          //@+others
          //@+node:swot.20221029142715.3: *9* appBar
          appBar: AppBar(
            title: Text('Stack'),
            // leading: Icon(Icons.menu),
            actions: [
              Icon(Icons.settings),
            ],
            elevation: 0.0,
            centerTitle: true,
          ),
          //@+node:swot.20221029142715.4: *9* body
          body:
              //@+others
              //@+node:swot.20221029142815.2: *10* Center
              Center(
                child:
                    //@+others
                    //@+node:swot.20221029142627.1: *11* Stack
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
              ),
              //@-others
          //@-others
        );
        //@-others
  }
  //@-others
}

//@+node:swot.20221029144530.2: *6* StepperExample
//@@language dart
//@@tabwidth -2
class StepperExample extends StatefulWidget {
  const StepperExample({super.key});

  @override
  State<StepperExample> createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  //@+others
  //@+node:swot.20221029144530.3: *7* varible
  int _currentStep = 0;
  //@+node:swot.20221029144530.4: *7* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221029144530.5: *7* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221029144530.6: *7* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221029144924.2: *8* Scaffold
        Scaffold(
          //@+others
          //@+node:swot.20221029144924.3: *9* appBar
          appBar: AppBar(
            title: Text('Stepper'),
            // leading: Icon(Icons.menu),
            actions: [
              Icon(Icons.settings),
            ],
            elevation: 0.0,
            centerTitle: true,
          ),
          //@+node:swot.20221029144924.4: *9* body
          body:
              //@+others
              //@+node:swot.20221029144954.2: *10* Center
              Center(
                child:
                    //@+others
                    //@+node:swot.20221029145033.1: *11* Stepper
                    Stepper(
                      //@+others
                      //@+node:swot.20221029191553.1: *12* steps
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
                        setState(() {
                          _currentStep = newIndex;
                        });
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
              ),
              //@-others
          //@-others
        );
        //@-others
  }
  //@-others
}

//@+node:swot.20221029211743.1: *6* generateStream -- FAKE FIREBASE STREAM
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

//@+node:swot.20221029211533.2: *6* StreamBuilderExample
//@@language dart
//@@tabwidth -2
class StreamBuilderExample extends StatefulWidget {
  const StreamBuilderExample({super.key});

  @override
  State<StreamBuilderExample> createState() => _StreamBuilderExampleState();
}

class _StreamBuilderExampleState extends State<StreamBuilderExample> {
  //@+others
  //@+node:swot.20221029211533.6: *7* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221029213944.2: *8* Scaffold
        Scaffold(
          //@+others
          //@+node:swot.20221029213944.3: *9* appBar
          appBar: AppBar(
            title: Text('StreamBuilder'),
            // leading: Icon(Icons.menu),
            actions: [
              Icon(Icons.settings),
            ],
            elevation: 0.0,
            centerTitle: true,
          ),
          //@+node:swot.20221029213944.4: *9* body
          body:
              //@+others
              //@+node:swot.20221029212803.2: *10* Center
              Center(
                child:
                    //@+others
                    //@+node:swot.20221029212812.1: *11* StreamBuilder
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
              ),
              //@-others
          //@-others
        );
        //@-others
  }
  //@-others
}

//@+node:swot.20221029215403.2: *6* SwitchExample
//@@language dart
//@@tabwidth -2
class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  //@+others
  //@+node:swot.20221029215403.3: *7* varible
  bool isSwitched = false;
  //@+node:swot.20221029215403.4: *7* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221029215403.5: *7* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221029215403.6: *7* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221029215500.2: *8* Center
        Center(
          child:
              //@+others
              //@+node:swot.20221029215505.1: *9* Switch
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              )
              //@-others
        );
        //@-others
  }
  //@-others
}

//@+node:swot.20221023175859.1: *4* T Example
//@+node:swot.20221023175859.2: *5* T  -- Scaffold
class T extends StatelessWidget {
  const T({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //@+others
      //@+node:swot.20221023175859.3: *6* AppBar
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
            onPressed: () {},
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
        elevation: 0.0, // 去掉 appBar 与 body 之间的阴影
      ),
      //@-others
      body: const DemoT(),
    );
  }
}

//@+node:swot.20221023175859.4: *5* DemoT
//@@language dart
//@@tabwidth -2
class DemoT extends StatefulWidget {
  const DemoT({super.key});

  @override
  State<DemoT> createState() => _DemoTState();
}

class _DemoTState extends State<DemoT> {
  //@+others
  //@+node:swot.20221023175859.5: *6* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221023175859.6: *7* SingleChildScrollView
        SingleChildScrollView(
          child:
              //@+others
              //@+node:swot.20221023175859.7: *8* Column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //@+others
                  //@+node:swot.20221023195608.1: *9* show TableExample
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
                  //@+node:swot.20221113181739.2: *9* ElevatedButton -- show TextFieldExample
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TextFieldExample(),
                        ),
                      );
                    },
                    child: const Text('TextFieldExample'),
                  ),
                  Divider(),
                  //@+node:swot.20221027182544.1: *9* show TextFormFieldExample
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
                  //@+node:swot.20221029222412.2: *9* ElevatedButton -- show TabPageSelectorExample
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

                  //@+node:swot.20221029232032.2: *9* ElevatedButton -- show TabBarExample
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

                  //@+node:swot.20221031220908.1: *9* show TooltipExample
                  TooltipExample(),
                  //@-others
                ],
              ),
              //@-others
        );
        //@-others
  }
  //@-others
}

//@+node:swot.20221023175859.14: *5* ExampleT
//@+node:swot.20221023193833.2: *6* TableExample
//@@language dart
//@@tabwidth -2
class TableExample extends StatelessWidget {
  const TableExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221023193833.3: *7* build()
  @override
  Widget build(BuildContext context) {
    //@+others
    //@+node:swot.20221023193950.2: *8* Scaffold
    return Scaffold(
      //@+others
      //@+node:swot.20221023193950.3: *9* appBar
      appBar: AppBar(
        title: const Text('Table'),
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221023193950.4: *9* body
      body:
          //@+others
          //@+node:swot.20221023194122.1: *10* Center
          Center(
            child: Padding(
            padding: const EdgeInsets.all(15.0),
            child:
                //@+others
                //@+node:swot.20221023200224.1: *11* SingleChildScrollView
                SingleChildScrollView(
                  child:
                      //@+others
                      //@+node:swot.20221023194310.1: *12* Table
                      Table(
                          border: TableBorder.all(color: Colors.white30),
                          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                          children: [
                            //@+others
                            //@+node:swot.20221023194533.1: *13* TableRow
                            const TableRow(
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                              ),
                              children: [
                                //@+others
                                //@+node:swot.20221023194941.1: *14* TableCell
                                TableCell(
                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Title 1'),
                                  ),
                                ),
                                //@+node:swot.20221023194949.1: *14* TableCell
                                TableCell(
                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Title 2'),
                                  ),
                                ),
                                //@+node:swot.20221023194950.1: *14* TableCell
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
                            //@+node:swot.20221023195102.1: *13* List.generate
                            ...List.generate(
                              30,
                              (index) => const TableRow(
                                children: [
                                  //@+others
                                  //@+node:swot.20221023195414.1: *14* TableCell
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Cell 1'),
                                    ),
                                  ),
                                  //@+node:swot.20221023195426.1: *14* TableCell
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Cell 2'),
                                    ),
                                  ),
                                  //@+node:swot.20221023195426.2: *14* TableCell
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
                          ],
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

//@+node:swot.20221029230649.2: *6* TabBarExample
//@@language dart
//@@tabwidth -2
class TabBarExample extends StatelessWidget {
  const TabBarExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221029230649.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221029230800.1: *8* DefaultTabController !!!
        DefaultTabController(
          length: 3,
          child:
              //@+others
              //@+node:swot.20221029230841.2: *9* Scaffold
              Scaffold(
                //@+others
                //@+node:swot.20221029230841.3: *10* appBar
                appBar: AppBar(
                  title: Text('TabBar'),
                  bottom:
                      //@+others
                      //@+node:swot.20221111222446.1: *11* TabBar !!!
                      const TabBar(
                        tabs: [
                          Tab(text: 'Tab 1', icon: Icon(Icons.home)),
                          Tab(text: 'Tab 2', icon: Icon(Icons.settings)),
                          Tab(text: 'Tab 3', icon: Icon(Icons.person)),
                        ],
                      ),
                      //@-others
                  // leading: Icon(Icons.menu),
                  actions: [
                    Icon(Icons.settings),
                  ],
                  elevation: 0.0,
                  centerTitle: true,
                ),
                //@+node:swot.20221029230841.4: *10* body
                body:
                    //@+others
                    //@+node:swot.20221029231559.1: *11* TabBarView !!!
                    TabBarView(
                      children: [
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
                      ],
                    )
                    //@-others
                //@-others
              ),
              //@-others
        );
        //@-others
  }
  //@-others
}

//@+node:swot.20221029220342.1: *6* tabPageSelectorWidgets
List<Widget> tabPageSelectorWidgets = const [
  Icon(Icons.home, size: 80),
  Icon(Icons.settings, size: 80),
  Icon(Icons.person, size: 80),
];

//@+node:swot.20221029220227.2: *6* TabPageSelectorExample
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
  //@+node:swot.20221029220227.3: *7* varible
  late final TabController controller;
  int _index = 0;
  //@+node:swot.20221029220227.4: *7* initState()
  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: tabPageSelectorWidgets.length,
      initialIndex: _index,
      vsync: this,
    );
  }

  //@+node:swot.20221029220227.5: *7* dispose()
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  //@+node:swot.20221029220227.6: *7* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221029221243.2: *8* Scaffold
        Scaffold(
          //@+others
          //@+node:swot.20221029221243.3: *9* appBar
          appBar: AppBar(
            title: Text('TabPageSelector'),
            // leading: Icon(Icons.menu),
            actions: [
              Icon(Icons.settings),
            ],
            elevation: 0.0,
            centerTitle: true,
          ),
          //@+node:swot.20221029221243.4: *9* body
          body:
              //@+others
              //@+node:swot.20221029221337.1: *10* Stack
              Stack(
                alignment: Alignment.center,
                children: [
                  TabBarView(
                    controller: controller, // TabController
                    children: tabPageSelectorWidgets,
                  ),
                  Positioned(
                    bottom: 40,
                    child: TabPageSelector(
                      controller: controller, // TabController
                      color: Colors.black38,
                    ),
                  ),
                ],
              ),
              //@-others
          //@+node:swot.20221029221243.6: *9* floatingActionButton
          floatingActionButton: ButtonBar(
            children: [
              FloatingActionButton.small(
                onPressed: () {
                  (_index != tabPageSelectorWidgets.length - 1)
                  ? _index++
                  : _index = 0;
                  controller.animateTo(_index);
                },
                hoverElevation: 0,
                elevation: 0,
                child: const Icon(Icons.navigate_next),
              ),
            ],
          ),
          //@-others
        );
        //@-others
  }
  //@-others
}

//@+node:swot.20221113174434.2: *6* TextFieldExample
//@@language dart
//@@tabwidth -2
class TextFieldExample extends StatelessWidget {
  const TextFieldExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221113174434.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221113180505.1: *8* GestureDetector -- unfocus()
    GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child:
      //@+others
      //@+node:swot.20221113180641.1: *9* Scaffold
      Scaffold(
        //@+others
        //@+node:swot.20221113180931.1: *10* appBar
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset(
                // 'assets/images/logo.png',
                // scale: 12,
              // ),
              // const SizedBox(
                // width: 10,
              // ),
              const Text(
                'FlutterBeads',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          backgroundColor: const Color(0xff6ae792),
        ),
        //@+node:swot.20221113181008.1: *10* body
        body: Column(
          children: [
            //@+others
            //@+node:swot.20221113181132.1: *11* TextField -- number
            TextField(
              decoration: InputDecoration(labelText: 'Enter Number'),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            //@+node:swot.20221113181152.1: *11* TextField -- decimal
            TextField(
              decoration: InputDecoration(labelText: 'Enter Decimal value'),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9.,]')),
              ],
            ),
            //@+node:swot.20221113181202.1: *11* TextField -- phone
            TextField(
              decoration: InputDecoration(labelText: 'Enter phone number'),
              keyboardType: TextInputType.phone,
            ),
            //@+node:swot.20221113181209.1: *11* TextField -- done
            TextField(
              decoration: InputDecoration(labelText: 'Enter Number'),
              keyboardType: defaultTargetPlatform == TargetPlatform.iOS
                  ? TextInputType.numberWithOptions(decimal: true, signed: true)
                  : TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            //@-others
          ],
        ),
        //@-others
      ),
      //@-others
    );
    //@-others
  }
  //@-others
}
//@+node:swot.20221027175533.2: *6* TextFormFieldExample
//@@language dart
//@@tabwidth -2
class TextFormFieldExample extends StatefulWidget {
  const TextFormFieldExample({super.key});

  @override
  State<TextFormFieldExample> createState() => _TextFormFieldExampleState();
}

class _TextFormFieldExampleState extends State<TextFormFieldExample> {
  //@+others
  //@+node:swot.20221027175533.3: *7* varible
  List<String> titles = [
    '',
    '',
    '',
  ];
  //@+node:swot.20221027175533.6: *7* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221027183133.2: *8* Scaffold
        Scaffold(
          //@+others
          //@+node:swot.20221027183133.3: *9* appBar
          appBar: AppBar(
            title: Text('TextFormField'),
            // leading: Icon(Icons.menu),
            actions: [
              Icon(Icons.settings),
            ],
            elevation: 0.0,
            centerTitle: true,
          ),
          //@+node:swot.20221027183133.4: *9* body
          body:
              //@+others
              //@+node:swot.20221027180846.1: *10* SingleChildScrollView
              SingleChildScrollView(
                child:
                    //@+others
                    //@+node:swot.20221027180945.1: *11* Form
                    Form(
                      autovalidateMode: AutovalidateMode.always,
                      //@+others
                      //@+node:swot.20221112184234.1: *12* 2) onChanged !!! Form.of(primaryFocus!.context!).save -> setState(() {})
                      // TextFormField changed then call onSaved()
                      onChanged: () {
                        setState(() {
                          Form.of(primaryFocus!.context!)!.save();
                        });
                      },
                      //@+node:swot.20221112184709.1: *12* child
                      child:
                          //@+others
                          //@+node:swot.20221027182206.1: *13* Column
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children:
                            //@+others
                            //@+node:swot.20221112180710.1: *14* List.generate
                            List.generate(3, (int index) {
                              return Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    //@+others
                                    //@+node:swot.20221112180550.1: *15* 1) TextFormField input string
                                    TextFormField(
                                      //@+others
                                      //@+node:swot.20221112182519.1: *16* 3) onSaved !!! titles[index] = value
                                      onSaved: (String? value) {
                                        if (value != null) {
                                          titles[index] = value;
                                          print('index: $index');  // will print all index: 0,1,2
                                        }
                                      },
                                      //@-others
                                    ),
                                    //@+node:swot.20221112180604.1: *15* SizedBox
                                    const SizedBox(height: 10),
                                    //@+node:swot.20221112180616.1: *15* 4) Card !!! titles[index]
                                    Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(titles[index]),
                                      ),
                                    ),
                                    //@-others
                                  ],
                                ),
                              );
                            }),
                            //@-others
                          ),
                          //@-others
                      //@-others
                    ),
                    //@-others
              ),
              //@-others
          //@-others
        );
        //@-others
  }
  //@-others
}

//@+node:swot.20221031220414.2: *6* TooltipExample
//@@language dart
//@@tabwidth -2
class TooltipExample extends StatelessWidget {
  const TooltipExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221031220414.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221031220639.2: *8* Center
        Center(
          child:
              //@+others
              //@+node:swot.20221031220649.1: *9* Tooltip
              Tooltip(
                message: 'Image message',
                child: Image.asset(
                  width: 200,
                  'assets/fengjing.webp',
                ),
              )
              //@-others
        );
        //@-others
  }
  //@-others
}

//@+node:swot.20221030213442.1: *3* Example U-Z
//@+node:swot.20221030213518.1: *4* V Example
//@+node:swot.20221030213518.2: *5* V  -- Scaffold
class V extends StatelessWidget {
  const V({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //@+others
      //@+node:swot.20221030213518.3: *6* AppBar
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
            onPressed: () {},
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
        elevation: 0.0, // 去掉 appBar 与 body 之间的阴影
      ),
      //@-others
      body: const DemoV(),
    );
  }
}

//@+node:swot.20221030213518.4: *5* DemoV
//@@language dart
//@@tabwidth -2
class DemoV extends StatefulWidget {
  const DemoV({super.key});

  @override
  State<DemoV> createState() => _DemoVState();
}

class _DemoVState extends State<DemoV> {
  //@+others
  //@+node:swot.20221030213518.5: *6* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221030213518.6: *7* SingleChildScrollView
        SingleChildScrollView(
          child:
          //@+others
          //@+node:swot.20221030213518.7: *8* Column
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //@+others
            //@+node:swot.20221030222854.1: *9* show VisibilityExample
            VisibilityExample(),
            //@-others
          ]),
          //@-others
        );
        //@-others
  }
  //@-others
}

//@+node:swot.20221030213518.12: *5* ExampleV
//@+node:swot.20221030222244.2: *6* VisibilityExample
//@@language dart
//@@tabwidth -2
class VisibilityExample extends StatefulWidget {
  const VisibilityExample({super.key});

  @override
  State<VisibilityExample> createState() => _VisibilityExampleState();
}

class _VisibilityExampleState extends State<VisibilityExample> {
  //@+others
  //@+node:swot.20221030222244.3: *7* varible
  bool isVisible = true;
  //@+node:swot.20221030222244.4: *7* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221030222244.5: *7* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221030222244.6: *7* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221030222322.2: *8* Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //@+others
            //@+node:swot.20221030222414.2: *9* ElevatedButton
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

            //@+node:swot.20221030222619.1: *9* Visibility
            Visibility(
              visible: isVisible,
              child: Image.network(
                'https://img2.baidu.com/it/u=11150005,537174686&fm=253&fmt=auto&app=138&f=JPEG?w=435&h=500',
                width: 100,
              ),
            ),
            //@-others
          ],
        );
        //@-others
  }
  //@-others
}

//@+node:swot.20221030223524.1: *4* W Example
//@+node:swot.20221030223524.2: *5* W  -- Scaffold
class W extends StatelessWidget {
  const W({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //@+others
      //@+node:swot.20221030223524.3: *6* AppBar
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
            onPressed: () {},
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
        elevation: 0.0, // 去掉 appBar 与 body 之间的阴影
      ),
      //@-others
      body: const DemoW(),
    );
  }
}

//@+node:swot.20221030223524.4: *5* DemoW
//@@language dart
//@@tabwidth -2
class DemoW extends StatefulWidget {
  const DemoW({super.key});

  @override
  State<DemoW> createState() => _DemoWState();
}

class _DemoWState extends State<DemoW> {
  //@+others
  //@+node:swot.20221030223524.5: *6* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221030223524.6: *7* SingleChildScrollView
        SingleChildScrollView(
          child:
              //@+others
              //@+node:swot.20221030223524.7: *8* Column
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                //@+others
                //@+node:swot.20221031202945.2: *9* ElevatedButton -- show WillPopScopeExample
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                      ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WillPopScopeExample(),
                      ),
                    );
                  },
                  child: const Text('WillPopScopeExample'),
                ),

                //@+node:swot.20221030224243.2: *9* ElevatedButton -- show WrapExample
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
              ]),
              //@-others
        );
        //@-others
  }
  //@-others
}

//@+node:swot.20221030223524.9: *5* ExampleW
//@+node:swot.20221031202343.2: *6* WillPopScopeExample
//@@language dart
//@@tabwidth -2
class WillPopScopeExample extends StatelessWidget {
  const WillPopScopeExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221031202343.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221031202510.1: *8* WillPopScope -- disable or enable back button
        WillPopScope(
          onWillPop: () async {
            return false; // disable Android back button
            // return true;    // enable Android back button
          },
          child:
              //@+others
              //@+node:swot.20221031202632.2: *9* Scaffold
              Scaffold(
                backgroundColor: Colors.blue,
                //@+others
                //@+node:swot.20221031202632.3: *10* appBar
                appBar: AppBar(
                  title: Text('WillPopScope'),
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                  elevation: 0.0,
                  centerTitle: true,
                  actions: [
                    Icon(Icons.settings),
                  ],
                ),
                //@+node:swot.20221031202632.4: *10* body
                body: const Center(),
                //@-others
              ),
              //@-others
        );
        //@-others
  }
  //@-others
}

//@+node:swot.20221030223719.2: *6* WrapExample
//@@language dart
//@@tabwidth -2
class WrapExample extends StatelessWidget {
  const WrapExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221030223719.3: *7* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221030224541.2: *8* Scaffold
        Scaffold(
          //@+others
          //@+node:swot.20221030224541.3: *9* appBar
          appBar: AppBar(
            title: Text('WrapExample'),
            // leading: Icon(Icons.menu),
            actions: [
              Icon(Icons.settings),
            ],
            elevation: 0.0,
            centerTitle: true,
          ),
          //@+node:swot.20221030224541.4: *9* body
          body:
              //@+others
              //@+node:swot.20221030223755.2: *10* Center
              Center(
                child:
                    //@+others
                    //@+node:swot.20221030223816.1: *11* Wrap
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
              ),
              //@-others
          //@-others
        );
        //@-others
  }
  //@-others
}
//@+node:swot.20221112223828.1: ** Composite Example
//@+node:swot.20221112214058.2: *3* UserLoginExample
//@@language dart
//@@tabwidth -2
class UserLoginExample extends StatefulWidget {
  const UserLoginExample({super.key});

  @override
  State<UserLoginExample> createState() => _UserLoginExampleState();
}

class _UserLoginExampleState extends State<UserLoginExample>{
  //@+others
  //@+node:swot.20221112214058.3: *4* varible
  String? _account;
  String? _pwd;
  final _formKey = GlobalKey<FormState>();
  //@+node:swot.20221112223203.1: *4* _login()
  _login(account, pwd) {
    print('账号：$account\n密码：$pwd');
  }
  //@+node:swot.20221112214058.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221112223644.2: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221112223644.3: *6* appBar
      appBar: AppBar(
        title: Text('UserLoginExample'),
        // leading: Icon(Icons.menu),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
        ],
      ),
      //@+node:swot.20221112223644.4: *6* body
      body:
      //@+others
      //@+node:swot.20221112214751.1: *7* Form
      Form(
        key: _formKey,
        //@+others
        //@+node:swot.20221112215637.1: *8* onWillPop
        onWillPop: () async {
          return await showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('提示'),
                content: Text('确认退出吗？'),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, false);
                    },
                    child: Text('取消')
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, true);
                    },
                    child: Text('确定'),
                  ),
                ],
              );
            },
          );
        },
        //@+node:swot.20221112215730.1: *8* Column
        child: Column(
          children: [
          //@+others
          //@+node:swot.20221112215838.1: *9* TextFormField _account
          TextFormField(
            autovalidateMode: AutovalidateMode.always,
            decoration: InputDecoration(hintText: '请输入账号'),
            onSaved: (value) {
              _account = value;
            },
            validator: (value) {
              RegExp reg = RegExp(r'^.{4}$');
              if (!reg.hasMatch(value!)) {
                return '账号最少4个字符';
              }
              return null;
            },
          ),
          //@+node:swot.20221112220311.1: *9* TextFormField _pwd
          TextFormField(
            autovalidateMode: AutovalidateMode.always,
            decoration: InputDecoration(hintText: '请输入密码'),
            obscureText: true,
            onSaved: (value) {
              _pwd = value;
            },
            validator: (value) {
              return value!.length >= 6 ? null : '密码最少6个字符';
            },
          ),
          //@+node:swot.20221112220552.2: *9* ElevatedButton login
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.orangeAccent,
            ),
            onPressed: () {
              var state = _formKey.currentState;
              if (state!.validate()) {
                state.save();
                _login(_account, _pwd);
              }
            },
            child: const Text('登录'),
          ),
          //@-others
          ],
        ),
        //@-others
      ),
      //@-others
      //@-others
    );
    //@-others
  }
  //@-others
}

//@-others
//@-leo
