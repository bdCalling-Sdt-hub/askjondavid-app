class Message {
  final String text;
  final bool isSent;
  final String? imageUrl;

  Message({
    required this.text,
    required this.isSent,
    this.imageUrl,
  });
}
