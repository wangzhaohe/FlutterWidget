//@+leo-ver=5-thin
//@+node:swot.20221114225716.1: * @file lib/alphabet.dart
//@@language dart
//@@tabwidth -2
//@+others
//@+node:swot.20221114231710.1: ** import
import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';
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
    // image::../image/AboutListTile.png[AboutListTile,240]
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
        //@+node:swot.20221101182536.1: *6* SizedBox
        SizedBox(
          height: 150,
          child:
          //@+others
          //@+node:swot.20221101182340.2: *7* AnimatedList
          AnimatedList(
            key: _key,
            initialItemCount: 0,
            padding: const EdgeInsets.all(10),
            itemBuilder: (context, index, animation) {
              //@+others
              //@+node:swot.20221101182340.3: *8* SizeTransition
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
        ),
        //@-others
      ],
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

//@+node:swot.20221017093031.256: *3* AutoCompleteExample 不要在屏幕中部以下(会被软键盘挡住)
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

//@-others
//@-leo
