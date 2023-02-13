import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryGridview extends StatelessWidget {
  Category category;
  int index;
  Function OnClickItem;





  CategoryGridview({required this.category, required this.index,required this.OnClickItem});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() {
        OnClickItem(category);
      },
      child: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: category.categoryBackground,
          borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(20),
          topRight: const Radius.circular(20),
          bottomRight: Radius.circular(index%2== 0 ? 0 : 25) ,
          bottomLeft:  Radius.circular(index %2 == 0 ? 25: 0))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(category.categoryImage),
            Text(
              category.categoryTitle,
              style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class Category {
  String categoryID;
  String categoryImage;
  String categoryTitle;
  Color categoryBackground;
  Category(
      {
        required this.categoryID,
        required this.categoryImage,
        required this.categoryTitle,
        required this.categoryBackground});
}
