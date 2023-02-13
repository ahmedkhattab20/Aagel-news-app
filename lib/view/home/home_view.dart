
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/view/categoey/category_grid_view.dart';
import 'package:news_app/view/home/category_widget.dart';

class HomeView extends StatefulWidget {
static const String routName ='homeView';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Category> category=[
Category(
  categoryID: 'sports',
  categoryImage: "assets/images/sports.png",
  categoryTitle: "Sports",
  categoryBackground:const Color.fromRGBO(201, 28, 34, 1.0)
) ,
    Category(
        categoryID: 'general',
        categoryImage: "assets/images/Politics.png",
        categoryTitle: "General",
        categoryBackground:const Color.fromRGBO(0, 62, 144, 1.0)
    ) ,
    Category(
        categoryID: 'health',
        categoryImage: "assets/images/health.png",
        categoryTitle: "Health",
        categoryBackground:const Color.fromRGBO(237, 30, 121, 1.0)
    ) ,
    Category(
        categoryID: 'business',
        categoryImage: "assets/images/business.png",
        categoryTitle: "Business",
        categoryBackground:const Color.fromRGBO(207, 126, 72, 1.0)
    ) ,
    Category(
        categoryID: 'technology',
        categoryImage: "assets/images/environment.png",
        categoryTitle: "Technology",
        categoryBackground:const Color.fromRGBO(72, 130, 207, 1.0)
    ) ,
    Category(
        categoryID: 'science',
        categoryImage: "assets/images/science.png",
        categoryTitle: "Science",
        categoryBackground:const Color.fromRGBO(242, 211, 82, 1.0)
    ) ,



  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Image.asset(
            'assets/images/pattern.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),

        Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text(
              selectedCategory==null?'News App':selectedCategory!.categoryTitle,
              style:TextStyle(
              fontWeight:FontWeight.w400,
              fontSize: 22
            ),

            ),
            centerTitle: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(28),bottomRight: Radius.circular(28)),
            ),

          ),
          drawer: Drawer(
            child: Column(
              children: [
                  Container(
                  color: Colors.green,
                  padding: EdgeInsets.symmetric(vertical: 50),
                  width: double.infinity,
                  height: 130,

                  child: Text('News App!',style: TextStyle(
                    color: Colors.white,
                    fontSize:22 ,
                    fontWeight:FontWeight.w400 ,
                  ),
                    textAlign: TextAlign.center,

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        selectedCategory= null;
                        Navigator.pop(context);
                      });
                    },
                    child: Row(
                      children: [
                        Icon(Icons.menu_rounded,size: 25,),
                        SizedBox(width: 7),

                        Text('Categories',style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight:FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.settings,size: 25,),
                      SizedBox(width: 7),

                      Text('Settings',style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight:FontWeight.bold),)
                    ],
                  ),
                )

              ],
            ),

          ),
          body: selectedCategory==null?Container(
            padding: EdgeInsets.all(8),
            color: Colors.transparent,
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Pick your category\nof interest',style: TextStyle(
                  fontSize: 22,
                  fontWeight:FontWeight.bold ,
                  color:Color.fromRGBO(79, 90, 105, 1.0)
                ),),
                Expanded(
                  child: GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                   // scrollDirection: Axis.vertical,
                    //shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
crossAxisCount: 2,
mainAxisSpacing: 10,
crossAxisSpacing: 10,
                      childAspectRatio: 6/7
                    ),

itemBuilder: (context,index)=> CategoryGridview(
  index: index,
  category: category[index],
  OnClickItem: onClick,

),
                    itemCount: category.length,
                  ),
                ),
              ],
            ),

          ):CategoryNewsList(selectedCategory!),
        ),
      ],
    );
  }
  Category? selectedCategory =null;
  void onClick(Category  category){
    setState(() {
      selectedCategory=category;
    });
  }

}


