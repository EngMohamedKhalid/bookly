import 'package:bookly/Features/home/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/view_model/featured_books_cubit/featured_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
      builder: (context, state) {
        if(state is FeaturedBooksSuccessState){
          return SizedBox(
            height: 224.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  width: 150.w,
                  height: 224.h,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/test_Book.png")
                      )
                  ),
                );
              },
            ),
          );
        }else if(state is FeaturedBooksErrorState){
          return const Center(
            child: Text("Error",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white
              ),
            ),
          );
        }else{
         return const Center(child: CircularProgressIndicator());
        }

      },
    );
  }
}
