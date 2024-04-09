import 'package:dart_frog/dart_frog.dart';

import '../main.dart';
import '../src/repositories /message_repository.dart';

Handler middleware(Handler handler) {
  return handler.use(requestLogger()).use(
        provider<MessageRepository>((_) => messageRepository),
      );
}