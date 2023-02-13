import 'package:news_app/Core/model/News.dart';

/// status : "ok"
/// totalResults : 5
/// articles : [{"source":{"id":"bbc-news","name":"BBC News"},"author":"https://www.facebook.com/bbcnews","title":"Cyber-crime gangs' earnings slide as victims refuse to pay","description":"New research points to a positive trend with ransomware gangs' profits dropping 40% in 2022.","url":"https://www.bbc.co.uk/news/technology-64323980","urlToImage":"https://ichef.bbci.co.uk/news/1024/branded_news/0B59/production/_119550920_gettyimages-1079012962.jpg","publishedAt":"2023-01-19T13:07:47Z","content":"Cyber-crime gangs have had a 40% drop in earnings as victims are refusing to pay ransoms, researchers say.\r\nCryptocurrency experts at Chainalysis say ransomware groups extorted at least $457m (£370m)… [+4219 chars]"},{"source":{"id":"bbc-news","name":"BBC News"},"author":"https://www.facebook.com/bbcnews","title":"Cryptocurrency: UK Treasury considers plan for digital pound","description":"The economic secretary to the Treasury says the UK is committed to becoming a world crypto hub.","url":"https://www.bbc.co.uk/news/technology-64224950","urlToImage":"https://ichef.bbci.co.uk/news/1024/branded_news/8E49/production/_128252463_gettyimages-1358389594.jpg","publishedAt":"2023-01-10T19:47:06Z","content":"The government is considering introducing a national cryptocurrency or \"digital pound\", the economic secretary to the Treasury has told MPs.\r\nThe UK was committed to becoming a world crypto hub, Andr… [+2463 chars]"},{"source":{"id":"bbc-news","name":"BBC News"},"author":"https://www.facebook.com/bbcnews","title":"Crypto lender Genesis files for bankruptcy","description":"The cryptocurrency lender’s collapse is the latest blow to the sector.","url":"https://www.bbc.co.uk/news/technology-64343377","urlToImage":"https://ichef.bbci.co.uk/news/1024/branded_news/A2CB/production/_128357614_gettyimages-1245262205.jpg","publishedAt":"2023-01-20T09:10:21Z","content":"Cryptocurrency lender Genesis has filed for bankruptcy.\r\nThe firm had recently been charged by US regulators Securities and Exchange Commission (SEC) with illegally selling crypto.\r\nIt is part of the… [+2784 chars]"},{"source":{"id":"bbc-news","name":"BBC News"},"author":"https://www.facebook.com/bbcnews","title":"New FTX boss John Ray could bring back bankrupt crypto firm","description":"John Ray said he may restart the platform to try to recover \"value\" for customers who lost money.","url":"https://www.bbc.co.uk/news/technology-64338010","urlToImage":"https://ichef.bbci.co.uk/news/1024/branded_news/052D/production/_128352310_gettyimages-1246330082.jpg","publishedAt":"2023-01-19T18:36:35Z","content":"Bankrupt crypto exchange FTX's new chief executive, John Ray, is looking into the possibility of reviving the platform.\r\nHe told the Wall Street Journal (WSJ) that he has set up a taskforce to explor… [+2198 chars]"},{"source":{"id":"bbc-news","name":"BBC News"},"author":"https://www.facebook.com/bbcnews","title":"Royal Mail hit by Russia-linked ransomware attack","description":"The group is working \"around the clock\" to resolve severe disruption to overseas deliveries.","url":"https://www.bbc.co.uk/news/business-64244121","urlToImage":"https://ichef.bbci.co.uk/news/1024/branded_news/7736/production/_128281503_8b86f99c-37d2-4d5f-93ef-4bef304e4664.jpg","publishedAt":"2023-01-12T21:26:43Z","content":"Severe disruption to Royal Mail's overseas deliveries has been caused by a Russia-linked ransomware attack, the BBC has been told.\r\nThe attack has affected the computer systems Royal Mail uses to des… [+2847 chars]"}]

class NewsResponse {
  NewsResponse({
      this.status, 
      this.totalResults, 
      this.newsList,});

  NewsResponse.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    code = json['code'];

    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      newsList = [];
      json['articles'].forEach((v) {
        newsList?.add(News.fromJson(v));
      });
    }
  }
  String? status;
  String? message;
  String? code;

  num? totalResults;
  List<News>? newsList;


NewsResponse copyWith({  String? status,
  num? totalResults,
  List<News>? articles,
}) => NewsResponse(  status: status ?? this.status,
  totalResults: totalResults ?? this.totalResults,
  newsList: articles ?? this.newsList,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;

    map['totalResults'] = totalResults;
    if (newsList != null) {
      map['articles'] = newsList?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// source : {"id":"bbc-news","name":"BBC News"}
/// author : "https://www.facebook.com/bbcnews"
/// title : "Cyber-crime gangs' earnings slide as victims refuse to pay"
/// description : "New research points to a positive trend with ransomware gangs' profits dropping 40% in 2022."
/// url : "https://www.bbc.co.uk/news/technology-64323980"
/// urlToImage : "https://ichef.bbci.co.uk/news/1024/branded_news/0B59/production/_119550920_gettyimages-1079012962.jpg"
/// publishedAt : "2023-01-19T13:07:47Z"
/// content : "Cyber-crime gangs have had a 40% drop in earnings as victims are refusing to pay ransoms, researchers say.\r\nCryptocurrency experts at Chainalysis say ransomware groups extorted at least $457m (£370m)… [+4219 chars]"


