import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/cubit/app_cubits.dart';
import 'package:project1/widgets/app_larg_text.dart';
import 'package:project1/widgets/app_text.dart';
import 'package:project1/misc/colors.dart' ;
import 'package:project1/widgets/responsive_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/post.dart';
import '../widgets/post_object.dart';


class Most_liked extends StatefulWidget {
  const Most_liked({super.key});

  @override
  State<Most_liked> createState() => _Most_likedState();
}

class _Most_likedState extends State<Most_liked> {
  // var images= {
  //   'welcome-one.png' :[2323,9] ,
  //   'welcome-two.png' :[1400,9],
  //   'welcome-three.png': [10,9],
  // };
  // Post_object(this.Comments_num, this.desc, this.image_link, this.account, this.location, this.isLiked,  this.like_num, this.day, this.date);

  List<Post_object> Post_list = [

    // date , likenum , comments_num , image_link , desc ,location ,  account , isliked
    Post_object(
        'Last houre',
        300 ,
        23,
        'image3.jpg',
        'perspiciatis unde omnis iste nat us error sitvolup tatem accusan  perspiciatis unde omnis iste nat us error sitvolup tatem accusan Sed ut perspiciatis unde omnis iste nat us error sitvolup',''
        'Red Sea mall, Jeddah, KSA',
        '@rawanJO' ,
        false
    ),
    Post_object(
        'Last Minute',
        300 ,
        23,
        'image4.jpg',
        'perspiciatis unde omnis iste nat us error sitvolup tatem accusan  perspiciatis unde omnis iste nat us error sitvolup tatem accusan Sed ut perspiciatis unde omnis iste nat us error sitvolup',''
        'Jarir, Jeddah, KSA',
        '@ayman06' ,
        true
    ),

    Post_object(
        'Yesturday at 7:23 am',
        300 ,
        23,
        'image3.jpg',
        'perspiciatis unde omnis iste nat us error sitvolup tatem accusan  perspiciatis unde omnis iste nat us error sitvolup tatem accusan Sed ut perspiciatis unde omnis iste nat us error sitvolup',''
        'Jarir, Jeddah, KSA',
        '@ayman06' ,
        true
    ),
    Post_object(
        'Jul 12 at 4:23 pm',
        300 ,
        23,
        'image3.jpg',
        'perspiciatis unde omnis iste nat us error sitvolup tatem accusan  perspiciatis unde omnis iste nat us error sitvolup tatem accusan Sed ut perspiciatis unde omnis iste nat us error sitvolup',''
        'Jarir, Jeddah, KSA',
        '@ayman06' ,
        true
    ),
    // Post_object(
    //     300 ,
    //     23,
    //     'perspiciatis unde omnis iste nat us error sitvolup tatem accusan  perspiciatis unde omnis iste nat us error sitvolup tatem accusan Sed ut perspiciatis unde omnis iste nat us error sitvolup',''
    //     'image3.jpg',
    //     'dfsdfdf',
    //     'dsfsdfsdf' ,
    //     false,
    //     'friday',
    //     'dsfsdfs'
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: Post_list.length,
          itemBuilder:(BuildContext context, index){

            return Post(
                image_link: Post_list[index].image_link,
                like_num: Post_list[index].like_num,
                Comments_num: Post_list[index].Comments_num,
                desc: Post_list[index].desc,
                date:  Post_list[index].date,
                account:  Post_list[index].account ,
                location:  Post_list[index].location,
                // day:  Post_list[index].day,
                isLiked:  Post_list[index].isLiked,

            );
    }),
    );
  }
}
