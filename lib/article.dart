import 'package:meta/meta.dart';

class Article {
  final String id;
  final String title;
  final String dateOfCreation;
  final String author;
  final String content;
  final String subject;

  Article({
    @required this.id,
    @required this.title,
    @required this.dateOfCreation,
    @required this.author,
    this.content,
    @required this.subject,
  });
}

enum ArticleType { science, space, medicine, others }

List<Article> articles = [
  Article(
      id: "lsdkjfsldkfj",
      title: "My first meeting!",
      dateOfCreation: "21/01/2019",
      author: "Settani Abderrahman",
      subject: "medicine",
      content:
          "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n'a pas fait que survivre cinq siècles, mais s'est aussi adapté à la bureautique informatique, sans que son contenu n'en soit modifié. Il a été popularisé dans les années 1"),
  Article(
      id: "lsdkjfsdsdffj",
      title: "My second meeting!",
      dateOfCreation: "21/02/2019",
      author: "Aissam Zero",
      subject: "science",
      content:
          "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n'a pas fait que survivre cinq siècles, mais s'est aussi adapté à la bureautique informatique, sans que son contenu n'en soit modifié. Il a été popularisé dans les années 1"),
];
