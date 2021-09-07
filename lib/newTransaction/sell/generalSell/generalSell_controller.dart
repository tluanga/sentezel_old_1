import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sentezel/newTransaction/common/helper/getTransactionModeLedger_helper.dart';
import 'package:sentezel/newTransaction/data/transactionMode_enum.dart';
import 'package:sentezel/newTransaction/data/transaction_model.dart';
import 'package:sentezel/newTransaction/data/transaction_repository.dart';
import 'package:sentezel/newTransaction/sell/generalSell/model/generalSell_model.dart';
import 'package:sentezel/settings/ledgerMaster/data/ledgerMasterId_index.dart';

import 'package:sentezel/settings/ledgerMaster/ledgerMaster_repository.dart';
import 'package:sentezel/settings/transactionCategory/data/transactionCategory_index.dart';
import 'package:sentezel/settings/transactionCategory/data/transactionCategory_model.dart';
import 'package:sentezel/settings/transactionCategory/transactionCategory_repository.dart';

final generalSellControllerProvider =
    StateNotifierProvider<GeneralSellController, AsyncValue<GeneralSell>>(
        (ref) => GeneralSellController(ref.read)..loadData());

class GeneralSellController extends StateNotifier<AsyncValue<GeneralSell>> {
  final Reader _read;

  GeneralSellController(this._read) : super(AsyncValue.loading());

  loadData() async {
    TransactionCategory _category =
        await _read(transactionCategoryRepositoryProvider)
            .getItem(id: TransactionCategoryIndex.SaleOfGoods);
    final _creditSideLedger = await _read(ledgerMasterRepositoryProvider)
        .getItem(id: _category.creditSideLedger);

    state = AsyncData(GeneralSell(
      category: _category,
      errorMessages: [],
      date: DateTime.now(),
      creditSideLedger: _creditSideLedger,
      particular: _category.name,
    ));
    print(state);
  }

  //--------------SET STATE-------------
  setState(payload) {
    GeneralSell _newState = payload;
    state = AsyncData(_newState);
  }

  validate() {
    final stateData = state.data!.value;

    //---------Validation Part-----------
    List<String> _errorMessage = [];

    if (stateData.amount <= 0) {
      _errorMessage.add('Amount can not be less than equalto Zero');
    }

    if (stateData.mode == TransactionMode.partialPaymentByBank ||
        stateData.mode == TransactionMode.partialPaymentByCash) {
      if (stateData.partyLedger == null) {
        _errorMessage.add('Please Select Party');
      }
      if (stateData.amount <= stateData.partialPaymentAmount) {
        _errorMessage
            .add('Partial Payment Amount cannot be Larger  than Amount');
      }
      if (stateData.partialPaymentAmount <= 0) {
        _errorMessage.add('Partial Amount cannot be Zero');
      }
      if (stateData.particular!.length <= 0) {
        _errorMessage.add('Please Enter Particular');
      }
    }
    if (stateData.mode == TransactionMode.credit &&
        stateData.partyLedger == null) {
      _errorMessage.add('Please Select Party');
    }

    print('length of error message ${_errorMessage}');
    state = AsyncData(stateData.copyWith(errorMessages: _errorMessage));
  }

  setup() async {
    //---------------Updating the state-------
    final stateData = state.data!.value;
    final finalData = stateData.copyWith(
      creditAmount: (stateData.amount - stateData.partialPaymentAmount),
      debitAmount: stateData.amount,
      debitSideLedger: stateData.mode != TransactionMode.credit
          ? await getTransactionModeLedgerHelper(
              stateData.mode!,
              _read,
            )
          : null,
    );
    state = AsyncData(finalData);
  }

  reset() async {
    state = AsyncLoading();
  }

  submit() async {
    final stateData = state.data!.value;
    try {
      _read(transactionRepositoryProvider).add(
        payload: Transaction(
          debitAmount: stateData.debitAmount,
          creditAmount: stateData.creditAmount,
          partialPaymentAmount: stateData.partialPaymentAmount,
          particular: stateData.particular!,
          mode: stateData.mode!,
          date: stateData.date,
          transactionCategoryId: TransactionCategoryIndex.PurchaseOfRawMaterial,
          debitSideLedger: stateData.debitSideLedger!.id,
          creditSideLedger: stateData.creditSideLedger != null
              ? stateData.creditSideLedger!.id
              : null,
          partyLedgerId:
              stateData.partyLedger != null ? stateData.partyLedger!.id : null,
        ),
      );
    } catch (e) {
      print(e);
    }
  }
}
