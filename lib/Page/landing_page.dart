import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tds/Page/group_regis.dart';
import 'package:tds/Page/personal_regis.dart';

Color firstcolor = const Color.fromARGB(255, 31, 56, 245);
Color secondcolor = const Color.fromARGB(255, 30, 129, 242);
Color bgColor = const Color.fromARGB(255, 255, 255, 255);

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bgColor,
      body: Center(
        child: Container(
          height: 300,
          width: 600,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              border: Border.all(color: Colors.black)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [firstcolor, secondcolor],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                          builder: (context) =>
                                              const PersonalRegisPage(),
                                        ));
                                  },
                                  icon: const Icon(
                                    Icons.person,
                                    size: 30,
                                  )),
                              const Text("Personal")
                            ],
                          ),
                        )),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [firstcolor, secondcolor],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                          builder: (context) =>
                                              const GroupRegisPage(),
                                        ));
                                  },
                                  icon: const Icon(
                                    Icons.group,
                                    size: 30,
                                  )),
                              const Text("Group")
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
