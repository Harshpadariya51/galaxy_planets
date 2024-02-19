import 'package:flutter/material.dart';
import 'package:galaxy_planets/model/model_planets.dart';
import 'package:glassmorphism/glassmorphism.dart';

class PlanetDetailScreen extends StatelessWidget {
  final PlanetModel planet;

  const PlanetDetailScreen({Key? key, required this.planet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('aseets/img/background.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            planet.name,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 28),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Stack(
          children: [
            Hero(
              tag: planet.name,
              child: Image.network(planet.image),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    height: 260,
                    color: Colors.transparent,
                  ),
                  GlassmorphicContainer(
                    width: double.infinity,
                    height: 520,
                    blur: 1,
                    borderRadius: 40,
                    border: 0.7,
                    linearGradient: LinearGradient(
                      colors: [
                        const Color(0xFFffffff).withOpacity(0.4),
                        const Color(0xFFFFFFFF).withOpacity(0.4),
                      ],
                      stops: const [
                        0.1,
                        1,
                      ],
                    ),
                    borderGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xFFffffff).withOpacity(0.5),
                        const Color((0xFFFFFFFF)).withOpacity(0.5),
                      ],
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          GlassmorphicContainer(
                            margin: const EdgeInsets.all(10),
                            height: 50,
                            width: double.infinity,
                            blur: 30,
                            borderRadius: 40,
                            border: 0.7,
                            linearGradient: LinearGradient(
                              colors: [
                                const Color(0xFF000000).withOpacity(0.2),
                                const Color(0xFF000000).withOpacity(0.8),
                              ],
                              stops: const [
                                0.1,
                                1,
                              ],
                            ),
                            borderGradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xFFffffff).withOpacity(0.5),
                                const Color((0xFFFFFFFF)).withOpacity(0.5),
                              ],
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'position : ${planet.position}',
                              style: const TextStyle(fontSize: 18),
                            ),
                          ),
                          GlassmorphicContainer(
                              margin: const EdgeInsets.all(10),
                              height: 50,
                              width: double.infinity,
                              blur: 30,
                              borderRadius: 40,
                              border: 0.7,
                              linearGradient: LinearGradient(
                                colors: [
                                  const Color(0xFF000000).withOpacity(0.8),
                                  const Color(0xFF000000).withOpacity(0.2),
                                ],
                                stops: const [
                                  0.1,
                                  1,
                                ],
                              ),
                              borderGradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  const Color(0xFFffffff).withOpacity(0.5),
                                  const Color((0xFFFFFFFF)).withOpacity(0.5),
                                ],
                              ),
                              alignment: Alignment.center,
                              child:
                                  Text('velocity : ${planet.velocity} km/s')),
                          GlassmorphicContainer(
                              margin: const EdgeInsets.all(10),
                              height: 50,
                              width: double.infinity,
                              blur: 30,
                              borderRadius: 40,
                              border: 0.7,
                              linearGradient: LinearGradient(
                                colors: [
                                  const Color(0xFF000000).withOpacity(0.2),
                                  const Color(0xFF000000).withOpacity(0.8),
                                ],
                                stops: const [
                                  0.1,
                                  1,
                                ],
                              ),
                              borderGradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  const Color(0xFFffffff).withOpacity(0.5),
                                  const Color((0xFFFFFFFF)).withOpacity(0.5),
                                ],
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                  'Distance : ${planet.distance} Millions km')),
                          const Text(
                            "Description",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('${planet.description}'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
