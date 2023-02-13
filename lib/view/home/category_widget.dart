import 'package:flutter/material.dart';
import 'package:news_app/Core/api/api_manager.dart';
import 'package:news_app/Core/model/SourcesResponse.dart';
import 'package:news_app/view/categoey/category_grid_view.dart';
import 'package:news_app/view/categoey/category_tabs_widget.dart';

class CategoryNewsList extends StatelessWidget {
Category category;
CategoryNewsList(this.category);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<SourcesResponse>(
        future: ApiManager.getSources(category.categoryID),
        builder:(buildContext,snapshot){
          if(snapshot.connectionState==ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(),);
          }
          if(snapshot.hasError){
            return Center(child: Text('Error Loading Data${
            snapshot.data.toString()
            }'),);

          }if(snapshot.data?.status=='error'){
            return Center(child: Text('Server Error${
                snapshot.data?.toString()
            }'),);

          }

          var sources= snapshot.data?.sources;

          return CategoryTabsWidget(sources!);
        },
      ),


    );
  }
}
