import 'dart:convert';

import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/services.dart';

import 'enums.dart';
import 'translations.model.dart';

part 'recipes.model.mapper.dart';

@MappableClass()
class Recipe with RecipeMappable {
  String sourceSheet;
  String name;
  String image;
  String? imageSh;
  int buy;
  int? sell;
  int? exchangePrice;
  ExchangeCurrency? exchangeCurrency;
  List<String> source;
  List<String>? sourceNotes;
  String? seasonEvent;
  bool? seasonEventExclusive;
  String versionAdded;
  bool unlocked;
  int recipesToUnlock;
  String category;
  int craftedItemInternalId;
  String? cardColor;
  String diyIconFilename;
  String? diyIconFilenameSh;
  int serialId;
  int internalId;
  String uniqueEntryId;
  Translation? translations;
  Map<String, int> materials;
  Map<String, String?> materialsTranslations;

  Recipe({
    required this.translations,
    required this.sourceSheet,
    required this.name,
    required this.image,
    this.imageSh,
    required this.buy,
    this.sell,
    this.exchangePrice,
    this.exchangeCurrency,
    required this.source,
    this.sourceNotes,
    this.seasonEvent,
    this.seasonEventExclusive,
    required this.versionAdded,
    required this.unlocked,
    required this.recipesToUnlock,
    required this.category,
    required this.craftedItemInternalId,
    this.cardColor,
    required this.diyIconFilename,
    this.diyIconFilenameSh,
    required this.serialId,
    required this.internalId,
    required this.uniqueEntryId,
    required this.materials,
    required this.materialsTranslations,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) => RecipeMapper.fromJson(json);

  static Future<List<Recipe>> findAll(bool Function(Recipe recipe) filter) async {
    // Load the JSON file
    final String data = await rootBundle.loadString('assets/json/Recipes.json');
    final json = await jsonDecode(data);
    final recipes = List<Recipe>.from(json.map((model) => Recipe.fromJson(model)));
    return recipes.where(filter).toList();
  }

  static Future<Recipe?> findOne(bool Function(Recipe recipe) filter) async {
    // Load the JSON file
    final String data = await rootBundle.loadString('assets/json/Recipes.json');
    final json = await jsonDecode(data);
    final recipes = List<Recipe>.from(json.map((model) => Recipe.fromJson(model)));
    return recipes.where(filter).firstOrNull;
  }
}
