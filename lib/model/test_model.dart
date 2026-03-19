import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_model.freezed.dart';

@freezed
abstract class TestModel with _$TestModel {
  const TestModel._();

  const factory TestModel({
    required String title,
    required void Function() method,
  }) = _TestModel;
}

