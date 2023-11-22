import 'package:flutter/material.dart';
import 'package:rickandmorty/rick_and_morty_api.dart';

import '../globals.dart';

var _filters = EpisodeFilters(
  name: 'Morty',
  episode: 'S04',
);

class FilteredEpisodeListView extends StatelessWidget {
  const FilteredEpisodeListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Episode>>(
      future: episodeClass.getFilteredEpisodes(_filters),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError || snapshot.data == null) {
          return const Center(child: Text('Error Loading Data.'));
        } else {
          var episodes = snapshot.data!;
          return ListView.builder(
            itemCount: episodes.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(episodes[index].name),
                subtitle: Text('Index Number - ${index + 1}'),
              );
            },
          );
        }
      },
    );
  }
}
