import 'package:envied/envied.dart';

part 'env.g.dart';
@Envied()
abstract class EnV{

  @EnviedField()
  static String SUPABASE_URL =_EnV.SUPABASE_URL;

  @EnviedField()
  static String SUPABASE_ANON_KEY =_EnV.SUPABASE_ANON_KEY;

  @EnviedField()
  static String SUPABASE_SERVICE_ROLE_KEY =_EnV.SUPABASE_SERVICE_ROLE_KEY;

}