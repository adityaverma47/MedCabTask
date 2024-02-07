import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'dashboardscreen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {

  late final AnimationController _controller = AnimationController(
      duration: Duration(seconds: 1),vsync: this)..repeat();

  @override
  void dispose(){
    super.dispose();
    _controller.dispose();
  }

  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 2), ()=>Navigator.push(context, MaterialPageRoute(builder:(context) => DashBoardScreen()))
    );

  }
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.sizeOf(context).height *1;
    final width = MediaQuery.sizeOf(context).width *1;

    return  Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            AnimatedBuilder(
                child: Container(
                  height: height*0.5 ,
                  child: Center(child: Image.asset("assets/images/ambulance.jpg")),
                ),
                animation:_controller ,
                builder: (BuildContext context, Widget? child){
                  return Transform.scale(
                      scale: 1,
                      child: child);
                }

            ),
            SizedBox(height: height * 0.09,),
            Align(
                alignment: Alignment.center,
                child: Text("Welcome to \n MedCab Service", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),textAlign: TextAlign.center,))

          ],
        ),
      ),
    );
  }
}