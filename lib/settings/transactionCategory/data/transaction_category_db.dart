import 'package:sentezel/settings/transactionCategory/data/transaction_category_data.dart';
import 'package:sentezel/settings/transactionCategory/data/transaction_category_model.dart';
import 'package:sentezel/settings/transactionCategory/transaction_category_config.dart';
import 'package:sqflite_common/sqlite_api.dart';

class TransactionCategoryDb {}

void injectTransactionCategory(Database db) async {
  await db.execute(
    '''
    CREATE TABLE
      ${TransactionCategoryConfig.dbName}(
       id INTEGER PRIMARY KEY AUTOINCREMENT,
       name TEXT,      
       description TEXT,
       transactionType TEXT,
       debitSideLedger INT,
       creditSideLedger INT,
       status TEXT
  )''',
  );
  //--Injecting Data---
  transactionTypeData.asMap().forEach((key, value) async {
    final mapData = TransactionCategory(
      id: value.id,
      name: value.name,
      description: value.description,
      transactionType: value.transactionType,
      debitSideLedger: value.debitSideLedger,
      creditSideLedger: value.creditSideLedger,
      status: value.status,
    ).toJson();

    await db.insert(
      TransactionCategoryConfig.dbName,
      mapData,
    );
  });
}


//  transactionTypeData.asMap().forEach((key, value) async {
//     print('status is ${value.status}');
//     final mapData = TransactionCategory(
//       id: value.id,
//       name: value.name,
//       description: value.description,
//       transactionType: value.transactionType,
//       debitSideLedger: value.debitSideLedger,
//       creditSideLedger: value.creditSideLedger,
//       status: value.status,
//     ).toMap();
//     print('--The value of json is--');
//     await db.insert(
//       TransactionCategoryConfig.dbName,
//       mapData,
//     );
//   });