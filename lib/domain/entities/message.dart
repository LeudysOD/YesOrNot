enum FromWho {mine,yours}


class Message{

final String text;
final String imageUrl;
final FromWho fromWho;

  Message({required this.text, required this.imageUrl, required this.fromWho});
}