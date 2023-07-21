class Post_object {
  final int? like_num;
  final int? Comments_num;
  final String? desc ;
  final String? date;
  final String? image_link;

  final String? account;
  // final String? day;

  final String? location;
  final bool? isLiked;

// date , likenum , comments_num , image_link , desc ,location ,  account , isliked
  Post_object(   this.date , this.like_num, this.Comments_num, this.image_link,this.desc, this.location, this.account, this.isLiked );
}