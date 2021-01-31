import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'animation/fade_in.dart';

class HomeView extends StatelessWidget {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(70),
          child: Image.asset(
            'assets/profilepic.jpg',
            width: 150,
            height: 150,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        FadeIn(
          1.0,
          Text(
            'Abdallah Al Hallak.',
            style: TextStyle(
                color: Colors.white60,
                fontSize: 25,
                fontWeight: FontWeight.w800),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Flutter Developer',
          style: TextStyle(
              color: Colors.white54, fontWeight: FontWeight.w500, fontSize: 20),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          'Contact with me',
          style: TextStyle(
            color: Colors.white60,
            fontSize: 15,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                _launchURL(
                    'https://www.linkedin.com/in/abdallah-al-hallak-6b72b91b1/');
              },
              child: Image.asset(
                'assets/facebook.png',
                width: 30,
                height: 30,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            GestureDetector(
              onTap: () {
                _launchURL('https://www.instagram.com/abd_hallak/');
              },
              child: Image.asset(
                'assets/instagram.png',
                width: 30,
                height: 30,
              ),
            ),
            SizedBox(
              width: 12,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            _launchURL('');
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 18,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(
                  colors: [
                    Color(0xffa2834d),
                    Color(0xffbc9a5f),
                  ],
                )),
            child: Text(
              'View Resume',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        // IconButton(
        //     icon: Icon(Icons.add_shopping_cart_outlined), onPressed: () {}),
      ],
    );
  }
}
