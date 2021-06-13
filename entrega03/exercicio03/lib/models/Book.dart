class Book {
  String id;
  String title;
  String subtitle;
  String authors;
  String publisher;
  String publisherDate;
  String description;
  String language;
  int pageCount;

  Book({
    this.id,
    this.title,
    this.subtitle,
    this.authors,
    this.publisher,
    this.publisherDate,
    this.description,
    this.language,
    this.pageCount,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      authors: json['authors'] as String,
      publisher: json['publisher'] as String,
      publisherDate: json['publisherDate'] as String,
      description: json['description'] as String,
      language: json['language'] as String,
      pageCount: json['pageCount'] as int
    );
  }

  @override
  List<Object> get props => [
        id,
        title,
        subtitle,
        authors,
        publisher,
        publisherDate,
        description,
        language,
        pageCount
      ];
}
