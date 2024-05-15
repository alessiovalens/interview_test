// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species_detail_wrapper_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpeciesDetailWrapperResponse _$SpeciesDetailWrapperResponseFromJson(
        Map<String, dynamic> json) =>
    SpeciesDetailWrapperResponse(
      name: json['name'] as String,
      result: (json['result'] as List<dynamic>)
          .map((e) => SpeciesDetailResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
