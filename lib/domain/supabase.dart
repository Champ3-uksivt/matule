import 'package:get_it/get_it.dart';
import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Supabase_Init {
  void init() async {
    // Инициализация supabase
    var supabaseUrl = "https://ysrmuxqhyzttdssixnei.supabase.co";
    var anonKey =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inlzcm11eHFoeXp0dGRzc2l4bmVpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzg2NzA2NzEsImV4cCI6MjA1NDI0NjY3MX0.beXgx7Z5RoM_P4pED20HWWEcBuR0wZFhn_7_I3EQxH4";
    var supa = await Supabase.initialize(url: supabaseUrl, anonKey: anonKey);
  }
}
