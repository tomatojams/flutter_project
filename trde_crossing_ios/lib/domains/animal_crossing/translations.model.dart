import 'package:dart_mappable/dart_mappable.dart';

part 'translations.model.mapper.dart';

@MappableClass()
class Translation with TranslationMappable {
  final String? sourceSheet;
  @MappableField(hook: _IdHook())
  final String? id;
  final String eUde;
  final String eUen;
  final String eUit;
  final String eUnl;
  final String eUru;
  final String eUfr;
  final String eUes;
  final String uSen;
  final String uSfr;
  final String uSes;
  final String jPja;
  final String kRko;
  final String tWzh;
  final String cNzh;
  final bool? plural;
  Translation({
    this.sourceSheet,
    required this.id,
    required this.eUde,
    required this.eUen,
    required this.eUit,
    required this.eUnl,
    required this.eUru,
    required this.eUfr,
    required this.eUes,
    required this.uSen,
    required this.uSfr,
    required this.uSes,
    required this.jPja,
    required this.kRko,
    required this.tWzh,
    required this.cNzh,
    required this.plural,
  });

  factory Translation.fromJson(Map<String, dynamic> json) => TranslationMapper.fromJson(json);
}

class _IdHook extends MappingHook {
  const _IdHook();

  @override
  Object? afterDecode(Object? value) {
    if (value is int) {
      return value.toString();
    }
    return value;
  }
}
