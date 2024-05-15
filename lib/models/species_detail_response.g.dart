// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpeciesDetailResponse _$SpeciesDetailResponseFromJson(
        Map<String, dynamic> json) =>
    SpeciesDetailResponse(
      taxonId: (json['taxonid'] as num).toInt(),
      scientificName: json['scientific_name'] as String,
      kingdom: json['kingdom'] as String?,
      phylum: json['phylum'] as String?,
      order: json['order'] as String?,
      family: json['family'] as String?,
      genus: json['genus'] as String?,
      mainCommonName: json['main_common_name'],
      authority: json['authority'] as String?,
      publishedYear: (json['published_year'] as num?)?.toInt(),
      assessmentDate: json['assessment_date'] == null
          ? null
          : DateTime.parse(json['assessment_date'] as String),
      category: json['category'] as String?,
      criteria: json['criteria'] as String?,
      populationTrend: json['population_trend'],
      marineSystem: json['marine_system'] as bool?,
      freshwaterSystem: json['freshwater_system'] as bool?,
      terrestrialSystem: json['terrestrial_system'] as bool?,
      assessor: json['assessor'] as String?,
      reviewer: json['reviewer'] as String?,
      aooKm2: json['aoo_km2'],
      eooKm2: json['eoo_km2'],
      elevationUpper: json['elevation_upper'],
      elevationLower: json['elevation_lower'],
      depthUpper: json['depth_upper'],
      depthLower: json['depth_lower'],
      errataFlag: json['errata_flag'],
      errataReason: json['errata_reason'],
      amendedFlag: json['amended_flag'],
      amendedReason: json['amended_reason'],
    );
