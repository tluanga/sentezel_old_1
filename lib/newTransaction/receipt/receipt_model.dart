import 'package:sentezel/newTransaction/data/transactionMode_enum.dart';
import 'package:sentezel/settings/ledgerMaster/data/ledgerMaster_model.dart';
import 'package:sentezel/settings/transactionCategory/data/transactionCategory_model.dart';

class Receipt {
  int amount;
  String particular;
  LedgerMaster? debitSideLedger;
  LedgerMaster? creditSideLedger;
  DateTime date;
  TransactionMode mode;
  TransactionCategory? receiptTransactionCategory;
  Receipt({
    required this.amount,
    required this.particular,
    this.debitSideLedger,
    this.creditSideLedger,
    required this.date,
    required this.mode,
    this.receiptTransactionCategory,
  });

  Receipt copyWith({
    int? amount,
    String? particular,
    LedgerMaster? debitSideLedger,
    LedgerMaster? creditSideLedger,
    DateTime? date,
    TransactionMode? mode,
    TransactionCategory? receiptTransactionCategory,
  }) {
    return Receipt(
      amount: amount ?? this.amount,
      particular: particular ?? this.particular,
      debitSideLedger: debitSideLedger ?? this.debitSideLedger,
      creditSideLedger: creditSideLedger ?? this.creditSideLedger,
      date: date ?? this.date,
      mode: mode ?? this.mode,
      receiptTransactionCategory:
          receiptTransactionCategory ?? this.receiptTransactionCategory,
    );
  }
}
