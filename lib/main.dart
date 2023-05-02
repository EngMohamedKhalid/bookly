import 'package:bookly/Features/home/data/repos/home_repo_imp.dart';
import 'package:bookly/Features/home/presentation/view_model/best_seller_cubit/best_seller_cubit.dart';
import 'package:bookly/Features/home/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/shared/bloc_observer.dart';
import 'package:bookly/shared/constant.dart';
import 'package:bookly/shared/network/dio_api_service.dart';
import 'package:bookly/shared/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  final dio = DioHelper.init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider (create: (BuildContext context) => FeaturedBooksCubit(
          HomeRepoImp()
        ),
        ),
        BlocProvider (create: (BuildContext context) => BestSellerBooksCubit(
          HomeRepoImp()
        ),)
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return child!;
        },
        child: MaterialApp.router(
          routerConfig: AppRoutes.route,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: primaryColor,
              appBarTheme: const AppBarTheme(
                  backgroundColor: primaryColor,
                  elevation: 0
              )
          ),
          darkTheme: ThemeData.dark(),
        ),
      ),
    );
  }
}

