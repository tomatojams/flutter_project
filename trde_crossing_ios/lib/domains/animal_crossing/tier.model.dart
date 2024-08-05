// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dart_mappable/dart_mappable.dart';

part 'tier.model.mapper.dart';

@MappableClass()
class Tier with TierMappable {
  final String required;
  final String reward;
  final List<String> nouns;
  final String modifier;

  Tier({
    required this.required,
    required this.reward,
    required this.nouns,
    required this.modifier,
  });

  factory Tier.fromJson(Map<String, dynamic> json) => TierMapper.fromJson(json);

  
}
