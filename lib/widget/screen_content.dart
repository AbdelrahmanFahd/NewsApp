import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/news.dart';
import '../view_model/news_view_model.dart';

class ScreenContent extends StatelessWidget {
  const ScreenContent({required this.type, Key? key}) : super(key: key);
  final String type;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Provider.of<NewsViewModel>(context, listen: false).getData(type),
      builder: (ctx, AsyncSnapshot snapShot) {
        if (snapShot.hasData) {
          News data = snapShot.data;

          return ListView.builder(
            itemCount: data.articles!.length,
            itemBuilder: (ctx, index) {
              return Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 175,
                    child: Image(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            data.articles![index].urlToImage.toString())),
                  ),
                  Text(
                    data.articles![index].title.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  Text(
                    data.articles![index].description.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              );
            },
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
