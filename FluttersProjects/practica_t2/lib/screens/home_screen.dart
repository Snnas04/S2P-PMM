import 'package:flutter/material.dart';
import 'package:practica_t2/providers/movies_provider.dart';
import 'package:practica_t2/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<VideosProvider>(context);

    // print(moviesProvider.onDisplayMovies);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutubo'),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Targetes principals
            CardSwiper(movies: moviesProvider.onDisplayVideos),

            // Slider de pel·licules
            const MovieSlider(),
            // Poodeu fer la prova d'afegir-ne uns quants, veureu com cada llista és independent
            // MovieSlider(),
            // MovieSlider(),
          ],
        ),
      ),
    );
  }
}
