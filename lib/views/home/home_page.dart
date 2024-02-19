import 'package:flutter/material.dart';
import 'package:galaxy_planets/component/planets.dart';
import 'package:galaxy_planets/provider/provider_planets.dart';
import 'package:galaxy_planets/views/detail_page.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PlanetProvider planetProvider = Provider.of<PlanetProvider>(context);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('aseets/img/background.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            'Planets',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: planetProvider.planets.length,
          itemBuilder: (BuildContext context, int index) {
            final planet = planetProvider.planets[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlanetDetailScreen(planet: planet),
                  ),
                );
              },
              child: Hero(
                tag: planet.name,
                child: Container(
                  height: 210,
                  child: PlanetCard(
                    planets: [planet],
                    currentIndex: index,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
