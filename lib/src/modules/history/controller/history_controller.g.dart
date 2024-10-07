// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HistoryController on _HistoryControllerBase, Store {
  late final _$addressesAtom =
      Atom(name: '_HistoryControllerBase.addresses', context: context);

  @override
  List<AddressModel> get addresses {
    _$addressesAtom.reportRead();
    return super.addresses;
  }

  @override
  set addresses(List<AddressModel> value) {
    _$addressesAtom.reportWrite(value, super.addresses, () {
      super.addresses = value;
    });
  }

  late final _$loadHistoryAsyncAction =
      AsyncAction('_HistoryControllerBase.loadHistory', context: context);

  @override
  Future<void> loadHistory() {
    return _$loadHistoryAsyncAction.run(() => super.loadHistory());
  }

  late final _$addToHistoryAsyncAction =
      AsyncAction('_HistoryControllerBase.addToHistory', context: context);

  @override
  Future<void> addToHistory(AddressModel address) {
    return _$addToHistoryAsyncAction.run(() => super.addToHistory(address));
  }

  @override
  String toString() {
    return '''
addresses: ${addresses}
    ''';
  }
}
