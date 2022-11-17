//@+leo-ver=5-thin
//@+node:swot.20221114225716.1: * @file lib/alphabet.dart
//@@language dart
//@@tabwidth -2
//@+others
//@+node:swot.20221114231710.1: ** import
import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//@+node:swot.20221115093740.1: ** A
//@+node:swot.20221115092046.1: *3* Widget ppAboutDialog()
Widget ppAboutDialog(context) {
  return ListTile(
    tileColor: Colors.blue,
    textColor: Colors.white,
    iconColor: Colors.white,
    leading: const Icon(Icons.info_outline),
    title: const Text('AboutDialog'),
    onTap: () {
      //@+others
      //@+node:swot.20221115092033.1: *4* showDialog
      showDialog(
        context: context,
        builder: (context) =>
        //@+others
        //@+node:swot.20221115092033.2: *5* AboutDialog
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
  );
}
//@+node:swot.20221115093118.1: *3* Widget ppAboutListTile()
Widget ppAboutListTile() {
  return
  //@+others
  //@+node:swot.20221115093353.1: *4* SizedBox -- show AboutListTile
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
    //@+node:swot.20221017093031.153: *5* AboutListTile
    //@+doc
    //@@language asciidoc
    // :nofooter:
    // image::image/FlutterWidget/AboutListTile.png[AboutListTile,240]
    //@@c
    //@@language dart
    AboutListTile(
      icon: Icon(Icons.info_outline),
      applicationIcon: FlutterLogo(),
      applicationLegalese: 'Legalese',
      applicationName: 'ListTile',
      applicationVersion: 'version 1.0.0',
      aboutBoxChildren: [
        Text('This is a text created by Flutter'),
      ],
    ),
    //@-others
  );
  //@-others
}
//@+node:swot.20221115114822.1: *3* Widget ppAbsorbPointer()
Widget ppAbsorbPointer() {
  return
  //@+others
  //@+node:swot.20221115120941.1: *4* Container
  Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child:
      //@+others
      //@+node:swot.20221017093031.32: *5* Stack           -- show AbsorbPointer包含按钮不可点击
      Stack(
        alignment: AlignmentDirectional.center,
        children: [
          //@+others
          //@+node:swot.20221017093031.33: *6* SizedBox
          SizedBox(
            width: double.infinity,
            height: 40.0,
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Click'),
                  Text('Click'),
                ],
              ),
            ),
          ),
          //@+node:swot.20221017093031.34: *6* SizedBox
          SizedBox(
            width: 240.0,
            height: 50.0,
            child:
                //@+others
                //@+node:swot.20221017093031.154: *7* AbsorbPointer -- include button can not be clicked
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
                  //@+node:swot.20221017093031.155: *8* ElevatedButton 不可点击
                  //@@language dart
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade200,
                    ),
                    onPressed: () {},
                    child: const Text("AbsorbPointer Can not click"),
                  ),
                  //@-others
                ),
                //@-others
          ),
          //@-others
        ],
      ),
      //@-others
  );
  //@-others
}
//@+node:swot.20221115115948.1: *3* Widget ppAlertDialog()
Widget ppAlertDialog(context) {
  return ListTile(
    tileColor: Colors.blue,
    textColor: Colors.white,
    iconColor: Colors.white,
    leading: const Icon(Icons.crisis_alert_outlined),
    title: const Text('AlertDialog'),
    onTap: () {
      //@+others
      //@+node:swot.20221115120424.1: *4* showDialog
      showDialog(
        context: context,
        builder: (context) =>
            //@+others
            //@+node:swot.20221115120424.2: *5* AlertDialog
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
  );
}
//@+node:swot.20221115123329.1: *3* Widget ppAlign()
Widget ppAlign() {
  return
  //@+others
  //@+node:swot.20221115125023.1: *4* Row
  Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    //@+others
    //@+node:swot.20221115123410.1: *5* Container
    Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      width: 55,
      height: 55,
      color: Colors.blue.shade100,
      child:
      //@+others
      //@+node:swot.20221115123410.2: *6* Align
      //@+doc
      //@@language asciidoc
      // :nofooter:
      // image::../image/Align.png[Align,240]
      //@@c
      //@@language dart
      const Align(
        alignment: Alignment.center,
        child: FlutterLogo(
          size: 20,
        ),
      ),
      //@-others
    ),
    //@+node:swot.20221115125209.1: *5* Padding
    const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      child: Text('Align.center (only show here)'),
    ),
    //@-others
    ],
  )
  //@-others
  ;
}
//@+node:swot.20221115215710.1: *3* Widget ppAspectRatio()
Widget ppAspectRatio() {
  return Container(
    color: Colors.blue.shade100,
    alignment: Alignment.center,
    margin: const EdgeInsets.only(bottom: 5),
    width: double.infinity,
    height: 50,
    // height: 200,
    child: AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        color: Colors.blue,
        alignment: Alignment.center,
        child: const Text(
          "AspecRatio 16/9",
          style: TextStyle(color: Colors.white)
        ),
      ),
    ),
  );
}
//@+node:swot.20221031134256.2: *3* AdaptiveExample
//@@language dart
//@@tabwidth -2
class AdaptiveExample extends StatefulWidget {
  const AdaptiveExample({super.key});

  @override
  State<AdaptiveExample> createState() => _AdaptiveExampleState();
}

class _AdaptiveExampleState extends State<AdaptiveExample> {
  //@+others
  //@+node:swot.20221031134256.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221031134345.2: *5* Scaffold
        Scaffold(
          //@+others
          //@+node:swot.20221031134345.3: *6* appBar
          appBar: AppBar(
            title: Text('.adaptive'),
            // leading: Icon(Icons.menu),
            actions: [
              Icon(Icons.settings),
            ],
            elevation: 0.0,
            centerTitle: true,
          ),
          //@+node:swot.20221031134345.4: *6* body
          body:
          //@+others
          //@+node:swot.20221031134422.2: *7* Center
          Center(
            child:
            //@+others
            //@+node:swot.20221031134446.2: *8* Column
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //@+others
                //@+node:swot.20221031134619.1: *9* Slider.adaptive
                Slider.adaptive(
                  onChanged: (double newValue) {},
                  value: 1,
                ),
                //@+node:swot.20221031140355.1: *9* SwitchListTile.adaptive
                SwitchListTile.adaptive(
                  title: const Text('Switch List tile'),
                  onChanged: (bool newValue) {},
                  value: true,
                ),
                //@+node:swot.20221031140635.1: *9* Switch.adaptive
                Switch.adaptive(
                  onChanged: (bool newValue) {},
                  value: true,
                ),
                //@+node:swot.20221031140816.1: *9* Icons.adaptive
                Icon(
                  Icons.adaptive.share,
                ),
                //@+node:swot.20221031140929.1: *9* CircularProgressIndicator.adaptive
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

//@+node:swot.20221115131154.2: *3* AnimatedAlignExample
//@@language dart
//@@tabwidth -2
class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample>{
  //@+others
  //@+node:swot.20221115131154.3: *4* varible
  bool selected = false;
  //@+node:swot.20221115131154.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221115132124.1: *5* Row
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      //@+others
      //@+node:swot.20221115131443.1: *6* GestureDetector -- show AnimatedAlign
      GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: Container(
            width: 55.0,
            height: 55.0,
            color: Colors.blue.shade100,
            child:
            //@+others
            //@+node:swot.20221115131443.2: *7* AnimatedAlign
            AnimatedAlign(
              alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
              duration: const Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn,
              child: const FlutterLogo(size: 20.0),
            ),
            //@-others
          ),
        ),
      ),
      //@+node:swot.20221115132041.1: *6* Padding
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: Text('AnimatedAlign'),
      ),
      //@-others
      ],
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221115145639.1: *3* AnimatedBuilderExample -- step 1
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
  //@+node:swot.20221115145639.2: *4* varible             -- step 2
  late AnimationController _controllerBuilder;
  //@+node:swot.20221115145639.3: *4* initState()         -- step 3
  @override
  void initState() {
    _controllerBuilder = AnimationController(
      duration: const Duration(seconds: 10), // 转一圈的时间
      vsync: this, // use TickerProviderStateMixin
    )..repeat(); // 10s 后重复

    super.initState();
  }

  //@+node:swot.20221115145639.4: *4* dispose()           -- step 4
  @override
  void dispose() {
    _controllerBuilder.dispose();
    super.dispose();
  }

  //@+node:swot.20221115145639.5: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221115145926.1: *5* Row
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      //@+others
      //@+node:swot.20221115150133.1: *6* Container
      Container(
        width: 55.0,
        height: 55.0,
        margin: const EdgeInsets.symmetric(vertical: 5),
        // padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        color: Colors.blue.shade100,
        child:
        //@+others
        //@+node:swot.20221115152731.1: *7* AnimatedBuilder  -- step 5
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
        ),
        //@-others
      ),
      //@+node:swot.20221115150013.1: *6* Padding
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: Text('AnimatedBuilder'),
      ),
      //@-others
      ],
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221101163948.2: *3* AnimatedContainerExample
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
  //@+node:swot.20221101163948.3: *4* varible
  bool selected = false;
  //@+node:swot.20221101163948.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221115160357.1: *5* Row
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      //@+others
      //@+node:swot.20221101165100.1: *6* GestureDetector
      GestureDetector(
        onTap: () {
          setState(() { selected = !selected; });
        },
        child: Center(
          child:
          //@+others
          //@+node:swot.20221101165100.2: *7* AnimatedContainer
          AnimatedContainer(
            width: selected ? 100.0 : 55.0,
            height: selected ? 55.0 : 40.0,
            color: selected ? Colors.blueGrey : Colors.blue.shade100,
            alignment: selected ? Alignment.topCenter : AlignmentDirectional.center,
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 25.0),
          ),
          //@-others
        ),
      ),
      //@+node:swot.20221115160421.1: *6* Padding
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: Text('AnimatedContainer'),
      ),
      //@-others
      ],
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221031193012.2: *3* AnimatedCrossFadeExample
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
  //@+node:swot.20221031193012.3: *4* varible
  bool selected = false;
  //@+node:swot.20221031193012.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221031193341.2: *5* Row
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //@+others
        //@+node:swot.20221115161549.1: *6* Container
        Container(
          width: 55.0,
          height: 55.0,
          margin: const EdgeInsets.symmetric(vertical: 5),
          // padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          color: Colors.blue.shade100,
          child:
          //@+others
          //@+node:swot.20221017093031.165: *7* AnimatedCrossFade
          AnimatedCrossFade(
            firstChild: Image.network(
              'https://img2.baidu.com/it/u=935142738,1114949296&fm=253&fmt=auto&app=138&f=PNG?w=200&h=200',
              width: 55.0,
              height: 55.0,
            ),
            secondChild: Image.network(
              'https://img2.baidu.com/it/u=2642639611,1941240358&fm=253&fmt=auto&app=138&f=JPEG?w=200&h=200',
              width: 55.0,
              height: 55.0,
            ),
            crossFadeState:
                selected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
          ),
          //@-others
        ),
        //@+node:swot.20221031193450.1: *6* TextButton
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: TextButton(
            onPressed: () {
              setState(() {
                selected = !selected;
              });
            },
            child: const Text(
              'AnimatedCrossFade (click)',
              // style: TextStyle(
                // color: Colors.black,
              // ),
            ),
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

//@+node:swot.20221101175102.2: *3* AnimatedDefaultTextStyleExample
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
  //@+node:swot.20221101175102.3: *4* varible
  bool selected = false;
  double _fontSize = 20;
  Color _color = Colors.blue;
  //@+node:swot.20221101175102.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221101175533.1: *5* Row
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221101175533.3: *6* SizedBox
        SizedBox(
          height: 40,
          child:
          //@+others
          //@+node:swot.20221101175533.4: *7* AnimatedDefaultTextStyle
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
        //@+node:swot.20221101175533.2: *6* TextButton
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
        //@-others
      ],
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221027192851.2: *3* AnimatedIconExample -- TickerProviderStateMixin
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
  //@+node:swot.20221027192851.3: *4* varible
  bool _isPlay = false;
  late AnimationController _controllerIcon;
  //@+node:swot.20221027192851.4: *4* initState()
  @override
  void initState() {
    _controllerIcon = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this // use TickerProviderStateMixin
    );
    super.initState();
  }

  //@+node:swot.20221027192851.5: *4* dispose()
  @override
  void dispose() {
    _controllerIcon.dispose();
    super.dispose();
  }

  //@+node:swot.20221027192851.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221115171940.1: *5* Row
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      //@+others
      //@+node:swot.20221027194101.1: *6* GestureDetector
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
        //@+node:swot.20221027194101.2: *7* AnimatedIcon
        //@@language dart
        //@@tabwidth -2
        AnimatedIcon(
          // play is the first icon
          // pause is the second icon
          icon: AnimatedIcons.play_pause,
          progress: _controllerIcon,
          size: 55,
        ),
        //@-others
      ),
      //@+node:swot.20221115171856.1: *6* Padding
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: Text('AnimatedIcon'),
      ),
      //@-others
      ],
    )
    //@-others
    ;
  }
  //@-others
}

//@+node:swot.20221101181708.2: *3* AnimatedListExample
//@@language dart
//@@tabwidth -2
class AnimatedListExample extends StatefulWidget {
  const AnimatedListExample({super.key});

  @override
  State<AnimatedListExample> createState() => _AnimatedListExampleState();
}

class _AnimatedListExampleState extends State<AnimatedListExample> {
  //@+others
  //@+node:swot.20221101181708.3: *4* varible
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

  //@+node:swot.20221101181708.4: *4* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221101181708.5: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221101181708.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221101182425.2: *5* Column
    Column(
      children: [
        //@+others
        //@+node:swot.20221115200646.1: *6* ListTile
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: ListTile(
            tileColor: Colors.blue,
            textColor: Colors.white,
            iconColor: Colors.white,
            leading: const Icon(Icons.add),
            title: const Text('AnimatedList'),
            onTap: _addItem,
          ),
        ),
        //@+node:swot.20221101182340.2: *6* AnimatedList
        AnimatedList(
          key: _key,
          shrinkWrap: true,
          initialItemCount: 0,
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index, animation) {
            //@+others
            //@+node:swot.20221101182340.3: *7* SizeTransition
            return SizeTransition(
              key: UniqueKey(),
              sizeFactor: animation,
              child: Card(
                margin: const EdgeInsets.all(3),
                color: Colors.blue.shade100,
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
      ],
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
  State<AnimatedModalBarrierExample> createState() =>
      _AnimatedModalBarrierExampleState();
}

class _AnimatedModalBarrierExampleState
    extends State<AnimatedModalBarrierExample>
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
    super.initState();

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
  }
  //@+node:swot.20221017093031.183: *4* dispose()
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  //@+node:swot.20221017093031.184: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221115190544.2: *5* SizedBox
    SizedBox(
      width: double.infinity,
      height: 55.0,
      child:
      //@+others
      //@+node:swot.20221101193037.1: *6* Stack
      Stack(
        alignment: AlignmentDirectional.center,
        children: [
          //@+others
          //@+node:swot.20221017093031.185: *7* ElevatedButton
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.orangeAccent,
            ),
            onPressed: () {
              setState(() { _isPressed = true; });
              _animationController.reset();
              _animationController.forward();
              Future.delayed(const Duration(seconds: 3), () {
                setState(() { _isPressed = false; });
              });
            },
            child: const Text('Press show AnimatedModalBarrier'),
          ),
          //@+node:swot.20221017093031.186: *7* _animatedModalBarrier
          if (_isPressed) _animatedModalBarrier,
          //@-others
        ],
      )
      //@-others
    )
    //@-others
    ;
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

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  //@+others
  //@+node:swot.20221017093031.189: *4* varible
  double opacityLevel = 1.0;
  //@+node:swot.20221017093031.191: *4* build()
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221017093031.192: *5* AnimatedOpacity
        AnimatedOpacity(
          opacity: opacityLevel,
          duration: const Duration(seconds: 1),
          child: const FlutterLogo(size: 30),
        ),

        //@+node:swot.20221115202940.1: *5* SizeBox
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child:
          //@+others
          //@+node:swot.20221017093031.193: *6* ElevatedButton
          ElevatedButton(
            child: const Text('AnimatedOpacity Fade Logo'),
            onPressed: () {
              setState(
                () => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0,
              );
            },
          ),
          //@-others
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

class _AnimatedPaddingExampleState extends State<AnimatedPaddingExample> {
  //@+others
  //@+node:swot.20221017093031.198: *4* varible
  double padValue = 0.0;
  //@+node:swot.20221017093031.200: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221017093031.202: *5* Row
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221017093031.205: *6* AnimatedPadding
        AnimatedPadding(
          // padValue will be changed
          padding: EdgeInsets.all(padValue),
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOut,
          child: Container(
            // width: MediaQuery.of(context).size.width,
            width: 44.0,
            height: 30.0,
            color: Colors.blue.shade100,
          ),
        ),
        //@+node:swot.20221115204946.1: *6* Padding
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child:
          //@+others
          //@+node:swot.20221017093031.203: *7* ElevatedButton
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.orangeAccent,
            ),
            child: Text('AnimatedPadding $padValue'),
            onPressed: () {
              setState(() {
                padValue = padValue == 0.0 ? 15.0 : 0.0;
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

//@+node:swot.20221017093031.208: *3* AnimatedPhysicalModelExample
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
  //@+node:swot.20221017093031.209: *4* varible
  bool isFlat = true;
  //@+node:swot.20221017093031.212: *4* build()
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221115205826.2: *5* Row
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          //@+others
          //@+node:swot.20221017093031.214: *6* AnimatedPhysicalModel
          AnimatedPhysicalModel(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            elevation: isFlat ? 0 : 6.0,
            shape: BoxShape.rectangle,
            shadowColor: Colors.black,
            color: Colors.white,
            child: const SizedBox(
              height: 45.0,
              width: 45.0,
              child: Icon(Icons.android_outlined),
            ),
          ),

          //@+node:swot.20221115205935.2: *6* Padding
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child:
            //@+others
            //@+node:swot.20221017093031.213: *7* ElevatedButton
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  // backgroundColor: Colors.orangeAccent,
                  ),
              child: const Text('AnimatedPhysicalModel'),
              onPressed: () {
                setState(() {
                  isFlat = !isFlat;
                });
              },
            ),

            //@-others
          )
          //@-others
          ],
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
  State<AnimatedPositionedExample> createState() =>
      _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
  //@+others
  //@+node:swot.20221017093031.218: *4* varible
  bool selected = false;
  //@+node:swot.20221017093031.221: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221017093031.222: *5* SizedBox
    SizedBox(
      width: double.infinity,
      height: 55,
      child:
      //@+others
      //@+node:swot.20221017093031.223: *6* Stack
      Stack(children: [
        //@+others
        //@+node:swot.20221017093031.224: *7* AnimatedPositioned -- in stack widget
        AnimatedPositioned(
          top: selected ? 15.0 : 5.0,
          width: selected ? 100.0 : 320.0,
          height: 50.0,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text('AnimatedPositioned click to change position'),
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

//@+node:swot.20221017093031.227: *3* AnimatedRotationExample
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
  //@+node:swot.20221017093031.228: *4* varible
  double turns = 0.0;
  //@+node:swot.20221017093031.231: *4* build()
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221017093031.233: *5* Padding
        Padding(
          padding: const EdgeInsets.all(5),
          child:
          //@+others
          //@+node:swot.20221101201546.1: *6* AnimatedRotation
          AnimatedRotation(
            turns: turns,
            duration: const Duration(seconds: 1),
            child: const FlutterLogo(size: 30),
          ),
          //@-others
        ),
        //@+node:swot.20221115213128.2: *5* Padding
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child:
          //@+others
          //@+node:swot.20221017093031.232: *6* ElevatedButton
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

          //@-others
        )
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

class _AnimatedSizeExampleState extends State<AnimatedSizeExample> {
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
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221017093031.242: *5* GestureDetector
        GestureDetector(
          onTap: () {
            setState(() {
              _size = _size == 30 ? 60 : 30;
            });
          },
          child: Container(
            color: Colors.white,
            child:
            //@+others
            //@+node:swot.20221115213902.1: *6* AnimatedSize
            AnimatedSize(
              curve: Curves.easeIn,
              duration: const Duration(seconds: 1),
              child: FlutterLogo(size: _size),
            ),
            //@-others
          ),
        ),
        //@+node:swot.20221115213615.2: *5* Padding
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child:
          //@+others
          //@+node:swot.20221017093031.241: *6* Text
          Text("AnimatedSize"),
          //@-others
        )
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
  State<AnimatedSwitcherExample> createState() =>
      _AnimatedSwitcherExampleState();
}

class _AnimatedSwitcherExampleState extends State<AnimatedSwitcherExample> {
  //@+others
  //@+node:swot.20221017093031.245: *4* varible
  int _count = 10;
  //@+node:swot.20221017093031.248: *4* build()
  //@@language dart
  //@@tabwidth -2
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //@+others
        //@+node:swot.20221017093031.250: *5* AnimatedSwitcher
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),

          // // Custom default animation
          // transitionBuilder: (Widget child, Animation<double> animation) {
          // return ScaleTransition(scale: animation, child: child);
          // },

          child: Text(
            '$_count',
            style: const TextStyle(fontSize: 30),
            key: ValueKey(_count), // IMPORTANT no key no animation
          ),
        ),
        //@+node:swot.20221115214248.2: *5* Padding
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child:
          //@+others
          //@+node:swot.20221017093031.249: *6* ElevatedButton
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.orangeAccent,
                ),
            child: const Text('AnimatedSwitcher'),
            onPressed: () {
              setState(() {
                _count += 1;
              });
            },
          ),

          //@-others
        )
        //@-others
      ],
    );
  }
  //@-others
}

//@+node:swot.20221017093031.256: *3* AutoCompleteExample -- should not locate at bottom (will be shield by keyboard)
//@@language dart
//@@tabwidth -2
class AutoCompleteExample extends StatelessWidget {
  const AutoCompleteExample({Key? key}) : super(key: key);
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
    return
    //@+others
    //@+node:swot.20221115221134.2: *5* Container
    Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      child:
      //@+others
      //@+node:swot.20221115221203.1: *6* Autocomplete
      Autocomplete<String>(
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
      ),
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}
//@+node:swot.20221022121355.1: ** B
//@+node:swot.20221019111317.2: *3* BackdropFilterExample
//@@language dart
//@@tabwidth -2
class BackdropFilterExample extends StatelessWidget {
  const BackdropFilterExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221019111317.3: *4* build()
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

//@+node:swot.20221021175217.2: *3* BannerExample
//@@language dart
//@@tabwidth -2
class BannerExample extends StatelessWidget {
  const BannerExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221021175217.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221021175330.1: *5* Center
    Center(
      child:
      //@+others
      //@+node:swot.20221021175401.1: *6* Container
      Container(
        margin: const EdgeInsets.all(10.0),
        child:
        //@+others
        //@+node:swot.20221021180745.1: *7* ClipRect
        ClipRect(
          child:
          //@+others
          //@+node:swot.20221021180828.1: *8* Banner
          Banner(
            message: "25% off",
            location: BannerLocation.topEnd,
            color: Colors.red,
            child:
            //@+others
            //@+node:swot.20221021175506.1: *9* Container
            Container(
              color: Colors.blueGrey,
              child:
              //@+others
              //@+node:swot.20221021175604.1: *10* Padding
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child:
                //@+others
                //@+node:swot.20221021175702.1: *11* Column
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //@+others
                    //@+node:swot.20221021175915.1: *12* Image
                    Image.network(
                      'https://img1.baidu.com/it/u=1855083458,281793390&fm=253&fmt=auto&app=138&f=JPEG?w=989&h=500',
                    ),
                    //@+node:swot.20221021180035.1: *12* SizedBox
                    const SizedBox(height: 10),
                    //@+node:swot.20221021180106.1: *12* Row
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

//@+node:swot.20221021181642.2: *3* BaselineExample
//@@language dart
//@@tabwidth -2
class BaselineExample extends StatelessWidget {
  const BaselineExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221021181642.3: *4* build()
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

//@+node:swot.20221022080218.2: *3* BlockSemanticsExample
//@@language dart
//@@tabwidth -2
class BlockSemanticsExample extends StatefulWidget {
  const BlockSemanticsExample({super.key});

  @override
  State<BlockSemanticsExample> createState() => _BlockSemanticsExampleState();
}

class _BlockSemanticsExampleState extends State<BlockSemanticsExample> {
  //@+others
  //@+node:swot.20221022083723.1: *4* varible
  bool isShow = false;
  //@+node:swot.20221022080218.3: *4* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221022080218.4: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221022080218.5: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221022080422.1: *5* SizedBox
    SizedBox(
      width: double.infinity,
      child:
      //@+others
      //@+node:swot.20221022083203.1: *6* SizedBox
      SizedBox(
        width: 500,
        height: 135,
        child:
        //@+others
        //@+node:swot.20221022083954.1: *7* Column
        Column(children: [
          //@+others
          //@+node:swot.20221022084045.1: *8* OutlinedButton
          OutlinedButton(
            onPressed: () {
              setState(() {
                isShow = true;
              });
            },
            child: const Text('Click'),
          ),
          //@+node:swot.20221022084513.1: *8* if (isShow)
          if (isShow)
            //@+others
            //@+node:swot.20221022091825.1: *9* BlockSemantics
            BlockSemantics(
              blocking: isShow, // hidden OutlinedButton?
              child:
                  //@+others
                  //@+node:swot.20221022090937.1: *10* Card
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

//@+node:swot.20221022094100.2: *3* BottomNavigationBarExample
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
  //@+node:swot.20221022094133.1: *4* varible
  int _currentIndex = 0;

  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.person),
  ];

  //@+node:swot.20221022094100.5: *4* build()
  @override
  Widget build(BuildContext context) {
    //@+others
    //@+node:swot.20221022095720.2: *5* Scaffold
    return Scaffold(
      //@+others
      //@+node:swot.20221022101748.1: *6* appBar
      appBar: AppBar(
        title: Text('BottomNavigationBar'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221022095720.4: *6* body
      body: Center(
        child: body[_currentIndex],
      ),
      //@+node:swot.20221022095720.5: *6* bottomNavigationBar
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

//@+node:swot.20221022104843.2: *3* BottomSheetExample
//@@language dart
//@@tabwidth -2
class BottomSheetExample extends StatefulWidget {
  const BottomSheetExample({super.key});

  @override
  State<BottomSheetExample> createState() => _BottomSheetExampleState();
}

class _BottomSheetExampleState extends State<BottomSheetExample> {
  //@+others
  //@+node:swot.20221022104843.5: *4* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Modal Bottom Sheet'),
        onPressed: () {
          //@+others
          //@+node:swot.20221110210618.1: *5* showModalBottomSheet !!!
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

//@+node:swot.20221022110627.2: *3* BuilderExample
//@@language dart
//@@tabwidth -2
class BuilderExample extends StatelessWidget {
  const BuilderExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022110627.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return myBuilderWidget();
  }

  //@+node:swot.20221022110900.1: *4* myBuilderWidget()
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

//@+node:swot.20221022121728.1: ** C
//@+node:swot.20221022121755.2: *3* CardExample
//@@language dart
//@@tabwidth -2
class CardExample extends StatelessWidget {
  const CardExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022121755.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      //@+others
      //@+node:swot.20221022122022.1: *5* Card
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

//@+node:swot.20221022122655.2: *3* CenterExample
//@@language dart
//@@tabwidth -2
class CenterExample extends StatelessWidget {
  const CenterExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022122655.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        color: Colors.orangeAccent,
        child:
        //@+others
        //@+node:swot.20221022122945.1: *5* Center
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

//@+node:swot.20221022141252.2: *3* CheckboxExample
//@@language dart
//@@tabwidth -2
class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  //@+others
  //@+node:swot.20221022141315.1: *4* varible
  bool? isChecked = false;
  //@+node:swot.20221022141252.3: *4* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221022141252.4: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221022141252.5: *4* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          //@+others
          //@+node:swot.20221110225519.1: *5* Theme
          Theme(
            data: Theme.of(context).copyWith(
              unselectedWidgetColor: Colors.blue,
            ),
            child:
                //@+others
                //@+node:swot.20221110225224.1: *6* Checkbox !!!
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

//@+node:swot.20221022141946.2: *3* CheckboxListTileExample
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
  //@+node:swot.20221022142005.1: *4* varible
  bool? _isChecked = false;
  //@+node:swot.20221022141946.5: *4* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      //@+others
      //@+node:swot.20221022142124.1: *5* CheckboxListTile
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

//@+node:swot.20221022142919.2: *3* ChipExample
//@@language dart
//@@tabwidth -2
class ChipExample extends StatelessWidget {
  const ChipExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022142919.3: *4* build()
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

//@+node:swot.20221022144339.2: *3* ChoiceChipExample
//@@language dart
//@@tabwidth -2
class ChoiceChipExample extends StatefulWidget {
  const ChoiceChipExample({super.key});

  @override
  State<ChoiceChipExample> createState() => _ChoiceChipExampleState();
}

class _ChoiceChipExampleState extends State<ChoiceChipExample> {
  //@+others
  //@+node:swot.20221022144356.1: *4* varible
  bool isSelected = false;
  //@+node:swot.20221022144339.5: *4* build()
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

//@+node:swot.20221022145018.2: *3* CircleAvatarExample
//@@language dart
//@@tabwidth -2
class CircleAvatarExample extends StatelessWidget {
  const CircleAvatarExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022145018.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221117124850.2: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221117124850.3: *6* appBar
      appBar: AppBar(
        title: Text('CircleAvatar'),
        elevation: 0.0,
        centerTitle: true,
        actions: [],
      ),
      //@+node:swot.20221117124850.4: *6* body
      body:
      //@+others
      //@+node:swot.20221117130100.1: *7* Container
      Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 4.0),
        child:
            //@+others
            //@+node:swot.20221117125122.2: *8* Column
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //@+others
                //@+node:swot.20221117154500.1: *9* CircleAvatar -- three layers
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.orangeAccent,
                  child:
                  //@+others
                  //@+node:swot.20221117164057.1: *10* CircleAvatar
                  CircleAvatar(
                    radius: 47,
                    backgroundColor: Colors.white,
                    child:
                    //@+others
                    //@+node:swot.20221117124927.1: *11* CircleAvatar
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/cubelogo.png'),  // local image
                      onBackgroundImageError: (e, s){
                        debugPrint('image issue, $e,$s');
                      },
                      // backgroundImage: NetworkImage("https://img1.baidu.com/it/u=4237790906,511339359&fm=253&fmt=auto&app=138&f=JPEG?w=400&h=400"),
                      // child: Text(
                      //   'Hello',
                      //   style: TextStyle(color: Colors.red),
                      // ),
                    ),
                    //@-others
                  ),
                  //@-others
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
    ;
  }
  //@-others
}


//@+doc
// Creating Circular Image/CircleAvatar in Flutter The Best Way in 2022 (Code)
//
// https://www.flutterbeads.com/circular-image-in-flutter/
//@+node:swot.20221022153237.2: *3* CircularProgressIndicatorExample
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
  //@+node:swot.20221022153237.3: *4* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221022153237.4: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221022153237.5: *4* build()
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

//@+node:swot.20221116182028.1: *3* ClipOvalExample
//@+node:swot.20221116182028.2: *4* ClipOvalExample
//@@language dart
//@@tabwidth -2
class ClipOvalExample extends StatelessWidget {
  const ClipOvalExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221116182028.3: *5* build()
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

//@+node:swot.20221116182028.4: *4* CustomClip
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

//@+node:swot.20221116181957.1: *3* ClipPathExample
//@+node:swot.20221116181957.2: *4* ClipPathExample
//@@language dart
//@@tabwidth -2
class ClipPathExample extends StatelessWidget {
  const ClipPathExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221116181957.3: *5* build()
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

//@+node:swot.20221116181957.4: *4* MyClipper1
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

//@+node:swot.20221116181924.1: *3* ClipRectExample
//@+node:swot.20221116181924.2: *4* ClipRectExample
//@@language dart
//@@tabwidth -2
class ClipRectExample extends StatelessWidget {
  const ClipRectExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221116181924.3: *5* build()
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

//@+node:swot.20221116181924.4: *4* MyClipper2
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

//@+node:swot.20221022165324.2: *3* ClipRRectExample
//@@language dart
//@@tabwidth -2
class ClipRRectExample extends StatefulWidget {
  const ClipRRectExample({super.key});

  @override
  State<ClipRRectExample> createState() => _ClipRRectExampleState();
}

class _ClipRRectExampleState extends State<ClipRRectExample> {
  //@+others
  //@+node:swot.20221022165324.5: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221117182334.2: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221117182334.3: *6* appBar
      appBar: AppBar(
        title: Text('ClipRRect'),
        // leading: Icon(Icons.menu),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
        ],
      ),
      //@+node:swot.20221117182334.4: *6* body
      body:
      //@+others
      //@+node:swot.20221117182433.1: *7* Center
      Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.network(
              'https://img1.baidu.com/it/u=3866320064,995069430&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=500',
              width: 250),
        ),
      ),
      //@-others
      //@-others
    );
    //@-others
  }
  //@-others
}

//@+node:swot.20221022170557.2: *3* CloseButtonExample
//@@language dart
//@@tabwidth -2
class CloseButtonExample extends StatelessWidget {
  const CloseButtonExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022170557.3: *4* build()
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

//@+node:swot.20221022171523.2: *3* ColoredBoxExample
//@@language dart
//@@tabwidth -2
class ColoredBoxExample extends StatelessWidget {
  const ColoredBoxExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022171523.3: *4* build()
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

//@+node:swot.20221022172641.2: *3* ColorFilteredExample
//@@language dart
//@@tabwidth -2
class ColorFilteredExample extends StatelessWidget {
  const ColorFilteredExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022172641.3: *4* build()
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

//@+node:swot.20221022201619.2: *3* ConstrainedBoxExample
//@@language dart
//@@tabwidth -2
class ConstrainedBoxExample extends StatelessWidget {
  const ConstrainedBoxExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022201619.3: *4* build()
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

//@+node:swot.20221022202825.2: *3* ContainerExample
//@@language dart
//@@tabwidth -2
class ContainerExample extends StatelessWidget {
  const ContainerExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022202825.3: *4* build()
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

//@+node:swot.20221022203601.2: *3* ColumnExample
//@@language dart
//@@tabwidth -2
class ColumnExample extends StatelessWidget {
  const ColumnExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221022203601.3: *4* build()
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

//@+node:swot.20221022210338.2: *3* CupertinoActionSheetExample
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
  //@+node:swot.20221022210338.3: *4* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221022210338.4: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221022210338.5: *4* build()
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

//@+node:swot.20221116181828.1: *3* CupertinoAppExample
//@+node:swot.20221116181828.2: *4* CupertinoAppExample
//@@language dart
//@@tabwidth -2
class CupertinoAppExample extends StatelessWidget {
  const CupertinoAppExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221116181828.3: *5* build()
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

//@+node:swot.20221116181828.4: *4* MyCupertinoApp
//@@language dart
//@@tabwidth -2
class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221116181828.5: *5* build()
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

//@+node:swot.20221023163418.2: *3* CupertinoContextMenuExample
//@@language dart
//@@tabwidth -2
class CupertinoContextMenuExample extends StatelessWidget {
  const CupertinoContextMenuExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221023163418.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 100,
        height: 100,
        child:
        //@+others
        //@+node:swot.20221023163626.1: *5* CupertinoContextMenu
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

//@+node:swot.20221031082929.2: *3* CupertinoSlidingSegmentedControlExample
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
  //@+node:swot.20221031083017.1: *4* value
  int? _sliding = 0;
  //@+node:swot.20221031082929.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221031083051.1: *5* CupertinoSlidingSegmentedControl
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

//@+node:swot.20221024070225.1: ** D
//@+node:swot.20221024112614.2: *3* DismissibleExample
//@@language dart
//@@tabwidth -2
class DismissibleExample extends StatefulWidget {
  const DismissibleExample({super.key});

  @override
  State<DismissibleExample> createState() => _DismissibleExampleState();
}

class _DismissibleExampleState extends State<DismissibleExample> {
  //@+others
  //@+node:swot.20221024112703.1: *4* varible
  List<int> items = List<int>.generate(50, (int index) => index);
  //@+node:swot.20221024112614.3: *4* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221024112614.4: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221024112614.5: *4* build()
  @override
  Widget build(BuildContext context) {
    //@+others
    //@+node:swot.20221024113603.2: *5* Scaffold
    return Scaffold(
      //@+others
      //@+node:swot.20221024113603.3: *6* appBar
      appBar: AppBar(
        title: Text('DismissibleExample'),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221024113603.4: *6* body
      body:
      //@+others
      //@+node:swot.20221024113627.1: *7* ListView
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

//@+node:swot.20221102101634.2: *3* DividerExample
//@@language dart
//@@tabwidth -2
class DividerExample extends StatelessWidget {
  const DividerExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221102101634.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221102103902.2: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221102103902.3: *6* appBar
      appBar: AppBar(
        title: Text(''),
        // leading: Icon(Icons.menu),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
        ],
      ),
      //@+node:swot.20221102103902.4: *6* body
      body:
      //@+others
      //@+node:swot.20221102103050.2: *7* Column
      Column(
        children: [
          //@+others
          //@+node:swot.20221102102110.1: *8* Container
          Container(
            width: double.infinity,
            height: 200.0,
            color: Colors.orange,
          ),
          //@+node:swot.20221102101649.1: *8* Divider
          const Divider(
            color: Colors.red,
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 40,
          ),
          //@+node:swot.20221102101920.2: *8* Container
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

//@+node:swot.20221025074739.2: *3* DraggableScrollableExample
//@@language dart
//@@tabwidth -2
class DraggableScrollableExample extends StatelessWidget {
  const DraggableScrollableExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221025074739.3: *4* build()
  @override
  Widget build(BuildContext context) {
    //@+others
    //@+node:swot.20221025081258.2: *5* Scaffold
    return Scaffold(
      //@+others
      //@+node:swot.20221025081258.3: *6* appBar
      appBar: AppBar(
        title: Text('DraggableScrollableSheet'),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221025081258.4: *6* body
      body:
      //@+others
      //@+node:swot.20221025081316.1: *7* DraggableScrollableSheet
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

//@+node:swot.20221025081939.2: *3* DragTargetExample
//@@language dart
//@@tabwidth -2
class DragTargetExample extends StatefulWidget {
  const DragTargetExample({super.key});

  @override
  State<DragTargetExample> createState() => _DragTargetExampleState();
}

class _DragTargetExampleState extends State<DragTargetExample> {
  //@+others
  //@+node:swot.20221025081939.3: *4* varible
  Color caughtColor = Colors.red;
  //@+node:swot.20221025081939.4: *4* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221025081939.5: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221025081939.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221025091431.2: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221025091431.3: *6* appBar
      appBar: AppBar(
        title: Text('DragTargetExample'),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221025091431.4: *6* body
      body:
      //@+others
      //@+node:swot.20221025083125.1: *7* SizedBox
      SizedBox(
        width: double.infinity,
        child:
        //@+others
        //@+node:swot.20221025083519.1: *8* Column
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //@+others
            //@+node:swot.20221025083732.1: *9* Draggable
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
            //@+node:swot.20221025084843.1: *9* DragTarget
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

//@+node:swot.20221025095334.2: *3* DrawerExample
//@@language dart
//@@tabwidth -2
class DrawerExample extends StatelessWidget {
  const DrawerExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221025095334.3: *4* build()
  @override
  Widget build(BuildContext context) {
    //@+others
    //@+node:swot.20221025095436.2: *5* Scaffold
    return Scaffold(
      //@+others
      //@+node:swot.20221025095436.3: *6* appBar
      appBar: AppBar(
        title: Text('NewPage'),
      ),
      //@+node:swot.20221025095436.4: *6* body
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

      //@+node:swot.20221025095602.1: *6* endDrawer
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

//@+node:swot.20221110233138.2: *3* DropDownButtonExample
//@@language dart
//@@tabwidth -2
class DropDownButtonExample extends StatefulWidget {
  const DropDownButtonExample({super.key});

  @override
  State<DropDownButtonExample> createState() => _DropDownButtonExampleState();
}

class _DropDownButtonExampleState extends State<DropDownButtonExample>{
  //@+others
  //@+node:swot.20221110233138.3: *4* varible
  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
  ];

  String? selectedItem = 'Item 1';
  //@+node:swot.20221110233138.4: *4* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221110233138.5: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221110233138.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221111000936.2: *5* Column
    Column(
      children: [
        //@+others
        //@+node:swot.20221111000057.1: *6* SizedBox
        SizedBox(
          width: 240,
          child:
          //@+others
          //@+node:swot.20221110233541.2: *7* DropdownButton !!!
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
        //@+node:swot.20221111001008.1: *6* SizedBox
        SizedBox(
          width: 240,
          child:
          //@+others
          //@+node:swot.20221111001008.2: *7* DropdownButtonFormField !!!
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

//@+node:swot.20221025211157.1: ** E
//@+node:swot.20221026073602.2: *3* ExpandedExample -- height in Expanded takes no effect
//@@language dart
//@@tabwidth -2
class ExpandedExample extends StatelessWidget {
  const ExpandedExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221026073602.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: double.infinity,
      height: 100.0,
      child: Column(
        children: [
          //@+others
          //@+node:swot.20221026193458.1: *5* Expanded
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              width: double.infinity,
              height: 200,
              child: const Center(child: Text('Expanded 1')),
            ),
          ),
          //@+node:swot.20221026193703.1: *5* Expanded
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.orange,
              width: double.infinity,
              height: 200,
              child: const Center(child: Text('Expanded 2')),
            ),
          ),
          //@+node:swot.20221026193706.1: *5* Expanded
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

//@+node:swot.20221116182847.1: *3* ExpansionPanelListExample
//@+node:swot.20221111204854.1: *4* class Item
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
//@+node:swot.20221111201811.2: *4* ExpansionPanelListExample
//@@language dart
//@@tabwidth -2
class ExpansionPanelListExample extends StatefulWidget {
  const ExpansionPanelListExample({super.key});

  @override
  State<ExpansionPanelListExample> createState() => _ExpansionPanelListExampleState();
}

class _ExpansionPanelListExampleState extends State<ExpansionPanelListExample>{
  //@+others
  //@+node:swot.20221111201811.3: *5* varible
  static const loremIpsum = 'Officia elit et minim, est et lorem excepteur in et laborum velit. Id sit incididunt laborum fugiat ad est. Laborum non cillum ad in eu. Tempor aute consequat exercitation anim excepteur dolor nulla. Ea lorem ea proident consectetur proident.';

  final List<Item> items = [
    Item(header: 'Panel 1', body: loremIpsum),
    Item(header: 'Panel 2', body: loremIpsum),
    Item(header: 'Panel 3', body: loremIpsum),
  ];
  //@+node:swot.20221111201811.4: *5* initState()
  @override
  void initState() {
    super.initState();
  }
  //@+node:swot.20221111201811.5: *5* dispose()
  @override
  void dispose() {
    super.dispose();
  }
  //@+node:swot.20221111201811.6: *5* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221111202207.2: *6* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221111202207.3: *7* appBar
      appBar: AppBar(
        title: Text('ExpansionPanelListExample'),
      ),
      //@+node:swot.20221111202207.4: *7* body
      body:
      //@+others
      //@+node:swot.20221111202707.2: *8* SingleChildScrollView
      SingleChildScrollView(
        child:
        //@+others
        //@+node:swot.20221111213642.2: *9* Column
        Column(
          children: [
            //@+others
            //@+node:swot.20221111213817.1: *10* Text('Radio')
            Text(
              'Radio',
              style: TextStyle(fontSize: 20),
            ),
            //@+node:swot.20221111202728.1: *10* ExpansionPanelList.radio !!!
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
            //@+node:swot.20221111214514.1: *10* SizedBox
            SizedBox(height: 20.0),
            //@+node:swot.20221111214154.1: *10* Text('Multiple')
            Text(
              'Multiple',
              style: TextStyle(fontSize: 20),
            ),
            //@+node:swot.20221111212929.1: *10* ExpansionPanelList !!!
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

//@+node:swot.20221031070602.2: *3* ExpansionTileExample
//@@language dart
//@@tabwidth -2
class ExpansionTileExample extends StatefulWidget {
  const ExpansionTileExample({super.key});

  @override
  State<ExpansionTileExample> createState() => _ExpansionTileExampleState();
}

class _ExpansionTileExampleState extends State<ExpansionTileExample> {
  //@+others
  //@+node:swot.20221031070602.3: *4* varible
  bool _customIcon = false;
  //@+node:swot.20221031070602.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221031074359.2: *5* Column
    Column(
      children: [
        //@+others
        //@+node:swot.20221031074310.1: *6* ExpansionTile -- basic icon
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
        //@+node:swot.20221031073139.1: *6* ExpansionTile -- _customIcon
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
        //@+node:swot.20221031074605.1: *6* ExpansionTile -- change icon location
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

//@+node:swot.20221026200827.9: ** F
//@+node:swot.20221030234221.2: *3* FittedBoxExample
//@@language dart
//@@tabwidth -2
class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221030234221.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221031064454.2: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221031064454.3: *6* appBar
      appBar: AppBar(
        title: Text('FittedBoxExample'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221031064454.4: *6* body
      body:
      //@+others
      //@+node:swot.20221030234303.2: *7* Center
      Center(
        child:
        //@+others
        //@+node:swot.20221031063239.2: *8* Container
        Container(
          // height: 25,
          // width: 100,
          // width: 300,
          width: double.infinity,
          color: Colors.orangeAccent,
          child:
          //@+others
          //@+node:swot.20221031070048.1: *9* FittedBox
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

//@+node:swot.20221027111458.2: *3* FlexibleExample
//@@language dart
//@@tabwidth -2
class FlexibleExample extends StatelessWidget {
  const FlexibleExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221027111458.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221027112522.2: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221027112522.3: *6* appBar
      appBar: AppBar(
        title: Text('FlexibleExample'),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221027112522.4: *6* body
      body:
      //@+others
      //@+node:swot.20221027111807.1: *7* Column
      Column(
        children: [
          //@+others
          //@+node:swot.20221027111848.1: *8* Flexible -- FlexFit.loose is default
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

//@+node:swot.20221027115627.2: *3* FormExample
//@@language dart
//@@tabwidth -2
class FormExample extends StatelessWidget {
  FormExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221027120023.1: *4* value
  final _formKey = GlobalKey<FormState>();
  //@+node:swot.20221027115627.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221027115750.2: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221027115750.3: *6* appBar
      appBar: AppBar(
        title: Text('FormExample'),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221027115750.4: *6* body
      body:
      //@+others
      //@+node:swot.20221027115911.1: *7* Padding
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        //@+others
        //@+node:swot.20221027115952.1: *8* Form !!! -- _formKey
        Form(
          key: _formKey,
          child: Column(
            children: [
              //@+others
              //@+node:swot.20221112175512.1: *9* TextFormField
              TextFormField(
                //@+others
                //@+node:swot.20221112181907.1: *10* 2) validator !!!
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter something';
                  }
                  return null;
                },
                //@-others
              ),
              //@+node:swot.20221112175530.1: *9* ElevatedButton
              ElevatedButton(
                //@+others
                //@+node:swot.20221112182043.1: *10* 1) onPressed !!! _formKey.currentState!.validate()
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    //@+others
                    //@+node:swot.20221112182228.1: *11* 3) showSnackBar
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

//@+node:swot.20221027203431.2: *3* FadeInImageExample
//@@language dart
//@@tabwidth -2
class FadeInImageExample extends StatelessWidget {
  const FadeInImageExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221027203431.3: *4* build()
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

//@+node:swot.20221027212222.2: *3* FractionallySizedBoxExample
//@@language dart
//@@tabwidth -2
class FractionallySizedBoxExample extends StatelessWidget {
  const FractionallySizedBoxExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221027212222.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221027212407.2: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221027212407.3: *6* appBar
      appBar: AppBar(
        title: Text('FractionallySizedBox'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221027212407.4: *6* body
      body:
      //@+others
      //@+node:swot.20221027212916.2: *7* Center
      Center(
        child:
        //@+others
        //@+node:swot.20221027212959.1: *8* FractionallySizedBox
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

//@+node:swot.20221028064229.2: *3* FutureBuilderExample
//@@language dart
//@@tabwidth -2
class FutureBuilderExample extends StatefulWidget {
  const FutureBuilderExample({super.key});

  @override
  State<FutureBuilderExample> createState() => _FutureBuilderExampleState();
}

class _FutureBuilderExampleState extends State<FutureBuilderExample> {
  //@+others
  //@+node:swot.20221028064229.3: *4* varible
  Future<String> getData() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    // throw 'Error';
    return 'Super!';
  }

  //@+node:swot.20221028064229.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221028064815.1: *5* FutureBuilder
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

//@+node:swot.20221027114210.1: *3* FloatingActionButtonExample
/*
//@+others
//@+node:swot.20221027114010.6: *4* floatingActionButton
floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
floatingActionButton: FloatingActionButton(
  onPressed: () {},
  backgroundColor: Colors.deepPurple.shade400,
  child: Icon(Icons.add),
),
//@-others
*/
//@+node:swot.20221028070508.17: ** G
//@+node:swot.20221028084729.2: *3* GestureDetectorExample
//@@language dart
//@@tabwidth -2
class GestureDetectorExample extends StatefulWidget {
  const GestureDetectorExample({super.key});

  @override
  State<GestureDetectorExample> createState() => _GestureDetectorExampleState();
}

class _GestureDetectorExampleState extends State<GestureDetectorExample> {
  //@+others
  //@+node:swot.20221028084729.3: *4* varible
  int _counter = 0;
  //@+node:swot.20221028084729.6: *4* build()
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

//@+node:swot.20221031213433.2: *3* GridPaperExample
//@@language dart
//@@tabwidth -2
class GridPaperExample extends StatelessWidget {
  const GridPaperExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221031213433.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221031213506.2: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221031213506.3: *6* appBar
      appBar: AppBar(
        title: Text('GridPaper'),
        // leading: Icon(Icons.menu),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
        ],
      ),
      //@+node:swot.20221031213506.4: *6* body
      body:
      //@+others
      //@+node:swot.20221031213547.1: *7* SizedBox
      const SizedBox(
        width: double.infinity,
        height: double.infinity,
        child:
        //@+others
        //@+node:swot.20221031213653.1: *8* GridPaper
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

//@+node:swot.20221028093414.2: *3* GridViewExample
//@@language dart
//@@tabwidth -2
class GridViewExample extends StatelessWidget {
  const GridViewExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221028093414.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221028122703.2: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221028122703.3: *6* appBar
      appBar: AppBar(
        title: Text('GridView'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221028122703.4: *6* body
      body:
      //@+others
      //@+node:swot.20221028093753.1: *7* GridView
      GridView.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (_, index) =>
        //@+others
        //@+node:swot.20221029070417.1: *8* GridTile -- use GridTileBar
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

//@+node:swot.20221028130417.2: *3* GridTileExample
//@@language dart
//@@tabwidth -2
class GridTileExample extends StatelessWidget {
  const GridTileExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221028130417.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221028131715.2: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221028131715.3: *6* appBar
      appBar: AppBar(
        title: Text('GridTile'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221028131715.4: *6* body
      body:
      //@+others
      //@+node:swot.20221028130528.1: *7* Center
      Center(
        child:
        //@+others
        //@+node:swot.20221029070735.1: *8* SizedBox
        SizedBox(
          height: 400,
          width: 300,
          child:
          //@+others
          //@+node:swot.20221029070636.1: *9* GridTile  -- use Container
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

//@+node:swot.20221023124644.1: ** H
//@+node:swot.20221029092751.2: *3* HeroExample
//@@language dart
//@@tabwidth -2
class HeroExample extends StatelessWidget {
  const HeroExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221029092751.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029094712.2: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221029094712.3: *6* appBar
      appBar: AppBar(
        title: Text('Hero'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221029094712.4: *6* body
      body:
      //@+others
      //@+node:swot.20221029092810.1: *7* Center
      Center(
        child:
        //@+others
        //@+node:swot.20221029092914.1: *8* Hero
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

//@+node:swot.20221031143139.2: *3* HeroExample2
//@@language dart
//@@tabwidth -2
class HeroExample2 extends StatelessWidget {
  const HeroExample2({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221031143139.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221031143419.2: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221031143419.3: *6* appBar
      appBar: AppBar(
        title: Text('HeroExample2'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221031143419.4: *6* body
      body:
      //@+others
      //@+node:swot.20221031143456.1: *7* Hero
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

//@+node:swot.20221029081714.13: ** I
//@+node:swot.20221029081714.14: *3* InteractiveViewerExample
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
  //@+node:swot.20221029081714.17: *4* build()
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

//@+node:swot.20221101064424.1: *3* InteractiveViewerExample2 -- scale the image
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
  //@+node:swot.20221101064424.2: *4* build()
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

//@+node:swot.20221029115307.2: *3* IgnorePointerExample
//@@language dart
//@@tabwidth -2
class IgnorePointerExample extends StatefulWidget {
  const IgnorePointerExample({super.key});

  @override
  State<IgnorePointerExample> createState() => _IgnorePointerExampleState();
}

class _IgnorePointerExampleState extends State<IgnorePointerExample> {
  //@+others
  //@+node:swot.20221029115307.3: *4* varible
  bool ignore = false;
  //@+node:swot.20221029115307.4: *4* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221029115307.5: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221029115307.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029115522.1: *5* Row
    Row(
      children: [
        //@+others
        //@+node:swot.20221029115652.2: *6* ElevatedButton
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
        //@+node:swot.20221029120401.1: *6* IgnorePointer
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

//@+node:swot.20221029122755.2: *3* IndexedStackExample
//@@language dart
//@@tabwidth -2
class IndexedStackExample extends StatefulWidget {
  const IndexedStackExample({super.key});

  @override
  State<IndexedStackExample> createState() => _IndexedStackExampleState();
}

class _IndexedStackExampleState extends State<IndexedStackExample> {
  //@+others
  //@+node:swot.20221029122755.3: *4* varible
  int index = 0;
  //@+node:swot.20221029122755.4: *4* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221029122755.5: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221029122755.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029125202.2: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221029125202.3: *6* appBar
      appBar: AppBar(
        title: Text('IndexedStack'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221029125202.4: *6* body
      body:
      //@+others
      //@+node:swot.20221029123730.2: *7* Padding
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        //@+others
        //@+node:swot.20221029123925.2: *8* Column
        Column(
          children: [
            //@+others
            //@+node:swot.20221029124213.2: *9* Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //@+others
                //@+node:swot.20221029124242.2: *10* ElevatedButton 0
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

                //@+node:swot.20221029124327.1: *10* ElevatedButton 1
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

                //@+node:swot.20221029124328.1: *10* ElevatedButton 2
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
            //@+node:swot.20221029124503.1: *9* IndexedStack
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

//@+node:swot.20221031231919.2: *3* InkwellExample -- press ALT to scale
//@@language dart
//@@tabwidth -2
class InkwellExample extends StatefulWidget {
  const InkwellExample({super.key});

  @override
  State<InkwellExample> createState() => _InkwellExampleState();
}

class _InkwellExampleState extends State<InkwellExample> {
  //@+others
  //@+node:swot.20221031231919.3: *4* varible
  Color boxColor = Colors.blue;
  //@+node:swot.20221031231919.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221101062927.1: *5* InkWell
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

//@+node:swot.20221023105408.1: ** L
//@+node:swot.20221030225430.2: *3* LayoutBuilderExample
//@@language dart
//@@tabwidth -2
class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221030225430.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221030230818.2: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221030230818.3: *6* appBar
      appBar: AppBar(
        title: Text('LayoutBuilderExample'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221030230818.4: *6* body
      body:
      //@+others
      //@+node:swot.20221030225455.1: *7* LayoutBuilder
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

//@+node:swot.20221023105920.2: *3* LongPressDraggableExample
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
  //@+node:swot.20221023105947.1: *4* varible
  Offset _offset = const Offset(200, 250);
  //@+node:swot.20221023105920.3: *4* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221023105920.4: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221023105920.5: *4* build()
  @override
  Widget build(BuildContext context) {
    //@+others
    //@+node:swot.20221023123049.2: *5* Scaffold
    return Scaffold(
      //@+others
      //@+node:swot.20221023123049.3: *6* appBar
      appBar: AppBar(
        title: Text('LongPressDraggable'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221023123049.4: *6* body
      body: Center(
        child: LayoutBuilder(
          builder: (context, constrains) {
            return Stack(children: [
              //@+others
              //@+node:swot.20221023110506.1: *7* Positioned
              Positioned(
                left: _offset.dx,
                top: _offset.dy,
                child:
                //@+others
                //@+node:swot.20221023110634.1: *8* LongPressDraggable
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

//@+node:swot.20221029130827.2: *3* ListViewExample
//@@language dart
//@@tabwidth -2
class ListViewExample extends StatelessWidget {
  const ListViewExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221029130827.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029133516.2: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221029133516.3: *6* appBar
      appBar: AppBar(
        title: Text('ListView'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221029133516.4: *6* body
      body:
      //@+others
      //@+node:swot.20221029132335.1: *7* ListView
      ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.white),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return
          //@+others
          //@+node:swot.20221029133717.1: *8* ListTile
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

//@+node:swot.20221023081258.1: ** M
//@+node:swot.20221023081535.2: *3* MaterialBannerExample
//@@language dart
//@@tabwidth -2
class MaterialBannerExample extends StatelessWidget {
  const MaterialBannerExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221023081535.3: *4* build()
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

//@+node:swot.20221029134405.14: ** N
//@+node:swot.20221029140231.2: *3* NavigationBarExample
//@@language dart
//@@tabwidth -2
class NavigationBarExample extends StatefulWidget {
  const NavigationBarExample({super.key});

  @override
  State<NavigationBarExample> createState() => _NavigationBarExampleState();
}

class _NavigationBarExampleState extends State<NavigationBarExample> {
  //@+others
  //@+node:swot.20221029140231.3: *4* varible
  int currentIndex = 0;

  static const List body = [
    Icon(Icons.home, size: 50),
    Icon(Icons.search, size: 50),
    Icon(Icons.person, size: 50),
  ];
  //@+node:swot.20221029140231.4: *4* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221029140231.5: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221029140231.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029141046.2: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221029141046.3: *6* appBar
      appBar: AppBar(
        title: Text('NavigationBar'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221029141046.4: *6* body
      body: Center(
        child: body.elementAt(currentIndex),
      ),

      //@+node:swot.20221029141046.5: *6* bottomNavigationBar
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

//@+node:swot.20221030231300.11: ** O
//@+node:swot.20221030231950.2: *3* OrientationBuilderExample
//@@language dart
//@@tabwidth -2
class OrientationBuilderExample extends StatelessWidget {
  const OrientationBuilderExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221030231950.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221030232043.2: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221030232043.3: *6* appBar
      appBar: AppBar(
        title: Text('OrientationBuilderExample'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221030232043.4: *6* body
      body:
      //@+others
      //@+node:swot.20221030232118.1: *7* OrientationBuilder
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

//@+node:swot.20221030232847.2: *3* OverflowBarExample -- auto adjust row or column
//@@language dart
//@@tabwidth -2
class OverflowBarExample extends StatelessWidget {
  const OverflowBarExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221030232847.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221030233721.2: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221030233721.3: *6* appBar
      appBar: AppBar(
        title: Text('OverflowBarExample'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221030233721.4: *6* body
      body:
      //@+others
      //@+node:swot.20221030233137.2: *7* Padding
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        //@+others
        //@+node:swot.20221030233211.1: *8* OverflowBar
        OverflowBar(
          spacing: 8,
          children: [
            //@+others
            //@+node:swot.20221030233258.2: *9* ElevatedButton
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  // backgroundColor: Colors.orangeAccent,
                  ),
              onPressed: () {},
              child: const Text('linux'),
            ),

            //@+node:swot.20221030233342.2: *9* ElevatedButton
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  // backgroundColor: Colors.orangeAccent,
                  ),
              onPressed: () {},
              child: const Text('flutter'),
            ),

            //@+node:swot.20221030233342.1: *9* ElevatedButton
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  // backgroundColor: Colors.orangeAccent,
                  ),
              onPressed: () {},
              child: const Text('javascript'),
            ),

            //@+node:swot.20221030233809.1: *9* ElevatedButton
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  // backgroundColor: Colors.orangeAccent,
                  ),
              onPressed: () {},
              child: const Text('python'),
            ),

            //@+node:swot.20221030233843.1: *9* ElevatedButton
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

//@+node:swot.20221023093033.14: ** P
//@+node:swot.20221029234453.2: *3* PageViewExample
//@@language dart
//@@tabwidth -2
class PageViewExample extends StatefulWidget {
  const PageViewExample({super.key});

  @override
  State<PageViewExample> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  //@+others
  //@+node:swot.20221111064532.1: *4* varible
  final controller = PageController(initialPage: 1);  // Page 2
  //@+node:swot.20221111064612.1: *4* dispose()
  dispose() {
    super.dispose();
    controller.dispose();
  }
  //@+node:swot.20221029234453.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221029235310.2: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221029235310.3: *6* appBar
      appBar: AppBar(
        title: Text('PageViewExample'),
        // leading: Icon(Icons.menu),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          //@+others
          //@+node:swot.20221111065157.2: *7* IconButton left !!!
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
          //@+node:swot.20221111065339.1: *7* IconButton right !!!
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
      //@+node:swot.20221029235310.4: *6* body
      body:
      //@+others
      //@+node:swot.20221029234534.1: *7* PageView !!!
      PageView(
        // physics: const NeverScrollableScrollPhysics(),
        // scrollDirection: Axis.vertical,  // default is Axis.horizontal
        controller: controller,
        onPageChanged: (index) {
          print('Page ${index + 1}');
        },
        children: [
          //@+others
          //@+node:swot.20221029234605.1: *8* Container
          Container(
            color: Colors.orangeAccent,
            child: const Center(
              child: Text(
                'Page 1',
                style: TextStyle(fontSize: 100),
              ),
            ),
          ),
          //@+node:swot.20221029234724.1: *8* Container
          Container(
            color: Colors.redAccent,
            child: const Center(
              child: Text(
                'Page 2',
                style: TextStyle(fontSize: 100),
              ),
            ),
          ),
          //@+node:swot.20221029234725.1: *8* Container
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

//@+node:swot.20221025114730.2: *3* PopupMenuButtonExample
//@@language dart
//@@tabwidth -2
class PopupMenuButtonExample extends StatefulWidget {
  const PopupMenuButtonExample({super.key});

  @override
  State<PopupMenuButtonExample> createState() => _PopupMenuButtonExampleState();
}

class _PopupMenuButtonExampleState extends State<PopupMenuButtonExample> {
  //@+others
  //@+node:swot.20221025114730.3: *4* varible
  String title = 'PopupMenuButton';
  String item1 = 'First item';
  String item2 = 'Second item';
  //@+node:swot.20221025114730.6: *4* build()
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

//@+node:swot.20221029235922.2: *3* PositionedExample
//@@language dart
//@@tabwidth -2
class PositionedExample extends StatelessWidget {
  const PositionedExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221029235922.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221030082723.2: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221030082723.3: *6* appBar
      appBar: AppBar(
        title: Text('PositionedExample'),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221030082723.4: *6* body
      body:
      //@+others
      //@+node:swot.20221030081223.2: *7* Center
      Center(
        child:
        //@+others
        //@+node:swot.20221030081235.1: *8* Stack
        Stack(
          children: [
            //@+others
            //@+node:swot.20221030081313.1: *9* Positioned
            Positioned(
              left: 20,
              top: 20,
              child: Image.network(
                'https://img0.baidu.com/it/u=3216067279,1683207701&fm=253&fmt=auto&app=138&f=JPEG?w=250&h=238',
                width: 250,
              ),
            ),
            //@+node:swot.20221030081540.1: *9* Positioned
            Positioned(
              left: 60,
              top: 120,
              child: Image.network(
                'https://img2.baidu.com/it/u=3325552638,2237228879&fm=253&fmt=auto&app=138&f=JPEG?w=260&h=298',
                width: 250,
              ),
            ),
            //@+node:swot.20221030081542.1: *9* Positioned
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

//@+node:swot.20221023093415.1: *3* PreferredSizeExample
/*
//@+others
//@+node:swot.20221023093803.1: *4* AppBar
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
*/
//@+node:swot.20221023152107.13: ** R
//@+node:swot.20221116192205.1: *3* RadioListTileExample
//@+node:swot.20221030084432.1: *4* radioListTileOptions
List<String> radioListTileOptions = ['Option 1', 'Option 2'];

//@+node:swot.20221030083241.2: *4* RadioListTileExample
//@@language dart
//@@tabwidth -2
class RadioListTileExample extends StatefulWidget {
  const RadioListTileExample({super.key});

  @override
  State<RadioListTileExample> createState() => _RadioListTileExampleState();
}

class _RadioListTileExampleState extends State<RadioListTileExample> {
  //@+others
  //@+node:swot.20221030083241.3: *5* varible
  String currentOption = radioListTileOptions[0];
  //@+node:swot.20221030083241.4: *5* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221030083241.5: *5* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221030083241.6: *5* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221030083721.2: *6* Column
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //@+others
            //@+node:swot.20221030083736.1: *7* RadioListTile
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
            //@+node:swot.20221030084017.1: *7* RadioListTile
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

//@+node:swot.20221031182202.2: *3* RangeSliderExample
//@@language dart
//@@tabwidth -2
class RangeSliderExample extends StatefulWidget {
  const RangeSliderExample({super.key});

  @override
  State<RangeSliderExample> createState() => _RangeSliderExampleState();
}

class _RangeSliderExampleState extends State<RangeSliderExample> {
  //@+others
  //@+node:swot.20221031182202.3: *4* varible
  RangeValues values = const RangeValues(0.1, 0.5);
  //@+node:swot.20221031182202.4: *4* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221031182202.5: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221031182202.6: *4* build()
  @override
  Widget build(BuildContext context) {
    //@+others
    //@+node:swot.20221031182439.1: *5* varible
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );
    //@+node:swot.20221031182617.2: *5* Center
    return Center(
      child:
          //@+others
          //@+node:swot.20221031182643.1: *6* RangeSlider
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

//@+node:swot.20221030172700.2: *3* RefreshIndicatorExample
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
  //@+node:swot.20221030172700.3: *4* varible
  List<String> items = [
    "Item 1",
    "Item 2",
  ];
  //@+node:swot.20221030172700.4: *4* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221030172700.5: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221030172700.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221030182420.2: *5* Scaffold
        Scaffold(
          //@+others
          //@+node:swot.20221030182420.3: *6* appBar
          appBar: AppBar(
            title: Text('RefreshIndicatorExample'),
            // leading: Icon(Icons.menu),
            actions: [
              Icon(Icons.settings),
            ],
            elevation: 0.0,
            centerTitle: true,
          ),
          //@+node:swot.20221030182420.4: *6* body
          body:
              //@+others
              //@+node:swot.20221030173047.1: *7* RefreshIndicator
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

//@+node:swot.20221023152801.2: *3* ReorderableListViewExample
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
  //@+node:swot.20221023152933.1: *4* varible
  final List<int> items = List<int>.generate(30, (int index) => index);
  //@+node:swot.20221023152801.3: *4* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221023152801.4: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221023152801.5: *4* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221023154334.2: *5* Scaffold
        Scaffold(
          //@+others
          //@+node:swot.20221023154334.3: *6* appBar
          appBar: AppBar(
            title: Text('ReorderableListView'),
            actions: [
              Icon(Icons.settings),
            ],
            elevation: 0.0,
            centerTitle: true,
          ),
          //@+node:swot.20221023154334.4: *6* body
          body:
              //@+others
              //@+node:swot.20221023153058.1: *7* ReorderableListView
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

//@+node:swot.20221030205049.2: *3* RotatedBoxExample
//@@language dart
//@@tabwidth -2
class RotatedBoxExample extends StatelessWidget {
  const RotatedBoxExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221030205049.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221030205124.1: *5* RotatedBox
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

//@+node:swot.20221024070848.8: ** S
//@+node:swot.20221030224821.2: *3* SafeAreaExample
//@@language dart
//@@tabwidth -2
class SafeAreaExample extends StatelessWidget {
  const SafeAreaExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221030224821.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221030225147.1: *5* SafeArea
        SafeArea(
        child:
            //@+others
            //@+node:swot.20221030224837.1: *6* Text
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

//@+node:swot.20221116192440.1: *3* SearchDelegateExample
//@+node:swot.20221031115636.1: *4* CustomSearchDelegate
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

//@+node:swot.20221031114947.2: *4* SearchDelegateExample
//@@language dart
//@@tabwidth -2
class SearchDelegateExample extends StatefulWidget {
  const SearchDelegateExample({super.key});

  @override
  State<SearchDelegateExample> createState() => _SearchDelegateExampleState();
}

class _SearchDelegateExampleState extends State<SearchDelegateExample> {
  //@+others
  //@+node:swot.20221031114947.3: *5* varible
  //@+node:swot.20221031114947.6: *5* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221031115107.2: *6* Scaffold
        Scaffold(
          //@+others
          //@+node:swot.20221031115107.3: *7* appBar
          appBar: AppBar(
            title: Text('SearchDelegateExample'),
            elevation: 0.0,
            centerTitle: true,
            actions: [
              //@+others
              //@+node:swot.20221031115310.2: *8* IconButton !!!
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
          //@+node:swot.20221031115107.4: *7* body
          body: null,
          //@-others
        );
        //@-others
  }
  //@-others
}

//@+node:swot.20221030210033.2: *3* SelectableTextExample
//@@language dart
//@@tabwidth -2
class SelectableTextExample extends StatefulWidget {
  const SelectableTextExample({super.key});

  @override
  State<SelectableTextExample> createState() => _SelectableTextExampleState();
}

class _SelectableTextExampleState extends State<SelectableTextExample> {
  //@+others
  //@+node:swot.20221101072329.1: *4* varible
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
  //@+node:swot.20221030210033.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221101072843.2: *5* Column
        Column(
          children: [
            //@+others
            //@+node:swot.20221030210100.1: *6* SelectableText
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

//@+node:swot.20221024095344.2: *3* DatePickerExample
//@@language dart
//@@tabwidth -2
class DatePickerExample extends StatefulWidget {
  const DatePickerExample({super.key});

  @override
  State<DatePickerExample> createState() => _DatePickerExampleState();
}

class _DatePickerExampleState extends State<DatePickerExample> {
  //@+others
  //@+node:swot.20221024095406.1: *4* varible
  DateTime selectedDate = DateTime.now();
  // DateTime selectedDate = DateTime(2100);
  //@+node:swot.20221024095344.3: *4* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221024095344.4: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221024095344.5: *4* build()
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

//@+node:swot.20221024103523.2: *3* TimePickerExample
//@@language dart
//@@tabwidth -2
class TimePickerExample extends StatefulWidget {
  const TimePickerExample({super.key});

  @override
  State<TimePickerExample> createState() => _TimePickerExampleState();
}

class _TimePickerExampleState extends State<TimePickerExample> {
  //@+others
  //@+node:swot.20221024103850.1: *4* varible
  TimeOfDay selectedTime = TimeOfDay.now();
  // TimeOfDay? time = const TimeOfDay(hour: 12, minute: 12);
  //@+node:swot.20221024103523.3: *4* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221024103523.4: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221024103957.1: *4* build()
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

//@+node:swot.20221024110030.2: *3* DateRangePickerExample
//@@language dart
//@@tabwidth -2
class DateRangePickerExample extends StatefulWidget {
  const DateRangePickerExample({super.key});

  @override
  State<DateRangePickerExample> createState() => _DateRangePickerExampleState();
}

class _DateRangePickerExampleState extends State<DateRangePickerExample> {
  //@+others
  //@+node:swot.20221024110048.1: *4* varible
  DateTimeRange selectedDates = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now(),
  );
  //@+node:swot.20221024110030.3: *4* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221024110030.4: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221024110030.5: *4* build()
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

//@+node:swot.20221030210547.2: *3* SliderExample
//@@language dart
//@@tabwidth -2
class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  //@+others
  //@+node:swot.20221030210547.3: *4* varible
  double _currentSliderValue = 20;
  //@+node:swot.20221030210547.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221030211118.1: *5* Slider
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

//@+node:swot.20221031171010.2: *3* SliveAppBarExample
//@@language dart
//@@tabwidth -2
class SliveAppBarExample extends StatefulWidget {
  const SliveAppBarExample({super.key});

  @override
  State<SliveAppBarExample> createState() => _SliveAppBarExampleState();
}

class _SliveAppBarExampleState extends State<SliveAppBarExample> {
  //@+others
  //@+node:swot.20221031171010.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221031171922.2: *5* Scaffold
        Scaffold(
          //@+others
          //@+node:swot.20221031171922.4: *6* body
          body:
              //@+others
              //@+node:swot.20221031172002.1: *7* CustomScrollView
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

//@+node:swot.20221030212509.2: *3* SnackBarExample
//@@language dart
//@@tabwidth -2
class SnackBarExample extends StatelessWidget {
  const SnackBarExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221030212509.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221030212550.2: *5* ElevatedButton
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

//@+node:swot.20221031222131.2: *3* SpreadOperatorExample
//@@language dart
//@@tabwidth -2
class SpreadOperatorExample extends StatelessWidget {
  const SpreadOperatorExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221031222131.3: *4* build()
  @override
  Widget build(BuildContext context) {
    //@+others
    //@+node:swot.20221031222154.1: *5* varible
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
    //@+node:swot.20221031225000.2: *5* Scaffold
    return Scaffold(
      //@+others
      //@+node:swot.20221031225000.3: *6* appBar
      appBar: AppBar(
        title: Text('SpreadOperator'),
        // leading: Icon(Icons.menu),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
        ],
      ),
      //@+node:swot.20221031225000.4: *6* body
      body:
          //@+others
          //@+node:swot.20221031225029.2: *7* Column
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

//@+node:swot.20221029142534.2: *3* StackExample
//@@language dart
//@@tabwidth -2
class StackExample extends StatelessWidget {
  const StackExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221029142534.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221029142715.2: *5* Scaffold
        Scaffold(
          //@+others
          //@+node:swot.20221029142715.3: *6* appBar
          appBar: AppBar(
            title: Text('Stack'),
            // leading: Icon(Icons.menu),
            actions: [
              Icon(Icons.settings),
            ],
            elevation: 0.0,
            centerTitle: true,
          ),
          //@+node:swot.20221029142715.4: *6* body
          body:
              //@+others
              //@+node:swot.20221029142815.2: *7* Center
              Center(
                child:
                    //@+others
                    //@+node:swot.20221029142627.1: *8* Stack
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

//@+node:swot.20221029144530.2: *3* StepperExample
//@@language dart
//@@tabwidth -2
class StepperExample extends StatefulWidget {
  const StepperExample({super.key});

  @override
  State<StepperExample> createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  //@+others
  //@+node:swot.20221029144530.3: *4* varible
  int _currentStep = 0;
  //@+node:swot.20221029144530.4: *4* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221029144530.5: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221029144530.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221029144924.2: *5* Scaffold
        Scaffold(
          //@+others
          //@+node:swot.20221029144924.3: *6* appBar
          appBar: AppBar(
            title: Text('Stepper'),
            // leading: Icon(Icons.menu),
            actions: [
              Icon(Icons.settings),
            ],
            elevation: 0.0,
            centerTitle: true,
          ),
          //@+node:swot.20221029144924.4: *6* body
          body:
              //@+others
              //@+node:swot.20221029144954.2: *7* Center
              Center(
                child:
                    //@+others
                    //@+node:swot.20221029145033.1: *8* Stepper
                    Stepper(
                      //@+others
                      //@+node:swot.20221029191553.1: *9* steps
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

//@+node:swot.20221116192626.1: *3* StreamBuilderExample
//@+node:swot.20221029211743.1: *4* generateStream -- FAKE FIREBASE STREAM
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

//@+node:swot.20221029211533.2: *4* StreamBuilderExample
//@@language dart
//@@tabwidth -2
class StreamBuilderExample extends StatefulWidget {
  const StreamBuilderExample({super.key});

  @override
  State<StreamBuilderExample> createState() => _StreamBuilderExampleState();
}

class _StreamBuilderExampleState extends State<StreamBuilderExample> {
  //@+others
  //@+node:swot.20221029211533.6: *5* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221029213944.2: *6* Scaffold
        Scaffold(
          //@+others
          //@+node:swot.20221029213944.3: *7* appBar
          appBar: AppBar(
            title: Text('StreamBuilder'),
            // leading: Icon(Icons.menu),
            actions: [
              Icon(Icons.settings),
            ],
            elevation: 0.0,
            centerTitle: true,
          ),
          //@+node:swot.20221029213944.4: *7* body
          body:
              //@+others
              //@+node:swot.20221029212803.2: *8* Center
              Center(
                child:
                    //@+others
                    //@+node:swot.20221029212812.1: *9* StreamBuilder
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

//@+node:swot.20221029215403.2: *3* SwitchExample
//@@language dart
//@@tabwidth -2
class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  //@+others
  //@+node:swot.20221029215403.3: *4* varible
  bool isSwitched = false;
  //@+node:swot.20221029215403.4: *4* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221029215403.5: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221029215403.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221029215500.2: *5* Center
        Center(
          child:
              //@+others
              //@+node:swot.20221029215505.1: *6* Switch
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

//@+node:swot.20221023175859.14: ** T
//@+node:swot.20221023193833.2: *3* TableExample
//@@language dart
//@@tabwidth -2
class TableExample extends StatelessWidget {
  const TableExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221023193833.3: *4* build()
  @override
  Widget build(BuildContext context) {
    //@+others
    //@+node:swot.20221023193950.2: *5* Scaffold
    return Scaffold(
      //@+others
      //@+node:swot.20221023193950.3: *6* appBar
      appBar: AppBar(
        title: const Text('Table'),
        elevation: 0.0,
        centerTitle: true,
      ),
      //@+node:swot.20221023193950.4: *6* body
      body:
          //@+others
          //@+node:swot.20221023194122.1: *7* Center
          Center(
            child: Padding(
            padding: const EdgeInsets.all(15.0),
            child:
                //@+others
                //@+node:swot.20221023200224.1: *8* SingleChildScrollView
                SingleChildScrollView(
                  child:
                      //@+others
                      //@+node:swot.20221023194310.1: *9* Table
                      Table(
                          border: TableBorder.all(color: Colors.white30),
                          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                          children: [
                            //@+others
                            //@+node:swot.20221023194533.1: *10* TableRow
                            const TableRow(
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                              ),
                              children: [
                                //@+others
                                //@+node:swot.20221023194941.1: *11* TableCell
                                TableCell(
                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Title 1'),
                                  ),
                                ),
                                //@+node:swot.20221023194949.1: *11* TableCell
                                TableCell(
                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Title 2'),
                                  ),
                                ),
                                //@+node:swot.20221023194950.1: *11* TableCell
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
                            //@+node:swot.20221023195102.1: *10* List.generate
                            ...List.generate(
                              30,
                              (index) => const TableRow(
                                children: [
                                  //@+others
                                  //@+node:swot.20221023195414.1: *11* TableCell
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Cell 1'),
                                    ),
                                  ),
                                  //@+node:swot.20221023195426.1: *11* TableCell
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Cell 2'),
                                    ),
                                  ),
                                  //@+node:swot.20221023195426.2: *11* TableCell
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

//@+node:swot.20221114192153.2: *3* TextExample
//@@language dart
//@@tabwidth -2
class TextExample extends StatelessWidget {
  const TextExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221114192153.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221114192542.1: *5* GestureDetector
    GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child:
      //@+others
      //@+node:swot.20221114193002.1: *6* Scaffold
      Scaffold(
        //@+others
        //@+node:swot.20221114193106.1: *7* appBar
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              // Image.asset(
              //   'assets/images/logo.png',
              //   scale: 12,
              // ),
              FlutterLogo(),
              SizedBox(
                width: 10,
              ),
              Text(
                'TextExample',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          // backgroundColor: const Color(0xff6ae792),
        ),
        //@+node:swot.20221114193135.1: *7* body
        body:
        //@+others
        //@+node:swot.20221114202206.1: *8* Column: MUST use Row -> Expanded
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //@+others
            //@+node:swot.20221114195436.1: *9* Row -> Expanded -> ellipsis
            Row(
              children: const [
                Expanded(
                  child: Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                    style: TextStyle(fontSize: 58),
                    softWrap: false,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),

            //@+node:swot.20221114202534.2: *9* Divider
            const Divider(
              color: Colors.red,
              height: 20,
              thickness: 3,
              // indent: 20,
              // endIndent: 40,
            ),
            //@+node:swot.20221114195444.1: *9* Row -> Expanded -> fade from right
            Row(
              children: const [
                Expanded(
                  child: Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                    style: TextStyle(fontSize: 58),
                    softWrap: true,
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),

            //@+node:swot.20221114202534.2: *9* Divider
            const Divider(
              color: Colors.red,
              height: 20,
              thickness: 3,
              // indent: 20,
              // endIndent: 40,
            ),
            //@+node:swot.20221114204245.1: *9* Row -> Expanded -> fade from bottom
            Row(
              children: const [
                Expanded(
                  child: Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                    style: TextStyle(fontSize: 58),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),

            //@+node:swot.20221114202534.2: *9* Divider
            const Divider(
              color: Colors.red,
              height: 20,
              thickness: 3,
              // indent: 20,
              // endIndent: 40,
            ),
            //@+node:swot.20221114195452.1: *9* Row -> Expanded -> FittedBox
            //@@language dart
            //@@tabwidth -2
            Row(
              children: const [
                Expanded(
                  child: FittedBox(
                    child: Text(
                      'It is a long established text.',
                      style: TextStyle(fontSize: 58),
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            //@-others
          ],
        ),
        //@-others
        //@-others
      ),
      //@-others
    )
    //@-others
    ;
  }
  //@-others
}
//@+node:swot.20221029230649.2: *3* TabBarExample
//@@language dart
//@@tabwidth -2
class TabBarExample extends StatelessWidget {
  const TabBarExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221029230649.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221029230800.1: *5* DefaultTabController !!!
        DefaultTabController(
          length: 3,
          child:
              //@+others
              //@+node:swot.20221029230841.2: *6* Scaffold
              Scaffold(
                //@+others
                //@+node:swot.20221029230841.3: *7* appBar
                appBar: AppBar(
                  title: Text('TabBar'),
                  bottom:
                      //@+others
                      //@+node:swot.20221111222446.1: *8* TabBar !!!
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
                //@+node:swot.20221029230841.4: *7* body
                body:
                    //@+others
                    //@+node:swot.20221029231559.1: *8* TabBarView !!!
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

//@+node:swot.20221116193019.1: *3* TabPageSelectorExample
//@+node:swot.20221029220342.1: *4* tabPageSelectorWidgets
List<Widget> tabPageSelectorWidgets = const [
  Icon(Icons.home, size: 80),
  Icon(Icons.settings, size: 80),
  Icon(Icons.person, size: 80),
];

//@+node:swot.20221029220227.2: *4* TabPageSelectorExample
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
  //@+node:swot.20221029220227.3: *5* varible
  late final TabController controller;
  int _index = 0;
  //@+node:swot.20221029220227.4: *5* initState()
  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: tabPageSelectorWidgets.length,
      initialIndex: _index,
      vsync: this,
    );
  }

  //@+node:swot.20221029220227.5: *5* dispose()
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  //@+node:swot.20221029220227.6: *5* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221029221243.2: *6* Scaffold
        Scaffold(
          //@+others
          //@+node:swot.20221029221243.3: *7* appBar
          appBar: AppBar(
            title: Text('TabPageSelector'),
            // leading: Icon(Icons.menu),
            actions: [
              Icon(Icons.settings),
            ],
            elevation: 0.0,
            centerTitle: true,
          ),
          //@+node:swot.20221029221243.4: *7* body
          body:
              //@+others
              //@+node:swot.20221029221337.1: *8* Stack
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
          //@+node:swot.20221029221243.6: *7* floatingActionButton
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

//@+node:swot.20221113174434.2: *3* TextFieldExample
//@@language dart
//@@tabwidth -2
class TextFieldExample extends StatelessWidget {
  const TextFieldExample({ Key? key }) : super(key: key);
  //@+others
  //@+node:swot.20221113174434.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221113180505.1: *5* GestureDetector -- unfocus()
    GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child:
      //@+others
      //@+node:swot.20221113180641.1: *6* Scaffold
      Scaffold(
        //@+others
        //@+node:swot.20221113180931.1: *7* appBar
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
        //@+node:swot.20221113181008.1: *7* body
        //@@language dart
        //@@tabwidth -2
        body: Column(
          children: [
            //@+others
            //@+node:swot.20221113181132.1: *8* TextField -- number
            //@@language dart
            //@@tabwidth -2
            TextField(
              decoration: InputDecoration(labelText: 'Enter Number'),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            //@+node:swot.20221113181152.1: *8* TextField -- decimal
            //@@language dart
            //@@tabwidth -2
            TextField(
              decoration: InputDecoration(labelText: 'Enter Decimal value'),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9.,]')),
              ],
            ),
            //@+node:swot.20221113181202.1: *8* TextField -- phone
            //@@language dart
            //@@tabwidth -2
            TextField(
              decoration: InputDecoration(labelText: 'Enter phone number'),
              keyboardType: TextInputType.phone,
            ),
            //@+node:swot.20221113181209.1: *8* TextField -- done
            //@@language dart
            //@@tabwidth -2
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
//@+node:swot.20221027175533.2: *3* TextFormFieldExample
//@@language dart
//@@tabwidth -2
class TextFormFieldExample extends StatefulWidget {
  const TextFormFieldExample({super.key});

  @override
  State<TextFormFieldExample> createState() => _TextFormFieldExampleState();
}

class _TextFormFieldExampleState extends State<TextFormFieldExample> {
  //@+others
  //@+node:swot.20221027175533.3: *4* varible
  List<String> titles = [
    '',
    '',
    '',
  ];
  //@+node:swot.20221027175533.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221027183133.2: *5* Scaffold
        Scaffold(
          //@+others
          //@+node:swot.20221027183133.3: *6* appBar
          appBar: AppBar(
            title: Text('TextFormField'),
            // leading: Icon(Icons.menu),
            actions: [
              Icon(Icons.settings),
            ],
            elevation: 0.0,
            centerTitle: true,
          ),
          //@+node:swot.20221027183133.4: *6* body
          body:
              //@+others
              //@+node:swot.20221027180846.1: *7* SingleChildScrollView
              SingleChildScrollView(
                child:
                    //@+others
                    //@+node:swot.20221027180945.1: *8* Form
                    Form(
                      autovalidateMode: AutovalidateMode.always,
                      //@+others
                      //@+node:swot.20221112184234.1: *9* 2) onChanged !!! Form.of(primaryFocus!.context!).save -> setState(() {})
                      // TextFormField changed then call onSaved()
                      onChanged: () {
                        setState(() {
                          Form.of(primaryFocus!.context!)!.save();
                        });
                      },
                      //@+node:swot.20221112184709.1: *9* child
                      child:
                          //@+others
                          //@+node:swot.20221027182206.1: *10* Column
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children:
                            //@+others
                            //@+node:swot.20221112180710.1: *11* List.generate
                            List.generate(3, (int index) {
                              return Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    //@+others
                                    //@+node:swot.20221112180550.1: *12* 1) TextFormField input string
                                    TextFormField(
                                      //@+others
                                      //@+node:swot.20221112182519.1: *13* 3) onSaved !!! titles[index] = value
                                      onSaved: (String? value) {
                                        if (value != null) {
                                          titles[index] = value;
                                          print('index: $index');  // will print all index: 0,1,2
                                        }
                                      },
                                      //@-others
                                    ),
                                    //@+node:swot.20221112180604.1: *12* SizedBox
                                    const SizedBox(height: 10),
                                    //@+node:swot.20221112180616.1: *12* 4) Card !!! titles[index]
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

//@+node:swot.20221031220414.2: *3* TooltipExample -- long press
//@@language dart
//@@tabwidth -2
class TooltipExample extends StatelessWidget {
  const TooltipExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221031220414.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221031220639.2: *5* Center
        Center(
          child:
              //@+others
              //@+node:swot.20221031220649.1: *6* Tooltip
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

//@+node:swot.20221030213518.12: ** V
//@+node:swot.20221030222244.2: *3* VisibilityExample
//@@language dart
//@@tabwidth -2
class VisibilityExample extends StatefulWidget {
  const VisibilityExample({super.key});

  @override
  State<VisibilityExample> createState() => _VisibilityExampleState();
}

class _VisibilityExampleState extends State<VisibilityExample> {
  //@+others
  //@+node:swot.20221030222244.3: *4* varible
  bool isVisible = true;
  //@+node:swot.20221030222244.4: *4* initState()
  @override
  void initState() {
    super.initState();
  }

  //@+node:swot.20221030222244.5: *4* dispose()
  @override
  void dispose() {
    super.dispose();
  }

  //@+node:swot.20221030222244.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221030222322.2: *5* Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //@+others
            //@+node:swot.20221030222414.2: *6* ElevatedButton
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

            //@+node:swot.20221030222619.1: *6* Visibility
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

//@+node:swot.20221030223524.9: ** W
//@+node:swot.20221031202343.2: *3* WillPopScopeExample
//@@language dart
//@@tabwidth -2
class WillPopScopeExample extends StatelessWidget {
  const WillPopScopeExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221031202343.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221031202510.1: *5* WillPopScope -- disable or enable back button
        WillPopScope(
          onWillPop: () async {
            return false; // disable Android back button
            // return true;    // enable Android back button
          },
          child:
              //@+others
              //@+node:swot.20221031202632.2: *6* Scaffold
              Scaffold(
                backgroundColor: Colors.blue,
                //@+others
                //@+node:swot.20221031202632.3: *7* appBar
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
                //@+node:swot.20221031202632.4: *7* body
                body: const Center(),
                //@-others
              ),
              //@-others
        );
        //@-others
  }
  //@-others
}

//@+node:swot.20221030223719.2: *3* WrapExample
//@@language dart
//@@tabwidth -2
class WrapExample extends StatelessWidget {
  const WrapExample({Key? key}) : super(key: key);
  //@+others
  //@+node:swot.20221030223719.3: *4* build()
  @override
  Widget build(BuildContext context) {
    return
        //@+others
        //@+node:swot.20221030224541.2: *5* Scaffold
        Scaffold(
          //@+others
          //@+node:swot.20221030224541.3: *6* appBar
          appBar: AppBar(
            title: Text('WrapExample'),
            // leading: Icon(Icons.menu),
            actions: [
              Icon(Icons.settings),
            ],
            elevation: 0.0,
            centerTitle: true,
          ),
          //@+node:swot.20221030224541.4: *6* body
          body:
              //@+others
              //@+node:swot.20221030223755.2: *7* Center
              Center(
                child:
                    //@+others
                    //@+node:swot.20221030223816.1: *8* Wrap
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
//@-others
//@-leo
