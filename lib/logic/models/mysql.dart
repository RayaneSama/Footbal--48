// ignore_for_file: unnecessary_new

import 'package:mysql1/mysql1.dart';

class Mysql {
  static String host = "localhost",
      user = "root",
      password = "",
      db = "pfe_final_4";
  static int port = 3306;
  Mysql();

  Future<MySqlConnection> getConnection() async {
    var settings = new ConnectionSettings(
        host: host, port: port, user: user, password: "", db: db);
    return await MySqlConnection.connect(settings);
  }
}
