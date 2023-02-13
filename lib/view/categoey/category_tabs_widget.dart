import 'package:flutter/material.dart';
import 'package:news_app/Core/model/Source.dart';
import 'package:news_app/view/categoey/source_tab_item.dart';
import 'package:news_app/view/news/news_list.dart';

class CategoryTabsWidget extends StatefulWidget {
  List<Source> sources;
  CategoryTabsWidget(this.sources);

  @override
  State<CategoryTabsWidget> createState() => _CategoryTabsWidgetState();
}

class _CategoryTabsWidgetState extends State<CategoryTabsWidget> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Container(

      child:
      DefaultTabController(

        length: widget.sources.length,
        child: Column(
          children: [
            SizedBox(height: 10,),
            TabBar(
              onTap: (index){
                setState(() {
                  selectedIndex=index;

                });

              },
                isScrollable: true,
indicatorColor: Colors.transparent,
                tabs: widget.sources.map((source) => SourceTab(
                          source,widget.sources.indexOf(source)==selectedIndex
                        ))
                    .toList()),
            SizedBox(height: 10,),
            Expanded(child: NewsList(widget.sources[selectedIndex]))

          ],
        ),
      ),
    );
  }
}
