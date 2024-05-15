// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpeciesResponse _$SpeciesResponseFromJson(Map<String, dynamic> json) =>
    SpeciesResponse(
      taxonId: (json['taxonid'] as num).toInt(),
      scientificName: json['scientific_name'] as String,
      subspecies: json['subspecies'] as String?,
      rank: json['rank'] as String?,
      subpopulation: json['subpopulation'] as String?,
    );
