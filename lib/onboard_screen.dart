import 'package:attendance_list_v/pages/home_screen.dart';
import 'package:attendance_list_v/pages/onboard_screen/intro_1.dart';
import 'package:attendance_list_v/pages/onboard_screen/intro_2.dart';
import 'package:attendance_list_v/pages/onboard_screen/intro_3.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHomes') ?? false;

}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index){
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              Intro1(),
              Intro2(),
              Intro3(),
            ],

          ),
          Container(
            alignment: const Alignment(0,0.85),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  GestureDetector(
                    onTap: (){
                      _controller.jumpToPage(2);
                    },
                    child: const Text('Skip'),),

                  SmoothPageIndicator(controller: _controller, count: 3),

                  onLastPage ?
                  GestureDetector(
                    onTap: ()async {
                      final pref = await SharedPreferences.getInstance();
                      pref.setBool('showHome', true);
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context)=> const HomePage()),
                      );
                    },
                    child: const Text('Done'),
                  )
                  :
                  GestureDetector(
                    onTap: (){
                      _controller.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
                    },
                    child: const Text('Next'),
                  )
                ],
              ),

          )
        ],
      ),
    );
  }
}



