import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/cubit/app_cubits.dart';
import 'package:project1/widgets/app_larg_text.dart';
import 'package:project1/widgets/app_text.dart';
import 'package:project1/misc/colors.dart' ;
import 'package:project1/widgets/responsive_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/post.dart';

class Local_list extends StatelessWidget {
  List images= [
    'welcome-one.png',
    'welcome-two.png',
    'welcome-three.png',
    'image3.jpg',
    'image4.jpg',

  ];
   Local_list({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body:PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_,index){
            return Post(image_link: images[index], like_num: 2400, Comments_num: 300, desc: 'perspiciatis unde omnis iste nat us error sitvolup tatem accusan  perspiciatis unde omnis iste nat us error sitvolup tatem accusan Sed ut perspiciatis unde omnis iste nat us error sitvolup', date: 'JUL 7 at 9:13a.m', account: '@rawanJo', location: 'Jarir Library, Jeddah, KSA');
            // return Post(image_link: images[index], like_num: 2400, Comments_num: 300, desc: 'perspiciatis unde omnis iste nat us error sitvolup tatem accusan  perspiciatis unde omnis iste nat us error sitvolup tatem accusan Sed ut perspiciatis unde omnis iste nat us error sitvolup', date: 'JUL 7 at 9:13a.m', account: '@rawanJo', location: 'Jarir Library, Jeddah, KSA', day: 'FRIDAY');

            return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/"+images[index]
                      ),
                      fit: BoxFit.cover
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 150, left: 20 , right:20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLargeText(text: "Trips"),
                          AppText(text: "mountait" , size: 30),
                          SizedBox(height:20),
                          Container(
                            width:250,
                            child: AppText(
                              text:"Mountaindd hikes give you an indfs sdgffdg dfgdfgd sddd erer wsewe ere rtest ",
                              color:AppColors.textColor2,
                              size:14,
                            ),



                          ),
                          SizedBox(height:40),
                          GestureDetector(
                            onTap: (){
                              BlocProvider.of<AppCubits>(context).getData();
                            },
                            child: Container(
                                width:200,
                                child: ResponsiveButton(
                                  width:120,
                                )),
                          ),
                        ],
                      ),
                      Column(
                        children: List.generate(3, (indexDots) {
                          return Container(
                            margin: const EdgeInsets.only(bottom:2),
                            width:8,
                            height:index==indexDots?25:8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index==indexDots?AppColors.mainColor:AppColors.mainColor.withOpacity(.3),
                            ),
                          );
                        }),
                      )
                    ],
                  ),
                )
            );

          }),
    );
  }
}
