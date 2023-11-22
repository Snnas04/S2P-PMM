import 'package:flutter/material.dart';

import 'package:rickandmorty/src/views/views.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

final _tabs = [
  'CHARACTER',
  'EPISODES',
  'LOCATIONS',
  'FILTERED CHARACTERS',
  'FILTERED EPISODES',
  'FILTERED LOCATIONS',
  'SPECIFIED CHARACTERS',
  'SPECIFIED EPISODES',
  'SPECIFIED LOCATIONS',
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('R&M DART API'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.open_in_new)),
          ],
          bottom: TabBar(
            isScrollable: true,
            tabs: [for (final tab in _tabs) Tab(child: Text(tab))],
          ),
        ),
        body: const TabBarView(
          children: [
            CharacterListView(),
            EpisodeListView(),
            LocationListView(),
            FilteredCharacterListView(),
            FilteredEpisodeListView(),
            FilteredLocationListView(),
            SpecifiedCharacterListView(),
            SpecifiedEpisodeListView(),
            SpecifiedLocationListView(),
          ],
        ),
      ),
    );
  }
}
