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
//@-others
//@-leo
