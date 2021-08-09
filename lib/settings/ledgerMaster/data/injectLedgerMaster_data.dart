import 'package:sentezel/settings/ledgerMaster/data/ledgerMaster_data.dart';
import 'package:sentezel/settings/ledgerMaster/ledgerMaster_model.dart';
import 'package:sqflite_common/sqlite_api.dart';
import 'package:uuid/uuid.dart';

void injectLedgerMasterData(Database db) async {
  const String ledgerMasterTypeTable = 'transactionType_table';
  print('Inject Transaction Type');
  ledgerMasterData.asMap().forEach(
    (key, value) async {
      await db.insert(
          ledgerMasterTypeTable,
          LedgerMaster(
            id: Uuid().v4(),
            name: value.name,
            type: value.type,
            status: value.status,
          ).toJson());
    },
  );
}