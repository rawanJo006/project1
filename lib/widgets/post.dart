import 'package:project1/misc/colors.dart';
import 'package:project1/widgets/app_text.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final int? like_num;
  final int? Comments_num;
  final String? desc ;
  final String? date;
  final String? image_link;

  final String? account;
  // final String? day;

  final String? location;
  final bool? isLiked;

  const Post({
    super.key,
    required this.image_link,
    required this.like_num,
    required this.Comments_num,
    required this.desc,
    required this.date,
    required this.account,
    required this.location,
    // required this.day,
    this.isLiked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  "assets/images/"+image_link.toString()
              ),
              fit: BoxFit.cover
          ),

        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  // begin: Alignment.bottomCenter,
                  stops: [.1, .2 ,.3,.4],
                  colors: [
                    Colors.black.withOpacity(.95),
                    Colors.black.withOpacity(.6),
                    Colors.black.withOpacity(.2),
                    Colors.black.withOpacity(.1),
                  ]
              )
          ),
          // margin: const EdgeInsets.only(top: 150, left: 20 , right:20),
          child: Padding(
            padding: const EdgeInsets.only(top:50.0 , bottom:10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Icon(
                            isLiked == false ?  Icons.favorite_border : Icons.favorite ,
                            color:Colors.white,
                            // size: 20
                          ),
                          SizedBox(height: 8,),
                          Icon(
                            Icons.share,
                            color:Colors.white,
                            // size: 20
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  height:150,
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Text(
                          //     day.toString(),
                          //     style:TextStyle(
                          //       color: Colors.white,
                          //       fontSize: 22,
                          //     )
                          // ),
                          SizedBox(height:5),
                          Text(
                              date.toString(),
                              style:TextStyle(
                                color: Colors.white,
                                fontSize: 16,

                              )
                          ),
                          SizedBox(height:5),
                          Row(
                            children: [
                              Icon(
                                  Icons.location_on,
                                  color:Colors.white,
                                  size: 14
                              ),
                              SizedBox(width:5),
                              Text(
                                  location.toString(),
                                  style:TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,

                                  )
                              )
                            ],
                          ),
                          SizedBox(height:2),
                          Text(
                              account.toString(),
                              style:TextStyle(
                                color: Colors.grey,
                                fontSize: 12,

                              )
                          ),
                          SizedBox(height:10),
                          Container(
                            width: MediaQuery.of(context).size.width - 70,
                            child: Text(
                                  desc.toString(),
                                style:TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,

                                )
                            ),
                          )

                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.thumb_up_alt_outlined, // number of likes
                            color: Colors.white, ),
                          SizedBox(height:4),
                          Text(
                              like_num.toString() ,
                              style:TextStyle(
                                  color: Colors.white
                              )
                          ),
                          SizedBox(height:15),
                          Icon(
                            Icons.message_outlined,
                            color: Colors.white, ),
                          SizedBox(height:4),
                          Text(
                              Comments_num.toString(),
                              style:TextStyle(
                                  color: Colors.white
                              )
                          ),
                        ],
                      )

                    ],
                  ),
                ),

              ],
            ),
          ),
        )
    );
  }
}
