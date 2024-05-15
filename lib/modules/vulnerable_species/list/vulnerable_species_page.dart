import 'package:flutter/material.dart';
import 'package:interview_test/auth_notifier.dart';
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
      body: FutureBuilder<List<String>>(
        future: _fetchList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
          if (snapshot.hasData) {
            return VulnerableSpeciesList(items: snapshot.data!);
          }
          return const Text('Si è verificato un errore');
        },
      ),
    );
  }

  Future<List<String>> _fetchList() async {
    await Future.delayed(const Duration(seconds: 2));
    return List.generate(10, (index) => 'Item n. $index');
  }
}
