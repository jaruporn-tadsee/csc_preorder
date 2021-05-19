import 'dart:async';
import 'package:flutter/material.dart';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void SqliteDatabase()  async {
  final database = openDatabase(
    join(await getDatabasesPath(), client)
  )
}