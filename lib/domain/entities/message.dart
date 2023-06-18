enum FromWho {mine,yours}


class Message{

final String text;
final String imageUrl;
final FromWho fromWho;

  Message(this.text, this.imageUrl, this.fromWho);
}