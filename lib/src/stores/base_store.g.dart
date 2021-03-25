// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BaseStore on _BaseStore, Store {
  final _$blueThemeAtom = Atom(name: '_BaseStore.blueTheme');

  @override
  bool get blueTheme {
    _$blueThemeAtom.reportRead();
    return super.blueTheme;
  }

  @override
  set blueTheme(bool value) {
    _$blueThemeAtom.reportWrite(value, super.blueTheme, () {
      super.blueTheme = value;
    });
  }

  final _$_BaseStoreActionController = ActionController(name: '_BaseStore');

  @override
  void toggleBlue() {
    final _$actionInfo =
        _$_BaseStoreActionController.startAction(name: '_BaseStore.toggleBlue');
    try {
      return super.toggleBlue();
    } finally {
      _$_BaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
blueTheme: ${blueTheme}
    ''';
  }
}
