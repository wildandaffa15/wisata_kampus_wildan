import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FB),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0879D9),
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Wisata Kampus',
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
        ),
      ),

      body: LayoutBuilder(
        builder: (context, constraints) {
          double maxWidth;

          if (constraints.maxWidth < 600) {
            maxWidth = constraints.maxWidth;
          } else if (constraints.maxWidth < 1000) {
            maxWidth = 650;
          } else {
            maxWidth = 750;
          }

          return Center(
            child: SingleChildScrollView(
              child: Container(
                width: maxWidth,
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/sekolah.jpg',
                        width: double.infinity,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(height: 20),

                    const Text(
                      'Selamat Datang!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF102A5C),
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      'Temukan tempat menarik\ndi kampus kami.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        height: 1.4,
                        color: Color(0xFF6E7890),
                      ),
                    ),

                    const SizedBox(height: 22),

                    MenuCard(
                      icon: Icons.park,
                      iconColor: Colors.green,
                      title: 'Taman Kampus',
                      onTap: () {},
                    ),

                    const SizedBox(height: 10),

                    MenuCard(
                      icon: Icons.account_balance,
                      iconColor: const Color(0xFF53677D),
                      title: 'Perpustakaan',
                      onTap: () {},
                    ),

                    const SizedBox(height: 10),

                    MenuCard(
                      icon: Icons.groups,
                      iconColor: const Color(0xFF147DD1),
                      title: 'Laboratorium',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final VoidCallback onTap;

  const MenuCard({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),

      child: Container(
        height: 68,
        padding: const EdgeInsets.symmetric(horizontal: 16),

        decoration: BoxDecoration(
          color: const Color(0xFFF1F5F9),
          borderRadius: BorderRadius.circular(12),
        ),

        child: Row(
          children: [
            Icon(icon, size: 35, color: iconColor),

            const SizedBox(width: 18),

            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF182B50),
                ),
              ),
            ),

            const Icon(Icons.chevron_right, size: 30, color: Color(0xFF8290A5)),
          ],
        ),
      ),
    );
  }
}
