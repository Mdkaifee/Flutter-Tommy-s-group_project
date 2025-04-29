abstract class MessageEvent {}

class SendMessage extends MessageEvent {
  final String message;
  SendMessage(this.message);
}
