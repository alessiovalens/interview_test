import 'package:interview_test/models/species_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'species_list_response.g.dart';

@JsonSerializable(createToJson: false)
class SpeciesListResponse {
  final int count;
  final String category;
  final List<SpeciesResponse> result;

  const SpeciesListResponse({
    required this.count,
    required this.category,
    required this.result,
  });

  factory SpeciesListResponse.fromJson(Map<String, dynamic> json) {
    return _$SpeciesListResponseFromJson(json);
  }
}
