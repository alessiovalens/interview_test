// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpeciesListResponse _$SpeciesListResponseFromJson(Map<String, dynamic> json) =>
    SpeciesListResponse(
      count: (json['count'] as num).toInt(),
      category: json['category'] as String,
      result: (json['result'] as List<dynamic>)
          .map((e) => SpeciesResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
