import 'dart:convert';

import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/services.dart';

import 'enums.dart';
import 'translations.model.dart';

part 'construction.model.mapper.dart';

@MappableClass()
class Construction with ConstructionMappable {
  final String sourceSheet;
  final String? name;
  final String image;
  final int? buy;
  final String? category;
  final List<ConstructionSource>? source;
  final String filename;
  final String versionAdded;
  final String uniqueEntryId;
  final Translation? translations;

  Construction({
    required this.sourceSheet,
    required this.name,
    required this.image,
    required this.buy,
    required this.category,
    required this.source,
    required this.filename,
    required this.versionAdded,
    required this.uniqueEntryId,
    required this.translations,
  });

  factory Construction.fromJson(Map<String, dynamic> json) => ConstructionMapper.fromJson(json);

  static Future<List<Construction>> findAll(bool Function(Construction construction) filter) async {
    // Load the JSON file
    final String data = await rootBundle.loadString('assets/json/Construction.json');
    final json = await jsonDecode(data);
    final constructions = List<Construction>.from(json.map((model) => Construction.fromJson(model)));
    return constructions.where(filter).toList();
  }

  static Future<Construction?> findOne(bool Function(Construction construction) filter) async {
    // Load the JSON file
    final String data = await rootBundle.loadString('assets/json/Construction.json');
    final json = await jsonDecode(data);
    final constructions = List<Construction>.from(json.map((model) => Construction.fromJson(model)));
    return constructions.where(filter).firstOrNull;
  }
}
