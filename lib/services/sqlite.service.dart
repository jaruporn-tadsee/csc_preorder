import 'dart:async';
import 'package:flutter/material.dart';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void sqliteDatabase() async {
  final database = openDatabase(
    join(await getDatabasesPath(), 'user_db.db'),
    onCreate: (db, version) {},
  );
}
