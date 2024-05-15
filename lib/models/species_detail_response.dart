import 'package:json_annotation/json_annotation.dart';

part 'species_detail_response.g.dart';

@JsonSerializable(createToJson: false)
class SpeciesDetailResponse {
  @JsonKey(name: 'taxonid')
  final int taxonId;

  @JsonKey(name: 'scientific_name')
  final String scientificName;
  final String? kingdom;
  final String? phylum;
  final String? order;
  final String? family;
  final String? genus;

  @JsonKey(name: 'main_common_name')
  final dynamic mainCommonName;

  final String? authority;

  @JsonKey(name: 'published_year')
  final int? publishedYear;

  @JsonKey(name: 'assessment_date')
  final DateTime? assessmentDate;

  final String? category;
  final String? criteria;

  @JsonKey(name: 'population_trend')
  final dynamic populationTrend;

  @JsonKey(name: 'marine_system')
  final bool? marineSystem;

  @JsonKey(name: 'freshwater_system')
  final bool? freshwaterSystem;

  @JsonKey(name: 'terrestrial_system')
  final bool? terrestrialSystem;

  final String? assessor;
  final String? reviewer;

  @JsonKey(name: 'aoo_km2')
  final dynamic aooKm2;

  @JsonKey(name: 'eoo_km2')
  final dynamic eooKm2;

  @JsonKey(name: 'elevation_upper')
  final dynamic elevationUpper;

  @JsonKey(name: 'elevation_lower')
  final dynamic elevationLower;

  @JsonKey(name: 'depth_upper')
  final dynamic depthUpper;

  @JsonKey(name: 'depth_lower')
  final dynamic depthLower;

  @JsonKey(name: 'errata_flag')
  final dynamic errataFlag;

  @JsonKey(name: 'errata_reason')
  final dynamic errataReason;

  @JsonKey(name: 'amended_flag')
  final dynamic amendedFlag;

  @JsonKey(name: 'amended_reason')
  final dynamic amendedReason;

  const SpeciesDetailResponse({
    required this.taxonId,
    required this.scientificName,
    this.kingdom,
    this.phylum,
    this.order,
    this.family,
    this.genus,
    this.mainCommonName,
    this.authority,
    this.publishedYear,
    this.assessmentDate,
    this.category,
    this.criteria,
    this.populationTrend,
    this.marineSystem,
    this.freshwaterSystem,
    this.terrestrialSystem,
    this.assessor,
    this.reviewer,
    this.aooKm2,
    this.eooKm2,
    this.elevationUpper,
    this.elevationLower,
    this.depthUpper,
    this.depthLower,
    this.errataFlag,
    this.errataReason,
    this.amendedFlag,
    this.amendedReason,
  });

  factory SpeciesDetailResponse.fromJson(Map<String, dynamic> json) {
    return _$SpeciesDetailResponseFromJson(json);
  }
}
