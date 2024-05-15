import 'package:flutter/material.dart';
import 'package:interview_test/models/species_detail_response.dart';
import 'package:interview_test/modules/vulnerable_species/detail/info_label.dart';

class VulnerableSpeciesContent extends StatelessWidget {
  const VulnerableSpeciesContent({
    super.key,
    required this.item,
  });

  final SpeciesDetailResponse item;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.black87,
          height: MediaQuery.sizeOf(context).width * .5,
          constraints: BoxConstraints(
            maxHeight: MediaQuery.sizeOf(context).height / 2,
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.scientificName,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 8),
              InfoLabel(
                title: 'Kingdom: ',
                label: item.kingdom,
              ),
              const SizedBox(height: 8),
              InfoLabel(
                title: 'Phylum: ',
                label: item.phylum,
              ),
              const SizedBox(height: 8),
              InfoLabel(
                title: 'Order: ',
                label: item.order,
              ),
              const SizedBox(height: 8),
              InfoLabel(
                title: 'Family: ',
                label: item.family,
              ),
              const SizedBox(height: 8),
              InfoLabel(
                title: 'Genus: ',
                label: item.genus,
              ),
              const SizedBox(height: 8),
              InfoLabel(
                title: 'Main common name: ',
                label: item.mainCommonName,
              ),
              if (item.amendedReason != null) ...[
                const SizedBox(height: 8),
                Text(item.amendedReason),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
