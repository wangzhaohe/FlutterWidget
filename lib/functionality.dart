//@+leo-ver=5-thin
//@+node:swot.20221114214205.1: * @file lib/functionality.dart
//@@language dart
//@@tabwidth -2
//@+others
//@+node:swot.20221114214940.1: ** import
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
//@+node:swot.20221114214307.1: ** CheckPlatformExample
//@+doc
//@@language asciidoc
// Check Platform in Flutter The Right Way in 2022
//
// https://www.flutterbeads.com/how-to-check-platform-in-flutter-the-right-way/#How-to-Check-Platform-in-Flutter
//
// The platform in Fluter is determined by checking the `defaultTargetPlatform` and comparing it with `TargetPlatform` enum.
//
//@@language dart
// import ‘package:flutter/foundation.dart’;
//
// if (defaultTargetPlatform == TargetPlatform.android){
//   // Android specific code
// }
// else if (defaultTargetPlatform == TargetPlatform.iOS){
//   //iOS specific code
// }
// else {
//   //web or desktop specific code
// }
//
//@@language asciidoc
// Call it
//
//@@c
//@@language dart
/*
//@+<< ListTile -- Check Platform >>
//@+node:swot.20221114130724.1: *3* << ListTile -- Check Platform >>
ListTile(
  tileColor: Colors.blue,
  textColor: Colors.white,
  iconColor: Colors.white,
  leading: const Icon(Icons.apple),
  title: const Text('Check Platform'),
  //@+<< trailing >>
  //@+node:swot.20221114153230.1: *4* << trailing >>
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
*/

//@+node:swot.20221114214307.4: *3* class CheckPlatformExample
//@@language dart
//@@tabwidth -2
class CheckPlatformExample extends StatelessWidget {
  const CheckPlatformExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221114214307.5: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221114214307.6: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221114214307.7: *6* appBar
      appBar: AppBar(
        title: Text('CheckPlatform'),
        // leading: Icon(Icons.menu),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
        ],
      ),
      //@+node:swot.20221114214307.8: *6* body
      body:
      //@+others
      //@+node:swot.20221114214307.9: *7* Column
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //@+others
          //@+node:swot.20221114214307.10: *8* android
          if (defaultTargetPlatform == TargetPlatform.android) ...[
            const Center(
              child: Text(
                'Android',
                style: TextStyle(fontSize: 74, fontWeight: FontWeight.bold),
              ),
            )
          ]
          //@+node:swot.20221114214307.11: *8* iOS
          else if (defaultTargetPlatform == TargetPlatform.iOS) ...[
            const Center(
              child: Text(
                'iOS',
                style: TextStyle(fontSize: 74, fontWeight: FontWeight.bold),
              ),
            )
          ]
          //@+node:swot.20221114214307.12: *8* other
          else ...[
            const Center(
              child: Text(
                'Web',
                style: TextStyle(fontSize: 74, fontWeight: FontWeight.bold),
              ),
            )
          ]
          //@-others
        ],
      ),
      //@-others
      //@-others
    );
    //@-others
  }
  //@-others
}
//@+node:swot.20221114214307.13: *3* class CheckTopLevelPlatformExample
//@@language dart
//@@tabwidth -2
class CheckTopLevelPlatformExample extends StatelessWidget {
  const CheckTopLevelPlatformExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221114214307.14: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221114214307.15: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221114214307.16: *6* appBar
      appBar: AppBar(
        title: Text('CheckTopLevelPlatform'),
        // leading: Icon(Icons.menu),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
        ],
      ),
      //@+node:swot.20221114214307.17: *6* body
      body:
      //@+others
      //@+node:swot.20221114214307.18: *7* Column
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //@+others
          //@+node:swot.20221114214307.19: *8* isMobile & isDesktop
          if (PlatformDetails().isMobile) ...[
            const Center(
              child: Text(
                'Mobile',
                style: TextStyle(fontSize: 74, fontWeight: FontWeight.bold),
              ),
            )
          ] else if (PlatformDetails().isDesktop) ...[
            const Center(
              child: Text(
                'Desktop',
                style: TextStyle(fontSize: 74, fontWeight: FontWeight.bold),
              ),
            )
          ] else ...[
            const Center(
              child: Text(
                'Web',
                style: TextStyle(fontSize: 74, fontWeight: FontWeight.bold),
              ),
            )
          ]
          //@-others
        ],
      ),
      //@-others
      //@-others
    );
    //@-others
  }

  //@-others
}
//@+node:swot.20221114214307.20: *3* class PlatformDetails
class PlatformDetails {
  static final PlatformDetails _singleton = PlatformDetails._internal();

  factory PlatformDetails() {
    return _singleton;
  }

  PlatformDetails._internal();

  bool get isDesktop =>
      defaultTargetPlatform == TargetPlatform.macOS ||
      defaultTargetPlatform == TargetPlatform.linux ||
      defaultTargetPlatform == TargetPlatform.windows;

  bool get isMobile =>
      defaultTargetPlatform == TargetPlatform.iOS ||
      defaultTargetPlatform == TargetPlatform.android;
}
//@+node:swot.20221116195736.1: ** IfElseExample -- use PageView to show
//@+doc
//@@language asciidoc
// Flutter if else: Top 3 ways you need to know in 2022 (Code)
//
// https://www.flutterbeads.com/if-else-statement-in-flutter-widget/
//
//@+node:swot.20221116202858.1: *3* IfElseExample
//@@language dart
//@@tabwidth -2
class IfElseExample extends StatefulWidget {
  const IfElseExample({super.key});

  @override
  State<IfElseExample> createState() => _IfElseExampleState();
}

class _IfElseExampleState extends State<IfElseExample> {
  //@+others
  //@+node:swot.20221116202858.2: *4* varible
  final controller = PageController(initialPage: 0);  // Page 1
  bool switchValue = false;
  //@+node:swot.20221116202858.3: *4* dispose()
  dispose() {
    super.dispose();
    controller.dispose();
  }
  //@+node:swot.20221116215552.1: *4* Widget getLockStatus() !!!
  Widget getLockStatus(bool isLocked) {
    if (isLocked) {
      return const Icon(
        Icons.lock_outline,
        size: 200,
        color: Color(0xff6ae792),
      );
    } else {
      return const Icon(
        Icons.lock_open,
        size: 200,
        color: Colors.black,
      );
    }
  }
  //@+node:swot.20221116202858.4: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221116202858.5: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221116202858.6: *6* appBar
      appBar: AppBar(
        title: const Text('IfElseExample'),
        // leading: Icon(Icons.menu),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          //@+others
          //@+node:swot.20221116202858.7: *7* IconButton left
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
          //@+node:swot.20221116202858.8: *7* IconButton right
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
      //@+node:swot.20221116202858.9: *6* body
      body:
      //@+others
      //@+node:swot.20221116202858.10: *7* PageView
      PageView(
        // physics: const NeverScrollableScrollPhysics(),
        // scrollDirection: Axis.vertical,  // default is Axis.horizontal
        controller: controller,
        onPageChanged: (index) {
          print('Page ${index + 1}');
        },
        children: [
          //@+others
          //@+node:swot.20221116195958.1: *8* (1) Using the Ternary Operator ?:
          //@+doc
          //@@language asciidoc
          // A ternary operator takes three operands. The first one is a condition, the second is the expression if the condition is true, and the third one is the expression if the condition is false.
          //
          //@@language dart
          // (age > 18) ? 'Eligible for license' : 'Not eligible'
          //@+node:swot.20221117065613.2: *9* Column
          Column(
            children: [
              //@+others
              //@+node:swot.20221117065952.1: *10* SwitchListTile.adaptive
              SwitchListTile.adaptive(
                title: const Text('Test if else by ternary ?:'),
                onChanged: (bool newValue) {
                  setState(() {
                    switchValue = newValue;
                  });
                },
                value: switchValue,
              ),
              //@+node:swot.20221117065939.1: *10* Center ?:
              Center(
                child: switchValue
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            '12',
                            style: TextStyle(fontSize: 120),
                          ),
                          Icon(
                            Icons.thumb_up,
                            size: 180,
                            color: Color(0xff6ae792),
                          ),
                        ],
                      )
                    : const Icon(
                        Icons.thumb_up,
                        size: 200,
                        color: Colors.black,
                      )
              ),
              //@-others
            ],
          ),
          //@+node:swot.20221116202858.12: *8* (2) Using the Spread Operator ...[] 2.1
          //@+doc
          //@@language asciidoc
          // The spread operator (…) is used to insert multiple values into a Collection. It was introduced in Dart 2.3. The spread operator must be inside the collection widget like Column, Row, etc.
          //
          //@+node:swot.20221117075830.1: *9* Column
          Column(
            children: [
              //@+others
              //@+node:swot.20221117075103.1: *10* SwitchListTile.adaptive
              SwitchListTile.adaptive(
                title: const Text('Test if else by spread operator'),
                onChanged: (bool newValue) {
                  setState(() {
                    switchValue = newValue;
                  });
                },
                value: switchValue,
              ),
              //@+node:swot.20221117075628.1: *10* if else
              if (switchValue) ...[
                const Icon(
                  Icons.comment,
                  size: 200,
                  color: Color(0xff6ae792),
                )
              ] else ...[
                const Icon(
                  Icons.comment,
                  size: 100,
                  color: Colors.black,
                )
              ]
              //@-others
            ],
          ),
          //@+node:swot.20221116214910.1: *8* (2) Using the Spread Operator ...[] 2.2
          //@+doc
          // This is another use case where we are showing multiple widgets in a column.
          //@+node:swot.20221117081630.1: *9* Column
          Column(
            children: [
              //@+others
              //@+node:swot.20221117080420.1: *10* SwitchListTile.adaptive
              SwitchListTile.adaptive(
                title: const Text('Test if else by spread operator'),
                onChanged: (bool newValue) {
                  setState(() {
                    switchValue = newValue;
                  });
                },
                value: switchValue,
              ),
              //@+node:swot.20221117080502.1: *10* if
              const Icon(
                Icons.thumb_up,
                size: 100,
                color: Colors.black,
              ),
              if (switchValue) ...[
                const Icon(
                  Icons.comment,
                  size: 200,
                  color: Color(0xff6ae792),
                )
              ],
              //@-others
            ],
          ),
          //@+node:swot.20221116200016.1: *8* (3) Using the Method -- getLockStatus()
          //@+doc
          // Writing a conditional statement inside the method is preferable if you would like to produce clean code and none of the other options work for you.
          //@+node:swot.20221117081341.2: *9* Column
          Column(
            children: [
              //@+others
              //@+node:swot.20221117081152.1: *10* SwitchListTile.adaptive
              SwitchListTile.adaptive(
                title: const Text('Test if else by method'),
                onChanged: (bool newValue) {
                  setState(() {
                    switchValue = newValue;
                  });
                },
                value: switchValue,
              ),
              //@+node:swot.20221117081206.1: *10* Center
              Center(
                child: getLockStatus(switchValue),
              ),
              //@-others
            ],
          )
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

//@-others
//@-leo
