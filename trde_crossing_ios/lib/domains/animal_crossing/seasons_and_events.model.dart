import 'dart:convert';

import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/services.dart';

import 'translations.model.dart';

part 'seasons_and_events.model.mapper.dart';

@MappableClass()
class SeasonsAndEvents with SeasonsAndEventsMappable {
  final String sourceSheet;
  final String name;
  final String type;
  final String versionAdded;
  final String versionLastUpdated;
  //
  @MappableField(hook: _YearHook())
  final String? year;
  final String? datesNorthernHemisphere;
  final String? datesSouthernHemisphere;
  final String displayName;
  final String? eventNotes;
  final List<String>? internalLabel;
  final String unlockDate;
  //
  @MappableField(hook: _UnlockMethodHook())
  final String? unlockMethod;
  final String uniqueEntryId;
  final Translation? translations;

  SeasonsAndEvents({
    required this.sourceSheet,
    required this.name,
    required this.type,
    required this.versionAdded,
    required this.versionLastUpdated,
    this.year,
    this.datesNorthernHemisphere,
    this.datesSouthernHemisphere,
    required this.displayName,
    this.eventNotes,
    this.internalLabel,
    required this.unlockDate,
    this.unlockMethod,
    required this.uniqueEntryId,
    this.translations,
  });

  factory SeasonsAndEvents.fromJson(Map<String, dynamic> json) => SeasonsAndEventsMapper.fromJson(json);

  static Future<List<SeasonsAndEvents>> findAll(bool Function(SeasonsAndEvents seasonsAndEvents) filter) async {
    // Load the JSON file
    final String data = await rootBundle.loadString('assets/json/SeasonsAndEvents.json');
    final json = await jsonDecode(data);
    final seasonsAndEvents = List<SeasonsAndEvents>.from(json.map((model) => SeasonsAndEvents.fromJson(model)));
    return seasonsAndEvents.where(filter).toList();
  }

  static Future<SeasonsAndEvents?> findOne(bool Function(SeasonsAndEvents seasonsAndEvents) filter) async {
    // Load the JSON file
    final String data = await rootBundle.loadString('assets/json/SeasonsAndEvents.json');
    final json = await jsonDecode(data);
    final seasonsAndEvents = List<SeasonsAndEvents>.from(json.map((model) => SeasonsAndEvents.fromJson(model)));
    return seasonsAndEvents.where(filter).firstOrNull;
  }
}

class _YearHook extends MappingHook {
  const _YearHook();

  @override
  Object? afterDecode(Object? value) {
    if (value is int) {
      return value.toString();
    }
    return value;
  }
}

class _UnlockMethodHook extends MappingHook {
  const _UnlockMethodHook();

  @override
  Object? afterDecode(Object? value) {
    if (value is bool) {
      return value.toString();
    }
    return value;
  }
}
