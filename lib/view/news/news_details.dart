import 'package:flutter/material.dart';
import 'package:news_app/Core/model/News.dart';

class NewsDetails extends StatelessWidget {
  static const String routName = 'news details';
  @override
  Widget build(BuildContext context) {
    News news = ModalRoute.of(context)!.settings.arguments as News;
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
            title: Text('News Details'),
            centerTitle: true,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )),
          ),
          body: Column(
            children: [

              ClipRRect(
                borderRadius: BorderRadius.circular(8),

                child: Image.network(
                  news.urlToImage ?? '',
                  width: double.infinity,
                  height: 200,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
