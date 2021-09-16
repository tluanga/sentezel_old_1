import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sentezel/new_transaction/data/transaction_db.dart';
import 'package:sentezel/settings/ledger_master/data/Ledger_master_db.dart';

import 'package:sentezel/settings/party/data/party_db.dart';
import 'package:sentezel/settings/transactionCategory/data/transaction_category_db.dart';

import 'package:sqflite/sqflite.dart';

class DatabaseService {
  static final DatabaseService instance = DatabaseService._instance();
  static Database? _db;

  DatabaseService._instance();

  static void resetDatabase() {
    _db = null;
  }

  // ------TABLE -1- PROFILE TABLE------------
  static const String userTable = 'user_table';
  String userId = 'id';
  String userFullName = 'fullName';
  String userEmail = 'email';
  String userPin = 'pin';

  //-------TABLE -2---BUSINESS PROFILE--
  static const String businessProfileTable = 'businessProfile_table';
  String businessProfileId = 'id';
  String businessName = 'name';
  String businessAddress = 'address';
  String businessContactNo = 'contactNo';
  String businessType = 'type';

  Future<Database> get db async {
    _db ??= await _initDb();

    return _db!;
  }

  Future<Database> _initDb() async {
    //-------Using application-Directory-----------
    Directory dir = await getApplicationDocumentsDirectory();
    String path = dir.path + '/sentezel.db';

    final dbManager = await openDatabase(
      path,
      version: 1,
      onCreate: _createDb,
    );
    return dbManager;
  }

  void _createDb(Database db, int version) async {
    // Table 1- PROFILE TABLE
    await db.execute(
      '''
      CREATE TABLE 
        $userTable(
            $userId INTEGER PRIMARY KEY AUTOINCREMENT,
            $userFullName TEXT,
            $userEmail TEXT,           
            $userPin INT
             )''',
    );
    // Table 2- BUSINESS PROFILE TABLE
    await db.execute(
      '''
      CREATE TABLE 
        $businessProfileTable(
            $businessProfileId INTEGER PRIMARY KEY AUTOINCREMENT,
            $businessName TEXT,
            $businessAddress TEXT,           
            $businessContactNo INT,
            $businessType String
             )''',
    );

    // Table 3- Ledger Master Table

    injectLedgerMaster(db);
    injectTransactionCategory(db);
    PartyDb.execute(db);
    TransactionDb.execute(db);
  }
}
