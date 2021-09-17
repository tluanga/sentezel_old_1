import 'package:sentezel/common/enums/transaction_type_enum.dart';
import 'package:sentezel/settings/ledger_master/data/ledger_master_id_index.dart';

import 'package:sentezel/settings/transactionCategory/data/transaction_category_index.dart';
import 'package:sentezel/settings/transactionCategory/data/transaction_category_model.dart';

//---------REMARKS--------
// Blank are to be filled at runtime

List<TransactionCategory> transactionTypeData = [
  TransactionCategory(
    id: TransactionCategoryIndex.purchaseOfRawMaterial,
    name: 'Purchase of Material',
    description: 'Purchase of Material for Resell or for Production',
    transactionType: TransactionType.lei,
    debitSideLedger: LedgerMasterIndex.purchase,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.purchaseOfAssets,
    name: 'Purchase of Assets',
    description:
        'Purchase of Material for Business, not for Resell or Raw Material',
    transactionType: TransactionType.lei,
    debitSideLedger: LedgerMasterIndex.blank,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.saleOfGoods,
    name: 'Sale of Goods',
    description: 'Sales of Goods which are not manufactured',
    transactionType: TransactionType.hralh,
    debitSideLedger: LedgerMasterIndex.cash,
    creditSideLedger: LedgerMasterIndex.goods,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.wages,
    name: 'Wages',
    description: 'Hnathawkte hlawh',
    transactionType: TransactionType.pekchhuah,
    debitSideLedger: LedgerMasterIndex.wages,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.carriageExpenses,
    name: 'Carriage expenses',
    description: 'Bungraw phur kualnaa sum hman',
    transactionType: TransactionType.pekchhuah,
    debitSideLedger: LedgerMasterIndex.carriageExpense,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.manufacturingExpenses,
    name: 'Manufacturing expenses',
    description: 'bungraw lakkhawmna',
    transactionType: TransactionType.pekchhuah,
    debitSideLedger: LedgerMasterIndex.manufacturingExpenses,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.packingExpense,
    name: 'Packing expenses',
    description: 'bungraw pack na',
    transactionType: TransactionType.pekchhuah,
    debitSideLedger: LedgerMasterIndex.packingExpense,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.salaries,
    name: 'Salaries ',
    description: 'hnathawkate thla tin hlawh',
    transactionType: TransactionType.pekchhuah,
    debitSideLedger: LedgerMasterIndex.salaries,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.officeRent,
    name: 'Office rent',
    description: 'office luahna man',
    transactionType: TransactionType.pekchhuah,
    debitSideLedger: LedgerMasterIndex.officeExpense,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.printingAndStationery,
    name: 'Printing & Stationery',
    description: 'Lehkha print na,etc. leh Stationary a sum hman te',
    transactionType: TransactionType.pekchhuah,
    debitSideLedger: LedgerMasterIndex.printingAndStationery,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.telephoneCharges,
    name: 'Telephone Charges',
    description: 'Telephone Charge',
    transactionType: TransactionType.pekchhuah,
    debitSideLedger: LedgerMasterIndex.telephoneCharges,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.postageAndTelegram,
    name: 'Postage and telegram',
    description: 'postage and telegram',
    transactionType: TransactionType.pekchhuah,
    debitSideLedger: LedgerMasterIndex.printingAndStationery,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.insurance,
    name: 'Insurance',
    description: 'Insurance',
    transactionType: TransactionType.pekchhuah,
    debitSideLedger: LedgerMasterIndex.insurance,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.electricity,
    name: 'Electricity',
    description: 'Electric bill leh electric lama sum hmanna te',
    transactionType: TransactionType.pekchhuah,
    debitSideLedger: LedgerMasterIndex.electricBill,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.repairRenewalMaintenance,
    name: 'Repairs and renewal',
    description: 'Thil siam thatnaa sum hman te',
    transactionType: TransactionType.pekchhuah,
    debitSideLedger: LedgerMasterIndex.repairRenewalMaintenance,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.advertisement,
    name: 'Advertisement',
    description: 'advertisement',
    transactionType: TransactionType.pekchhuah,
    debitSideLedger: LedgerMasterIndex.advertisement,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.discount,
    name: 'Discount',
    description: 'Discount kan pek na',
    transactionType: TransactionType.pekchhuah,
    debitSideLedger: LedgerMasterIndex.discount,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.depreciation,
    name: 'Depreciation',
    description: 'Thil man a ai tlawma kan pekna zat',
    transactionType: TransactionType.pekchhuah,
    debitSideLedger: LedgerMasterIndex.depreciation,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.carriageOutward,
    name: 'Carriage outward',
    description: 'Carriage outward',
    transactionType: TransactionType.pekchhuah,
    debitSideLedger: LedgerMasterIndex.carriageExpense,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.badDebts,
    name: 'Bad debts',
    description: 'Ba min pek tawh loh tur te',
    transactionType: TransactionType.pekchhuah,
    debitSideLedger: LedgerMasterIndex.badDebts,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.provisionForBadDebt,
    name: 'Provision for bad debts',
    description: 'bat ral te phuhrukna tur',
    transactionType: TransactionType.pekchhuah,
    debitSideLedger: LedgerMasterIndex.provisionForBadDebts,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.sellInCommission,
    name: 'Selling commission',
    description: 'Selling commission',
    transactionType: TransactionType.lakluh,
    debitSideLedger: LedgerMasterIndex.cash,
    creditSideLedger: LedgerMasterIndex.sellingCommision,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.bankCharges,
    name: 'bank charges',
    description: 'bank charges',
    transactionType: TransactionType.pekchhuah,
    debitSideLedger: LedgerMasterIndex.bankCharges,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.lossOnSaleOfAsset,
    name: 'Loss on sale of asset',
    description: 'bungraw hralhchhawnna a pawisa hloh na',
    transactionType: TransactionType.pekchhuah,
    debitSideLedger: LedgerMasterIndex.lossOnSaleOfAssets,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.discountReceived,
    name: 'Discount Recieved',
    description: 'thil leina a discount kan dawn zat',
    transactionType: TransactionType.lakluh,
    debitSideLedger: LedgerMasterIndex.cash,
    creditSideLedger: LedgerMasterIndex.discountReceived,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.commissionReceived,
    name: 'Commission recieved',
    description: 'commission na a hmuh zat',
    transactionType: TransactionType.lakluh,
    debitSideLedger: LedgerMasterIndex.cash,
    creditSideLedger: LedgerMasterIndex.commissionReceived,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.bankInterest,
    name: 'bank interest',
    description: 'bank interest dawn zat',
    transactionType: TransactionType.lakluh,
    debitSideLedger: LedgerMasterIndex.bank,
    creditSideLedger: LedgerMasterIndex.bankInterestReceived,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.rentReceived,
    name: 'Rent recieved',
    description: 'Kan in leh dawr luahman atanga sum dawn',
    transactionType: TransactionType.lakluh,
    debitSideLedger: LedgerMasterIndex.cash,
    creditSideLedger: LedgerMasterIndex.rentReceived,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.profitOnSaleOfAssets,
    name: 'Profit on sale of asset',
    description: 'Bungraw hralhchhawnna atanga hlawkna',
    transactionType: TransactionType.lakluh,
    debitSideLedger: LedgerMasterIndex.cash,
    creditSideLedger: LedgerMasterIndex.profitOnSaleOfAssets,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.salesReturn,
    name: 'Sale Return',
    description: 'Bungraw hralhchhawn tawh let leh',
    transactionType: TransactionType.pekchhuah,
    debitSideLedger: LedgerMasterIndex.salesReturn,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.purchaseReturn,
    name: 'Purchase Return',
    description: 'Bungraw hralhchhawn tawh let leh',
    transactionType: TransactionType.lakluh,
    debitSideLedger: LedgerMasterIndex.cash,
    creditSideLedger: LedgerMasterIndex.purchaseReturn,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.customerDebtSettlement,
    name: 'Customer Debt  Settlement',
    description: 'Customer ten an ba an pek',
    transactionType: TransactionType.debtRepaymentByDebtor,
    debitSideLedger: LedgerMasterIndex.cash,
    creditSideLedger: 0,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.businessDebtSettlement,
    name: 'BusinessProfile Debt Bill Settlement',
    description: 'Sumdawna a ba pek',
    transactionType: TransactionType.debtRepaymentToCreditor,
    debitSideLedger: 0,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.bankToCash,
    name: 'bank to cash',
    description: 'bank to cash',
    transactionType: TransactionType.bankToCash,
    debitSideLedger: LedgerMasterIndex.cash,
    creditSideLedger: LedgerMasterIndex.bank,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.cashToBank,
    name: 'cash to bank',
    description: 'cash to bank Transaction',
    transactionType: TransactionType.cashToBank,
    debitSideLedger: LedgerMasterIndex.bank,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.capitalInjection,
    name: 'Capital Injection',
    description: 'Capital Injection into Business',
    transactionType: TransactionType.capitalInjection,
    debitSideLedger: LedgerMasterIndex.bank,
    creditSideLedger: LedgerMasterIndex.capital,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.openingBalanceCash,
    name: 'Opening Balance cash',
    description: 'Opening balance cash',
    transactionType: TransactionType.openingBalanceCash,
    debitSideLedger: LedgerMasterIndex.capital,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.openingBalanceBank,
    name: 'Opening Balance bank',
    description: 'Opening balance bank',
    transactionType: TransactionType.openingBalanceBank,
    debitSideLedger: LedgerMasterIndex.capital,
    creditSideLedger: LedgerMasterIndex.bank,
  ),
  TransactionCategory(
    id: TransactionCategoryIndex.customDuty,
    name: 'Custom Duty',
    description: 'Custom Duty',
    transactionType: TransactionType.pekchhuah,
    debitSideLedger: LedgerMasterIndex.customDuty,
    creditSideLedger: LedgerMasterIndex.cash,
  ),
];
