import 'package:aquaculture/login.dart';
import 'package:flutter/material.dart';


class MySplashViews extends StatefulWidget {
  @override
  _MySplashViewsState createState() => _MySplashViewsState();
}

class _MySplashViewsState extends State<MySplashViews> {
  void _moveToHome() async {
    await Future.delayed(
      Duration(seconds: 2),
    );
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
        (Route<dynamic> _) => false);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _moveToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/aq.png',
              // width: 100,
              // height: 100,
            ),
            // SvgPicture.asset(
            //   'assets/svg/ngao.svg',
            //   width: 100,
            //   height: 100,
            // ),

             SizedBox(
              height: 15,
            ),
            const Text(
              "AQUACULTURE",
              textAlign: TextAlign.center,
              style: TextStyle(
//                    color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
           
          ],
        ),
      ),
    );
  }
}
