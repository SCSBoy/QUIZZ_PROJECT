import 'package:flutter/material.dart';

class Completed extends StatelessWidget {
  const Completed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 350,
            width: 400,
            child: Stack(
              children: [
                Container(
                  height: 340,
                  width: 410,
                  decoration: BoxDecoration(
                    color: const Color(0xFF42A5F5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: CircleAvatar(
                      radius: 85,
                      backgroundColor: const Color.fromARGB(255, 94, 255, 0).withOpacity(0.9),
                      child: CircleAvatar(
                        radius: 71,
                        backgroundColor: const Color.fromARGB(255, 94, 255, 0).withOpacity(0.4),
                        child: CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.white,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Votre Score',
                                  style: TextStyle(fontSize: 20, color: Colors.black),
                                ),
                                const SizedBox(height: 8),
                                RichText(
                                  text: const TextSpan(
                                    text: '100',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF42A5F5),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: ' pt',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF42A5F5),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 60,
                  left: 22,
                  child: Container(
                    height: 190,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 3,
                          color: const Color(0xFF42A5F5).withOpacity(0.7),
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildScoreColumn(
                                  color: const Color(0xFF42A5F5),
                                  percentage: '100%',
                                  label: 'Complété',
                                ),
                                _buildScoreColumn(
                                  color: const Color(0xFF42A5F5),
                                  percentage: '100%',
                                  label: 'Total questions',
                                ),
                              ],
                            ),
                            const SizedBox(height: 25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildScoreColumn(
                                  color: Colors.green,
                                  percentage: '07',
                                  label: 'Correct',
                                ),
                                _buildScoreColumn(
                                  color: Colors.red,
                                  percentage: '03',
                                  label: 'Mauvaise réponse',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _ActionButton(
                    icon: Icons.refresh,
                    color: Color(0xFF42A5F5),
                    label: 'Recommencer',
                  ),
                  _ActionButton(
                    icon: Icons.visibility_rounded,
                    color: Color(0xFF42B5F5),
                    label: 'Voir les réponses',
                  ),
                  _ActionButton(
                    icon: Icons.share,
                    color: Color(0xFF22FFFF),
                    label: 'Partager',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _ActionButton(
                    icon: Icons.settings,
                    color: Color(0xFF42A5F5),
                    label: 'Paramètres',
                  ),
                  _ActionButton(
                    icon: Icons.file_open_rounded,
                    color: Color(0xFF42B5F5),
                    label: 'Generate PDF',
                  ),
                  _ActionButton(
                    icon: Icons.home,
                    color: Color(0xFF22FFFF),
                    label: 'Accueil',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildScoreColumn({
    required Color color,
    required String percentage,
    required String label,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              percentage,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: color,
              ),
            ),
          ],
        ),
        Text(label),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;

  const _ActionButton({
    required this.icon,
    required this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 35,
          child: Icon(
            icon,
            size: 35,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
