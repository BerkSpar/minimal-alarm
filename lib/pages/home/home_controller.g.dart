// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$nowAtom = Atom(name: '_HomeControllerBase.now');

  @override
  TimeOfDay get now {
    _$nowAtom.reportRead();
    return super.now;
  }

  @override
  set now(TimeOfDay value) {
    _$nowAtom.reportWrite(value, super.now, () {
      super.now = value;
    });
  }

  @override
  String toString() {
    return '''
now: ${now}
    ''';
  }
}
