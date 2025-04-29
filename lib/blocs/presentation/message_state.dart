// message_state.dart
abstract class MessageState {}

class MessageInitial extends MessageState {}

class MessageLoading extends MessageState {}

class MessageSent extends MessageState {
  final String message; // Single message, not a list
  MessageSent(this.message);
}

class MessageError extends MessageState {
  final String error;
  MessageError(this.error);
}
