import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:auto_direction/auto_direction.dart';

void main() => runApp(const MyApp());

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.trackpad,
      };
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const MyHomePage(),
      title: 'Silent Messages',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      color: const Color.fromRGBO(255, 140, 0, 1.0),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String chatInput = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Hello there general Kenobi'),
        backgroundColor: const Color.fromRGBO(33, 33, 33, 1.0),
        leading: IconButton(
          icon: const Icon(
            Icons.account_circle,
            color: Color.fromRGBO(179, 179, 179, 1.0),
            size: 40.0,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.all(0.0),
            color: const Color.fromRGBO(179, 179, 179, 1.0),
            icon: const Icon(Icons.add, size: 40.0),
            onPressed: () {},
          ),
          const Padding(
            padding: EdgeInsets.all(2.0),
          ),
          IconButton(
            padding: const EdgeInsets.all(0.0),
            color: const Color.fromRGBO(179, 179, 179, 1.0),
            icon: const Icon(Icons.refresh, size: 40.0),
            onPressed: () {},
          ),
          const Padding(
            padding: EdgeInsets.all(4.0),
          ),
          IconButton(
            padding: const EdgeInsets.all(0.0),
            color: const Color.fromRGBO(179, 179, 179, 1.0),
            icon: const Icon(Icons.settings_rounded, size: 40.0),
            onPressed: () {},
          ),
          const Padding(
            padding: EdgeInsets.all(4.0),
          ),
        ],
      ),
      body: Row(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              color: const Color.fromRGBO(18, 18, 18, 1.0),
              child: Column(
                children: [
                  const Flexible(
                    flex: 6,
                    child: TextField(
                      maxLines: 1,
                      textAlignVertical: TextAlignVertical.center,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                        hintText: "Search contact, group...",
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(128, 128, 128, 1.0),
                        ),
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 6,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 7,
                          child: Container(
                            color: const Color.fromRGBO(38, 38, 38, 1.0),
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    Text(
                                      "Contacts",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(2.0),
                                    ),
                                    Icon(Icons.contacts),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const VerticalDivider(
                          width: 1,
                          color: Colors.white,
                        ),
                        Flexible(
                          flex: 7,
                          child: Container(
                            color: const Color.fromRGBO(38, 38, 38, 1.0),
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    Text(
                                      "Groups",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(2.0),
                                    ),
                                    Icon(Icons.group),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 88,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Wrap(
                        children: [
                          Container(
                            width: 100,
                            height: 150,
                            color: Colors.cyan,
                          ),
                          Container(
                            width: 100,
                            height: 150,
                            color: Colors.orange,
                          ),
                          Container(
                            width: 100,
                            height: 150,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 7,
            child: Column(
              children: [
                Flexible(
                  flex: 6,
                  child: Container(
                    color: const Color.fromRGBO(38, 38, 38, 1.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 200,
                          color: Colors.purple,
                        ),
                        Container(
                          width: 200,
                          color: Colors.orange,
                        ),
                        Container(
                          width: 200,
                          color: Colors.purple,
                        ),
                        Container(
                          width: 200,
                          color: Colors.orange,
                        ),
                        Container(
                          width: 200,
                          color: Colors.purple,
                        ),
                        Container(
                          width: 200,
                          color: Colors.orange,
                        ),
                        Container(
                          width: 200,
                          color: Colors.purple,
                        ),
                        Container(
                          width: 200,
                          color: Colors.orange,
                        ),
                        Container(
                          width: 200,
                          color: Colors.purple,
                        ),
                        Container(
                          width: 200,
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 6,
                  child: AppBar(
                    centerTitle: false,
                    title: const Text('Anakin Skywalker'),
                    backgroundColor: const Color.fromRGBO(33, 33, 33, 1.0),
                    leading: IconButton(
                      icon: const Icon(
                        Icons.account_circle,
                        size: 25.0,
                        color: Color.fromRGBO(250, 250, 250, 1.0),
                      ),
                      onPressed: () {},
                    ),
                    actions: [
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: Text(
                            "OurEmployerServer.com",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      IconButton(
                        padding: const EdgeInsets.all(0.0),
                        color: const Color.fromRGBO(179, 179, 179, 1.0),
                        icon: const Icon(Icons.call, size: 30.0),
                        onPressed: () {},
                      ),
                      IconButton(
                        padding: const EdgeInsets.all(0.0),
                        color: const Color.fromRGBO(179, 179, 179, 1.0),
                        icon: const Icon(Icons.video_call, size: 30.0),
                        onPressed: () {},
                      ),
                      IconButton(
                        padding: const EdgeInsets.all(0.0),
                        color: const Color.fromRGBO(179, 179, 179, 1.0),
                        icon: const Icon(Icons.screen_share, size: 30.0),
                        onPressed: () {},
                      ),
                      IconButton(
                        padding: const EdgeInsets.all(0.0),
                        color: const Color.fromRGBO(179, 179, 179, 1.0),
                        icon: const Icon(Icons.more_vert, size: 30.0),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 78,
                  child: Container(
                    color: const Color.fromRGBO(42, 42, 42, 1.0),
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Colors.white,
                ),
                Flexible(
                  flex: 10,
                  child: Container(
                    alignment: Alignment.center,
                    color: const Color.fromRGBO(30, 30, 30, 1.0),
                    child: AutoDirection(
                      text: chatInput,
                      child: TextField(
                        onChanged: (userChatInput) {
                          setState(() {
                            chatInput = userChatInput;
                          });
                        },
                        minLines: 1,
                        maxLines: 2,
                        textAlignVertical: TextAlignVertical.center,
                        style: const TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                          hintText: "Type your message here...",
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(128, 128, 128, 1.0),
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsets.fromLTRB(4, 0, 10, 0),
                            child: Icon(
                              Icons.send,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
