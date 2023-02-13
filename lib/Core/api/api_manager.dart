import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/Core/model/NewsResponse.dart';
import 'package:news_app/Core/model/SourcesResponse.dart';

class ApiManager {
  static const String baseUrl = 'newsapi.org';
  static const String apiKey = 'e243e742b6114d69ac1393ccb41a9687';

  static Future<SourcesResponse> getSources(String categoryID) async {
    //https://newsapi.org   /v2/top-headlines/sources  ?apiKey=&category=sports
    var url = Uri.https(baseUrl, '/v2/top-headlines/sources',
        {'apiKey': apiKey,
          'category': categoryID});
    var response = await http.get(url);
    // var bodyString=response.body;
    // var json=jsonDecode(bodyString);
    return SourcesResponse.fromJson(jsonDecode(response.body));
  }
  //https://newsapi.org/v2/everything?
  // q=apple&from=2023-01-27&to=2023-01-27&sortBy=popularity&apiKey=e243e742b6114d69ac1393ccb41a9687&
  // sources=bbc-sport
  static Future<NewsResponse> getNews(String sourceId)async{
    var url=Uri.https(baseUrl,'v2/everything',{
      'apiKey':apiKey,
      'sources':sourceId
    });

  var response= await http.get(url);
  return NewsResponse.fromJson(jsonDecode(response.body));
  }

}
