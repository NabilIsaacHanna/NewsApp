import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsService {
  final Dio dio; // object from Dio

  NewsService(this.dio);
  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=4b92f1de9e8949fe93446da061350e70&category=$category');
      // create object from Response to recieve the value comes from the get request
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles']; //first solution
      // List<Map<String,dynamic>> articles = jsonData['articles']as  List<Map<String, dynamic>>; -->second solution

      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        // object from ArticleModel
        ArticleModel articleModel = ArticleModel(
            image: article['urlToImage'],
            subTitle: article['description'],
            title: article['title']);
        // add articleModel to articlelist
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
// import 'package:dio/dio.dart';
// import 'package:news_app_ui_setup/models/article_model.dart';

// class NewsService {
//   final Dio dio; // object from Dio

//   NewsService(this.dio);
//   Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
//     try {
//       var response = await dio.get(
//           'https://newsapi.org/v2/top-headlines?country=eg&apiKey=4b92f1de9e8949fe93446da061350e70&category=$category');
//       // create object from Response to receive the value comes from the get request
//       Map<String, dynamic> jsonData = response.data;
//       List<dynamic> articles = jsonData['articles']; //first solution

//       List<ArticleModel> articlesList = [];
//       for (var article in articles) {
//         // object from ArticleModel
//         ArticleModel articleModel = ArticleModel(
//             image: article['urlToImage'],
//             subTitle: article['description'],
//             title: article['title'],
//             url: article['url']); // Add this line
//         // add articleModel to articlelist
//         articlesList.add(articleModel);
//       }
//       return articlesList;
//     } catch (e) {
//       return [];
//     }
//   }
// }
