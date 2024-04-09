import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:supabase/supabase.dart';

import 'src/env/env.dart';
import 'src/repositories /message_repository.dart';

late MessageRepository messageRepository;

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  final dbClient = SupabaseClient(
    EnV.SUPABASE_URL,
    EnV.SUPABASE_SERVICE_ROLE_KEY, // Use it only in the server, never on the client side.
  );

  messageRepository = MessageRepository(dbClient: dbClient);

  return serve(handler, ip, port);
}