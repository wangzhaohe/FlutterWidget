//@+leo-ver=5-thin
//@+node:swot.20221017093031.2: * @file lib/main.dart
//@@language dart
//@@tabwidth -2
//@+others
//@+node:swot.20221017093031.3: ** import
import 'dart:async';

import 'package:flutter/material.dart';

import 'alphabet.dart';
import 'composite.dart';
import 'functionality.dart';

//@+node:swot.20221017093031.4: ** main()
void main() {
  runApp(const MyApp());
}

//@+node:swot.20221017093031.5: ** class MyApp -- MaterialApp
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

//@+node:swot.20221021133107.2: ** class Home
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
        //@+others
        //@+node:swot.20221113194855.1: *6* appBar: AppBar
        appBar: AppBar(
          title: const Text('Flutter Widgets'),
          centerTitle: true,
          elevation: 4.0,
        ),
        //@+node:swot.20221112195018.2: *6* body: Column
        body: Column(
          children: [
            //@+others
            //@+node:swot.20221112195648.1: *7* Center -- Alphabetical Example
            const Center(
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  'Alphabetical Example',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            //@+node:swot.20221021133625.1: *7* Wrap -- alphabet ElevatedButton
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
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  'Composite Example',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            //@+<< ListTile -- User Login >>
            //@+node:swot.20221112213542.1: *8* << ListTile -- User Login >>
            ListTile(
              tileColor: Colors.blue,
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.person),
              title: const Text('User Login'),
              // trailing: const Icon(Icons.menu),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserLoginExample(),
                  ),
                );
              },
            ),
            //@-<< ListTile -- User Login >>
            //@+node:swot.20221114070028.1: *7* Center -- Functional Example
            const Center(
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  'Functional Example',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            //@+<< ListTile -- Check Platform >>
            //@+node:swot.20221114130724.1: *8* << ListTile -- Check Platform >>
            ListTile(
              tileColor: Colors.blue,
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.apple),
              title: const Text('Check Platform'),
              //@+<< trailing >>
              //@+node:swot.20221114153230.1: *9* << trailing >>
              trailing: PopupMenuButton(
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: "checkPlatform",
                    child: Text("Check Platform"),
                  ),
                  const PopupMenuItem(
                    value: "checkTopLevelPlatform",
                    child: Text("Check Top Level Platform"),
                  ),
                ],
                onSelected: (String newValue) {
                  if (newValue == "checkPlatform") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CheckPlatformExample(),
                      ),
                    );
                  } else if (newValue == "checkTopLevelPlatform") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CheckTopLevelPlatformExample(),
                      ),
                    );
                  }
                },
              ),
              //@-<< trailing >>
              onTap: () {},
            ),
            //@-<< ListTile -- Check Platform >>
            SizedBox(height: 4.0),
            //@+<< ListTile -- IfElse Widget >>
            //@+node:swot.20221116204444.1: *8* << ListTile -- IfElse Widget >>
            ListTile(
              tileColor: Colors.blue,
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.pages_outlined),
              title: const Text('IfElse Widget (use PageView)'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IfElseExample(),
                  ),
                );
              },
            ),
            //@-<< ListTile -- IfElse Widget >>
            SizedBox(height: 4.0),
            //@+<< Easy Steps to Close Keyboard >>
            //@+node:swot.20221117183726.1: *8* << Easy Steps to Close Keyboard >>
            ListTile(
              tileColor: Colors.blue,
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.pages_outlined),
              title: const Text('Easy Steps to Close Keyboard'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CloseKeyboardExample(),
                  ),
                );
              },
            ),
            //@-<< Easy Steps to Close Keyboard >>
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
//@+node:swot.20221021133027.1: *4* A
//@+node:swot.20221017093031.6: *5* class A  -- Scaffold
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
        // // AppBar 的下边变成了圆角
        // shape: const RoundedRectangleBorder(
          // borderRadius: BorderRadius.only(
            // bottomLeft: Radius.circular(25),
            // bottomRight: Radius.circular(25),
          // ),
        // ),

        backgroundColor: Colors.blue,
        elevation: 0.0, // 去掉 appBar 与 body 之间的阴影

        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Container(
            height: 80,
            color: Colors.blue[600],
            child: const Center(
              child: Text(
                'Appbar Bottom',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ),
      //@-others
      body: DemoA(),
    );
  }
}

//@+node:swot.20221017093031.8: *5* class DemoA
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
            //@+node:swot.20221115115504.1: *9* Axxx
            SizedBox(height: 5),
            ppAboutDialog(context),
            ppAboutListTile(),
            ppAbsorbPointer(),
            //@+<< ListTile AdaptiveExample >>
            //@+node:swot.20221031135430.2: *10* << ListTile AdaptiveExample >>
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: ListTile(
                tileColor: Colors.blue,
                textColor: Colors.white,
                iconColor: Colors.white,
                leading: const Icon(Icons.adb_outlined),
                title: const Text('Adaptive'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdaptiveExample(),
                    ),
                  );
                },
              ),
            ),
            //@-<< ListTile AdaptiveExample >>
            ppAlertDialog(context),
            ppAlign(),
            ppAspectRatio(),
            AutoCompleteExample(),
            //@+node:swot.20221115195409.1: *9* Animatedxxx
            AnimatedAlignExample(),
            AnimatedBuilderExample(),
            AnimatedContainerExample(),
            AnimatedCrossFadeExample(),
            AnimatedDefaultTextStyleExample(),
            AnimatedIconExample(),
            AnimatedModalBarrierExample(),
            AnimatedListExample(),
            AnimatedOpacityExample(),
            AnimatedPaddingExample(),
            AnimatedPhysicalModelExample(),
            AnimatedPositionedExample(),
            AnimatedRotationExample(),
            AnimatedSizeExample(),
            AnimatedSwitcherExample(),
            //@+node:swot.20221115194933.1: *9* SizedBox
            SizedBox(height: 200),
            //@-others
          ]),
          //@-others
        )
        //@-others
        ;
  }
  //@-others
}

//@+node:swot.20221021133039.1: *4* B
//@+node:swot.20221021171949.1: *5* class B  -- Scaffold
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

//@+node:swot.20221021172558.1: *5* class DemoB
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
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
        ]
      ),
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221022121254.1: *4* C
//@+node:swot.20221022121336.1: *5* class C  -- Scaffold
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

//@+node:swot.20221022121559.1: *5* class DemoC
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
        ListTile(
          tileColor: Colors.blue,
          textColor: Colors.white,
          iconColor: Colors.white,
          leading: const Icon(Icons.circle_outlined),
          title: const Text('CircleAvatar'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CircleAvatarExample(),
              ),
            );
          },
        ),
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
        ListTile(
          tileColor: Colors.blue,
          textColor: Colors.white,
          iconColor: Colors.white,
          leading: const Icon(Icons.circle_outlined),
          title: const Text('ClipRRect'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ClipRRectExample(),
              ),
            );
          },
        ),
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

//@+node:swot.20221024065815.1: *4* D
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

//@+node:swot.20221025205925.1: *4* E
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

//@+node:swot.20221026200827.1: *4* F
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

//@+node:swot.20221028070508.1: *4* G
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

//@+node:swot.20221029131000.1: *3* Example H-N
//@+node:swot.20221023124355.1: *4* H
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

//@+node:swot.20221029081714.1: *4* I
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

//@+node:swot.20221023105117.1: *4* L
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

//@+node:swot.20221023080501.1: *4* M
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

//@+node:swot.20221029134405.1: *4* N
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

//@+node:swot.20221029131010.1: *3* Example O-T
//@+node:swot.20221030231300.1: *4* O
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

//@+node:swot.20221023093033.1: *4* P
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

//@+node:swot.20221023152107.1: *4* R
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

//@+node:swot.20221024070848.1: *4* S
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

//@+node:swot.20221023175859.1: *4* T
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
                  //@+node:swot.20221114195006.2: *9* ElevatedButton -- show TextExample
                  //@@language dart
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TextExample(),
                        ),
                      );
                    },
                    child: const Text('TextExample'),
                  ),

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

//@+node:swot.20221030213442.1: *3* Example U-Z
//@+node:swot.20221030213518.1: *4* V
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

//@+node:swot.20221030223524.1: *4* W
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

//@-others
//@-leo
