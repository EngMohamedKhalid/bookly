import 'package:bookly/shared/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SearchViewScreen extends StatefulWidget {
  const SearchViewScreen({Key? key}) : super(key: key);

  @override
  State<SearchViewScreen> createState() => _SearchViewScreenState();
}

class _SearchViewScreenState extends State<SearchViewScreen> {

final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 16.w,
          right: 16.w,
          bottom: 15.h
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(logoPath),
              SizedBox(height: 35.h,),
              TextFormField(
                controller: controller,
                style: const TextStyle(
                  color: Colors.black
                ),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Search What You Need",
                  hintStyle: const TextStyle(
                    color: Colors.grey
                  ),
                  border: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    )
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    )
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    )
                  ),
                  suffixIcon: Icon(
                    Icons.search,
                    size: 28.sp,
                    color: Colors.black,
                  )
                ),
              ),
              SizedBox(height: 20.h,),
              Text(
                "Result",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 20.h,),
              Expanded(
                child: ListView.builder(
                  itemBuilder:(context, index) {
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
      ),
    );
  }
}
