import '../models/message_model.dart';

class MessageRepository {
  final List<MessageModel> _messages = [];

  List<MessageModel> getMessages() {
    // Normally this data would come from an API or database
    return _messages;
  }

  void sendMessage(MessageModel message) {
    _messages.add(message);
  }
}
