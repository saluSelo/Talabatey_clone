import 'package:flutter/material.dart';
import 'package:talabatey_clone/Talabatey/registerTalabatey.dart';
import 'TalabateyHome.dart';

class TalabateySplash extends StatefulWidget {
  TalabateySplash({Key? key}) : super(key: key);

  @override
  State<TalabateySplash> createState() => _TalabateySplashState();
}

class _TalabateySplashState extends State<TalabateySplash> {
  Future delayed() async {
    await Future.delayed(const Duration(seconds: 5), () {
      // 5s over, navigate to a new page
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => registerPage()));
    });
  }

  @override
  void initState() {
    super.initState();
    delayed();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf7323e),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset('images/talabatey.png'),
      ]),
    );
  }
}
