import 'package:flutter_bloc/flutter_bloc.dart';
import 'message_event.dart';
import 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc() : super(MessageInitial());

  @override
  Stream<MessageState> mapEventToState(MessageEvent event) async* {
    if (event is SendMessage) {
      yield MessageLoading();
      try {
        // Simulate message sending
        await Future.delayed(const Duration(seconds: 1));
        yield MessageSent(event.message);
      } catch (e) {
        yield MessageError('Failed to send message');
      }
    }
  }
}
