import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            articleModel.image ??
                'https://th.bing.com/th/id/OIP.QVJu84EJyE9TGO493M3YmQHaCu?w=333&h=129&c=7&r=0&o=5&dpr=1.4&pid=1.7',
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          // if the subtitle ==null then put the default value (empty String )
          articleModel.subTitle ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:news_app_ui_setup/models/article_model.dart';
// import 'package:news_app_ui_setup/views/webview_page.dart';

// class NewsTile extends StatelessWidget {
//   const NewsTile({super.key, required this.articleModel});
//   final ArticleModel articleModel;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         if (articleModel.url != null) {
//           Navigator.of(context).push(MaterialPageRoute(builder: (context) {
//             return WebViewPage(url: articleModel.url!);
//           }));
//         }
//       },
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(6),
//             child: Image.network(
//               articleModel.image ??
//                   'https://th.bing.com/th/id/OIP.QVJu84EJyE9TGO493M3YmQHaCu?w=333&h=129&c=7&r=0&o=5&dpr=1.4&pid=1.7',
//               fit: BoxFit.cover,
//               height: 200,
//               width: double.infinity,
//             ),
//           ),
//           const SizedBox(
//             height: 12,
//           ),
//           Text(
//             articleModel.title,
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//             style: const TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//             ),
//           ),
//           Text(
//             // if the subtitle ==null then put the default value (empty String )
//             articleModel.subTitle ?? '',
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//             style: const TextStyle(
//               fontSize: 16,
//               color: Colors.grey,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
