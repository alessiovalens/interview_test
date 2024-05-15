import 'package:interview_test/models/species_detail_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'species_detail_wrapper_response.g.dart';

@JsonSerializable(createToJson: false)
class SpeciesDetailWrapperResponse {
  final String name;
  final List<SpeciesDetailResponse> result;

  const SpeciesDetailWrapperResponse({
    required this.name,
    required this.result,
  });

  factory SpeciesDetailWrapperResponse.fromJson(Map<String, dynamic> json) {
    return _$SpeciesDetailWrapperResponseFromJson(json);
  }
}
