import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DetailViewScreen extends StatelessWidget {
  const DetailViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 30.h),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed:(){
                      GoRouter.of(context).pop();
                    },
                    icon: Icon(
                      Icons.close,
                      size: 25.sp,
                    ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 25.sp,
                  ),
                )

              ],
            ),
            SizedBox(height: 15.h,),
            Image.asset(
                "assets/images/test_Book.png",
              width: 162.w,
              height: 234.h,
            ),
            SizedBox(height: 10.h,),
            Text(
              "The Jungle Book",
              style: TextStyle(
                fontSize: 30.sp,
              ),
            ),
            SizedBox(height: 3.h,),
            Text(
              "Rudyard Kipling",
              style: TextStyle(
                fontSize: 18.sp,
                color: Colors.grey
              ),
            ),
            SizedBox(height: 3.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150.w,
                  height: 50.h,
                  alignment: Alignment.center,
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.r),
                      bottomLeft: Radius.circular(16.r)
                    )
                  ),
                  child:Text(
                    "19.99\$",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black
                    ),
                  ),
                ),
                Container(
                  width: 150.w,
                  height: 50.h,
                  alignment: Alignment.center,
                  decoration:  BoxDecoration(
                    color: const Color(0xffEF8262),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16.r),
                      bottomRight: Radius.circular(16.r)
                    )
                  ),
                  child:Text(
                    "Free Preview",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "You Can also Like",
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    width: 70.w,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/test_Book.png")
                        )
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
