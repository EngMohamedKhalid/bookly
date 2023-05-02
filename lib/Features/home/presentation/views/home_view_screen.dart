import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/Features/home/data/repos/home_repo_imp.dart';
import 'package:bookly/Features/home/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/view_model/featured_books_cubit/featured_books_states.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly/shared/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomeViewScreen extends StatefulWidget {
  const HomeViewScreen({Key? key}) : super(key: key);

  @override
  State<HomeViewScreen> createState() => _HomeViewScreenState();
}

class _HomeViewScreenState extends State<HomeViewScreen> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    logoPath,
                    width: 75.w,
                    height: 16.h,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    GoRouter.of(context).push("/search");
                  },
                  icon: Icon(
                    Icons.search,
                    size: 25.sp,
                  ),
                )

              ],
            ),
            SizedBox(height: 15.h,),
            FeaturedListView(),
            SizedBox(height: 10.h,),
            Text(
              "Best Seller",
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600
              ),
            ),
            SizedBox(height: 10.h,),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      GoRouter.of(context).push("/details");
                    },
                    child: SizedBox(
                      width: double.infinity.w,
                      height: 105.h,
                      child: Row(
                        children: [
                          Image.asset("assets/images/test_Book.png"),
                          SizedBox(width: 5.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Harry Potter\nand The Globet Of Fire",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17.sp
                                ),
                              ),
                              SizedBox(height: 5.w,),
                              Text(
                                "J.k.Roling",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey,
                                    fontSize: 13.sp
                                ),
                              ),
                              SizedBox(height: 5.w,),
                              Row(
                                children: [
                                  Text(
                                    "19.99\$",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17.sp
                                    ),
                                  ),
                                  SizedBox(width: 40.w,),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Text(
                                    "4.8",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17.sp
                                    ),
                                  ),
                                  SizedBox(width: 10.w,),
                                  Text(
                                    "(2390)",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13.sp,
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )


          ],
        ),
      ),
    );
  }
}
