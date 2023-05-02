import 'package:bookly/Features/home/presentation/views/home_view_screen.dart';
import 'package:bookly/shared/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;
  @override
  void initState() {
    super.initState();
   initAnimation();


  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedBuilder(
          animation: animation,
          builder: (context, child) => SlideTransition(
            position: animation,
              child: Image.asset(logoPath)),
        ),
        AnimatedBuilder(
          animation: animation,
          builder: (context, child) =>SlideTransition(
             position: animation,
            child: Text(
              "Reed Books For Free",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.sp,
              ),
            ),
          ),
        )
      ],
    );
  }
  void initAnimation(){
    animationController = AnimationController(
        vsync: this,
        duration:const Duration(seconds: 3)
    );
    animation = Tween<Offset>(begin:const Offset(0,5) ,end:const Offset(0,0) ).animate(animationController);
    animationController.forward();
    Future.delayed(
      const Duration(seconds: 3),() {
      GoRouter.of(context).push("/home");
    },
    );

  }

}
