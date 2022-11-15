//@+leo-ver=5-thin
//@+node:swot.20221114222958.1: * @file lib/composite.dart
//@@language dart
//@@tabwidth -2
//@+others
//@+node:swot.20221114223555.1: ** import
import 'package:flutter/material.dart';
//@+node:swot.20221114223110.1: ** User Login Example: Form + onWillPop + showDialog + RegExp
//@+doc
//@@language asciidoc
// :nofooter:
// 可以练习一下：
// https://blog.csdn.net/wywinstonwy/article/details/122274788
//
// .UserLogin
// image::image/FlutterWidget/UserLoginOnWillPop.png[,300]
//
// Call it:
//@@c
//@@language dart
/*
//@+<< ListTile -- User Login >>
//@+node:swot.20221112213542.1: *3* << ListTile -- User Login >>
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
*/
//@+node:swot.20221114223110.3: *3* UserLoginExample
//@@language dart
//@@tabwidth -2
class UserLoginExample extends StatefulWidget {
  const UserLoginExample({super.key});

  @override
  State<UserLoginExample> createState() => _UserLoginExampleState();
}

class _UserLoginExampleState extends State<UserLoginExample>{
  //@+others
  //@+node:swot.20221114223110.4: *4* varible
  String? _account;
  String? _pwd;
  final _formKey = GlobalKey<FormState>();
  //@+node:swot.20221114223110.5: *4* _login()
  _login(account, pwd) {
    print('账号：$account\n密码：$pwd');
  }
  //@+node:swot.20221114223110.6: *4* build()
  @override
  Widget build(BuildContext context) {
    return
    //@+others
    //@+node:swot.20221114223110.7: *5* Scaffold
    Scaffold(
      //@+others
      //@+node:swot.20221114223110.8: *6* appBar
      appBar: AppBar(
        title: Text('UserLoginExample'),
        // leading: Icon(Icons.menu),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
        ],
      ),
      //@+node:swot.20221114223110.9: *6* body
      body:
      //@+others
      //@+node:swot.20221114223110.10: *7* Form
      Form(
        key: _formKey,
        //@+others
        //@+node:swot.20221114223110.11: *8* onWillPop
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
        //@+node:swot.20221114223110.12: *8* Column
        //@@language dart
        //@@tabwidth -2
        child: Column(
          children: [
          //@+others
          //@+node:swot.20221114223110.13: *9* TextFormField _account
          //@@language dart
          //@@tabwidth -2
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
          //@+node:swot.20221114223110.14: *9* TextFormField _pwd
          //@@language dart
          //@@tabwidth -2
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
          //@+node:swot.20221114223110.15: *9* ElevatedButton login
          //@@language dart
          //@@tabwidth -2
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
