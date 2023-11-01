import 'package:counter_strike_3/app/domain/json_converter_mixin.dart';

abstract class User with JsonConverterMixin {
  final String id;
  final String name;

  User({required this.id, required this.name});

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      ...customJsonFields(),
    };
  }
}
