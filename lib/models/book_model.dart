class BookModel {
  final String name;
  final String author;
  final String imageUrl;
  final String pdfUrl;
  final String contentUrl;
  final List<String> abstract;

  BookModel({
    this.name,
    this.author,
    this.imageUrl,
    this.pdfUrl,
    this.contentUrl,
    this.abstract,
  });

  BookModel.fromData(Map<String, dynamic> data)
      : name = data['name'],
        author = data['author'],
        imageUrl = data['image_url'],
        pdfUrl = data['pdf_url'],
        contentUrl = data['content_url'],
        abstract = List.from(data['abstract']);
}
