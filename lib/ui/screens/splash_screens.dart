import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';
import '../utils/asset_paths.dart';
import 'login_screen.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({super.key});

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }

  Future<void> _moveToNextScreen() async {
    await Future.delayed(Duration(seconds: 1));
    Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Center(child: SvgPicture.asset(AssetPaths.logoSvg, height: 40)),
      ),
    );
  }
}
