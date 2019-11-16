import 'package:articles/article.dart';
import 'package:articles/theme.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';

class AddArticlePage extends StatefulWidget {
  @override
  _AddArticlePageState createState() => _AddArticlePageState();
}

class _AddArticlePageState extends State<AddArticlePage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController authorController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController subjectController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Txt(
          'Add Article',
          style: AppTheme.titleStyle,
        ),
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 32.0,
        ),
      ),
      body: Parent(
        style: ParentStyle()..padding(all: 18.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: titleController,
                  decoration: InputDecoration(
                    labelText: 'Title here',
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: authorController,
                  decoration: InputDecoration(
                    labelText: 'Your Name here',
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: dateController,
                  decoration: InputDecoration(
                    labelText: 'Written at',
                  ),
                ),
                TextFormField(
                  controller: subjectController,
                  decoration: InputDecoration(
                    labelText: 'Subject here',
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: contentController,
                  decoration: InputDecoration(
                    labelText: 'Content here',
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: RaisedButton(
                    child: Text('Add Article'),
                    onPressed: (){
                      setState(() {
                        articles.add(Article(
                          id: "sdkfsdf",
                          title: titleController.text,
                          author: authorController.text,
                          dateOfCreation: dateController.text,
                          subject: subjectController.text,
                          content: contentController.text,
                        ));
                        print(articles);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
