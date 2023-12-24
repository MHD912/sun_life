import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  late double _deviceHeight, _deviceWidth;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        foregroundColor: Colors.white,
        title: const Text(
          "Sun Life",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: Drawer(
        elevation: 16,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                margin: EdgeInsets.only(top: _deviceHeight * 0.05),
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const Divider(
                height: 1,
                thickness: 1,
              ),
              const SizedBox(height: 10),
              ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: const [
                  ListTile(
                    leading: Icon(
                      Icons.person,
                    ),
                    title: Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    tileColor: Colors.white,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings_sharp,
                    ),
                    title: Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    tileColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 0.02 * _deviceWidth,
            ),
            height: _deviceHeight,
            width: _deviceWidth,
            child: ListView(
              children: [
                SizedBox(
                  height: 0.05 * _deviceHeight,
                  width: 0.5 * _deviceWidth,
                  child: const Text(
                    "Hello World!",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
