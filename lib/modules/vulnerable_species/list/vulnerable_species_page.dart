import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:interview_test/auth_notifier.dart';
import 'package:interview_test/models/species_list_response.dart';
import 'package:interview_test/modules/vulnerable_species/list/vulnerable_species_list.dart';

class VulnerableSpeciesPage extends StatelessWidget {
  static const routeName = '/vulnerableSpecies';

  const VulnerableSpeciesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Vulnerable species'),
        actions: [
          IconButton(
            onPressed: AuthNotifier.instance.logout,
            icon: const Icon(Icons.logout_outlined),
          ),
        ],
      ),
      body: FutureBuilder<SpeciesListResponse>(
        future: _fetchList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
          if (snapshot.hasData) {
            return VulnerableSpeciesList(items: snapshot.data!.result);
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

  Future<SpeciesListResponse> _fetchList() async {
    final response = await Dio().get(
      'https://apiv3.iucnredlist.org/api/v3/species/category/VU',
      queryParameters: {'token': await AuthNotifier.instance.token},
    );
    return SpeciesListResponse.fromJson(response.data);
  }
}
