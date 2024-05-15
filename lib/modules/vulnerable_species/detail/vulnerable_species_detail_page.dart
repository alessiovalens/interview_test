import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:interview_test/auth_notifier.dart';
import 'package:interview_test/models/species_detail_response.dart';
import 'package:interview_test/models/species_detail_wrapper_response.dart';
import 'package:interview_test/modules/vulnerable_species/detail/vulnerable_species_content.dart';

class VulnerableSpeciesDetailPage extends StatelessWidget {
  const VulnerableSpeciesDetailPage({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: AuthNotifier.instance.logout,
            icon: const Icon(Icons.logout_outlined),
          ),
        ],
      ),
      body: FutureBuilder<SpeciesDetailResponse>(
        future: _fetchSpeciesDetail(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
          if (snapshot.hasData) {
            return VulnerableSpeciesContent(item: snapshot.data!);
          }
          return Center(
            child: Text(
              'Si è verificato un errore',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          );
        },
      ),
    );
  }

  Future<SpeciesDetailResponse> _fetchSpeciesDetail() async {
    final response = await Dio().get(
      'https://apiv3.iucnredlist.org/api/v3/species/id/$id',
      queryParameters: {'token': await AuthNotifier.instance.token},
    );
    return SpeciesDetailWrapperResponse.fromJson(response.data).result.first;
  }
}
