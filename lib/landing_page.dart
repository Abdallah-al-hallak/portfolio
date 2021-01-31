import 'package:flutter/material.dart';
import 'package:portfolio/animation/animate_background.dart';
import 'package:portfolio/animation/animation_wave.dart';
import 'package:portfolio/animation/fade_in.dart';
import 'package:portfolio/animation/fancyBackground.dart';
import 'package:portfolio/home_view.dart';
import 'package:portfolio/urls.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FancyBackgroundApp(),
    );
  }
}
