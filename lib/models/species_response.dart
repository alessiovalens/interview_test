import 'package:json_annotation/json_annotation.dart';

part 'species_response.g.dart';

@JsonSerializable(createToJson: false)
class SpeciesResponse {
  @JsonKey(name: 'taxonid')
  final int taxonId;

  @JsonKey(name: 'scientific_name')
  final String scientificName;

  final String? subspecies;
  final String? rank;
  final String? subpopulation;

  const SpeciesResponse({
    required this.taxonId,
    required this.scientificName,
    this.subspecies,
    this.rank,
    this.subpopulation,
  });

  factory SpeciesResponse.fromJson(Map<String, dynamic> json) {
    return _$SpeciesResponseFromJson(json);
  }
}
