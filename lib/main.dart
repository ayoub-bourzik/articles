import 'package:articles/article.dart';
import 'package:articles/router.dart';
import 'package:articles/theme.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Router.generateRoute,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Txt(
          'Mes Articles',
          style: AppTheme.titleStyle,
        ),
        backgroundColor: Colors.white,
      ),
      body: MyArticlesWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.of(context).pushNamed('/add'),
      ),
    );
  }
}

class MyArticlesWidget extends StatefulWidget {
  @override
  _MyArticlesWidgetState createState() => _MyArticlesWidgetState();
}

class _MyArticlesWidgetState extends State<MyArticlesWidget> {
  List<Article> articlesList = articles;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ArticleCard(
            article: articlesList[index],
          );
        },
        itemCount: articlesList.length,
      ),
    );
  }
}

class ArticleCard extends StatefulWidget {
  final Article article;

  ArticleCard({this.article});

  @override
  _ArticleCardState createState() => _ArticleCardState(article);
}

class _ArticleCardState extends State<ArticleCard> {
  Article article;

  _ArticleCardState(this.article);

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: ParentStyle()..padding(all: 12.0),
      child: Card(
        elevation: 5.0,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Txt(
                  article.title,
                  style: TxtStyle()
                    ..bold()
                    ..fontSize(18.0)
                    ..padding(all: 8.0),
                ),
                Txt(
                  article.subject,
                  style: TxtStyle()
                    ..bold()
                    ..padding(all: 8.0)
                    ..fontSize(14.0),
                )
              ],
            ),
            Txt(
              article.content.substring(0, 20) + '...',
              style: TxtStyle()
                ..padding(all: 8.0)
                ..fontSize(12.0),
            )
          ],
        ),
      ),
    );
  }
}
