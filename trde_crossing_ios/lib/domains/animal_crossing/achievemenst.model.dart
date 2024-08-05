import 'dart:convert';

import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/services.dart';

import 'tier.model.dart';
import 'translations.model.dart';

part 'achievemenst.model.mapper.dart';

@MappableClass()
class Achievement with AchievementMappable {
  final String sourceSheet;
  final String name;
  final String achievementDescription;
  final String achievementCriteria;
  final int num;
  final dynamic internalId;
  final String internalName;
  final String internalCategory;
  final dynamic numOfTiers;
  final bool sequential;
  final String versionAdded;
  final String uniqueEntryId;
  final Translation? translations;
  final Map<String, Tier> tiers;

  Achievement({
    required this.sourceSheet,
    required this.name,
    required this.achievementDescription,
    required this.achievementCriteria,
    required this.num,
    required this.internalId,
    required this.internalName,
    required this.internalCategory,
    required this.numOfTiers,
    required this.sequential,
    required this.versionAdded,
    required this.uniqueEntryId,
    required this.translations,
    required this.tiers,
  });

  factory Achievement.fromJson(Map<String, dynamic> json) => AchievementMapper.fromJson(json);

  static Future<List<Achievement>> findAll(bool Function(Achievement achievement) filter) async {
    // Load the JSON file
    final String data = await rootBundle.loadString('assets/json/Achievements.json');
    final json = await jsonDecode(data);
    final achievements = List<Achievement>.from(json.map((model) => Achievement.fromJson(model)));
    return achievements.where(filter).toList();
  }

  static Future<Achievement?> findOne(bool Function(Achievement achievement) filter) async {
    // Load the JSON file
    final String data = await rootBundle.loadString('assets/json/Achievements.json');
    final json = await jsonDecode(data);
    final achievements = List<Achievement>.from(json.map((model) => Achievement.fromJson(model)));
    return achievements.where(filter).firstOrNull;
  }
}
