import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:interview_test/models/species_response.dart';
import 'package:interview_test/modules/vulnerable_species/list/vulnerable_species_page.dart';

class VulnerableSpeciesList extends StatelessWidget {
  const VulnerableSpeciesList({
    super.key,
    required this.items,
  });

  final List<SpeciesResponse> items;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
      padding: const EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: switch (MediaQuery.sizeOf(context).width) {
          < 600 => 1,
          < 840 => 2,
          < 1200 => 3,
          < 1900 => 4,
          _ => 5,
        },
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 16 / 9,
      ),
      itemBuilder: (context, index) => InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          context
              .go('${VulnerableSpeciesPage.routeName}/${items[index].taxonId}');
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.black87,
          ),
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.all(16),
          child: Text(
            items[index].scientificName,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
