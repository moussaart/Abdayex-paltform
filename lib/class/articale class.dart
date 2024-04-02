import 'dart:convert';
import 'dart:io';

class Article {
  int _id;
  String _teacherName;
  String _grade;
  String _level;
  String _date;
  String _content;
  String _image;
  String _pdf;

  Article(
    this._id,
    this._teacherName,
    this._grade,
    this._level,
    this._date,
    this._content,
    this._image,
    this._pdf,
  );

  // Getters
  int get id => _id;
  String get teacherName => _teacherName;
  String get grade => _grade;
  String get level => _level;
  String get date => _date;
  String get content => _content;
  String get image => _image;
  String get pdf => _pdf;

  // Setters
  set id(int value) => _id = value;
  set teacherName(String value) => _teacherName = value;
  set grade(String value) => _grade = value;
  set level(String value) => _level = value;
  set date(String value) => _date = value;
  set content(String value) => _content = value;
  set image(String value) => _image = value;
  set pdf(String value) => _pdf = value;

  factory Article.generateSampleArticle(int index) {
    return Article(
      index + 1,
      "Teacher ${index + 1}",
      "Grade ${(index + 1) % 5}",
      "Level ${(index + 1) % 3}",
      "2024-02-${(index + 1) < 10 ? '0${index + 1}' : '${index + 1}'}",
      '''   En mars 20002, dans le cadre des activités de la société Bomis, dont il est l'actionnaire majoritaire3, Jimmy Wales met en ligne l'encyclopédie Nupedia4, dont le contenu est placé sous une licence Nupedia Open Content qui permet à Bomis de rester détenteur du copyright5. Larry Sanger est engagé dans cette société comme rédacteur en chef. Comme Nupedia fonctionne avec un comité scientifique, la progression du nombre d'articles est très lente6. Le 2 janvier 2001, Larry Sanger discute avec le programmeur Ben Kovitz, qui lui explique le concept du wiki. Vu la frustration occasionnée par la lenteur des progrès de Nupedia, Larry Sanger propose à Jimmy Wales de créer un wiki sous licence publique générale GNU afin d'accélérer le développement des articles, ce qui aboutit au lancement formel de Wikipédia le 15 janvier 20012,7.

Le nom Wikipédia est un mot-valise issu de la fusion de deux termes : wiki, type de site Web collaboratif (d'après le mot hawaïen wikiwiki qui signifie « rapide »8), se référant au fait que l'encyclopédie a toujours vocation à s'améliorer rapidement et à être constamment active du fait de son mode de fonctionnement, et -pédia, dérivé du mot grec παιδεία, paideia, « instruction », « éducation ». Ce nouveau projet devait servir à fournir du contenu textuel selon une méthode plus souple, permettant ensuite éventuellement d'alimenter Nupedia, après un passage par le filtre d'un comité d'experts.


Jimmy Wales, cofondateur de Wikipédia.
La version française de Wikipédia est officiellement créée le 23 mars 2001. Elle est la première version de Wikipédia dans une langue autre que l'anglais, suivie par les versions en allemand et en catalan3. À partir de ce moment, Larry Sanger travaille parallèlement sur Nupedia et Wikipédia. Il participe à l'élaboration de la plupart des règles de fonctionnement de cette dernière3. En février 2002, la rétribution de son travail pour Nupedia et Wikipédia est supprimée du budget alloué par Bomis, en conséquence de quoi il démissionne officiellement le 1er mars 2002 de ses fonctions sur les deux projetsNote 1. En 2003, la progression de Nupedia stagne, alors que Wikipédia se développe très rapidement. Le 26 septembre 2003, Nupedia est définitivement fermée et son contenu intégré à Wikipédia, qui poursuit son expansion. Selon Larry Sanger, Nupedia a échoué à cause d'une chaîne éditoriale trop lourde et de la difficulté à trouver des rédacteurs bénévoles3.
''',
      "assets/home/test.png",
      "pdf_url_${index + 1}.pdf",
    );
  }

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      json['_id'],
      json['_teacherName'],
      json['_grade'],
      json['_level'],
      json['_date'],
      json['_content'],
      json['_image'],
      json['_pdf'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': _id,
      '_teacherName': _teacherName,
      '_grade': _grade,
      '_level': _level,
      '_date': _date,
      '_content': _content,
      '_image': _image,
      '_pdf': _pdf,
    };
  }
}
