import 'package:flutter/material.dart';
import 'struktur_page.dart'; 

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final Color darkGreen = const Color(0xFF43604C);
  final Color lightGreen = const Color(0xFFD6E3CE);

  final Map<String, String> penjelasanBidang = const {
    'Mobile': 'Fokus pada pengembangan aplikasi perangkat bergerak (Android & iOS) menggunakan framework modern seperti Flutter.',
    'Web': 'Mempelajari pengembangan website yang responsif dan interaktif, baik dari sisi frontend maupun backend.',
    'AI/ML': 'Mengeksplorasi kecerdasan buatan, algoritma machine learning, dan pemrosesan data untuk sistem cerdas.',
    'CP': 'Competitive Programming: Mengasah logika dan pemecahan masalah algoritma tingkat lanjut untuk kompetisi pemrograman.',
    'UI/UX': 'Mendesain tampilan antarmuka (UI) dan pengalaman pengguna (UX) agar aplikasi menarik dan nyaman digunakan.',
    'PM': 'Project Management: Mengelola alur kerja tim, perencanaan tugas, dan dokumentasi pengembangan produk digital.'
  };

  void _tampilkanDetailBidang(BuildContext context, String judul) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Text(
            judul,
            style: TextStyle(color: darkGreen, fontWeight: FontWeight.bold),
          ),
          content: Text(
            penjelasanBidang[judul] ?? 'Penjelasan belum tersedia.',
            style: const TextStyle(fontSize: 16, height: 1.4),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'Tutup',
                style: TextStyle(color: darkGreen, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Top Bar 
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: darkGreen,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
          ),
          
          const SizedBox(height: 30),

          Text(
            'Welcome To\n"ITC 2026!"',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.w900,
              color: darkGreen,
              height: 1.2,
            ),
          ),

          const SizedBox(height: 20),

          // Bagian tengah
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // Kotak Hijau Muda Tengah yg Gede
                Positioned(
                  top: 60,
                  left: 20,
                  right: 20,
                  bottom: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      color: lightGreen,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 35, bottom: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Teks Deskripsi ITC
                        const Text(
                          '"ITC (Informatics Technology Club) is a place where you could assest your true passion and learn without any judgement"',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF43604C),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        
                        const Spacer(),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(width: 105),
                            Expanded(
                              child: Column(
                                children: [
                                  // Kotak Divisi ITC
                                  Container(
                                    width: 152,
                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                    decoration: BoxDecoration(
                                      color: darkGreen,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Division in ITC',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  // Kotak Penjelasan Bidang
                                  Wrap(
                                    spacing: 8,
                                    runSpacing: 8,
                                    alignment: WrapAlignment.center,
                                    children: penjelasanBidang.keys.map((String key) {
                                      return _buildTagButton(context, key);
                                    }).toList(),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // GAMBAR KETUA
                Positioned(
                  left: 0,
                  bottom: 20,
                  top: 130, 
                  child: SizedBox(
                    width: 165,
                    child: Image.asset(
                      'assets/images/grace.png', 
                      fit: BoxFit.contain,
                      alignment: Alignment.bottomLeft,
                      errorBuilder: (context, error, stackTrace) => const Placeholder(),
                    ),
                  ),
                ),

                // Pita Nama
                Positioned(
                  left: 10,
                  bottom: 30, 
                  child: ClipPath(
                    clipper: RibbonClipper(),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      color: darkGreen,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Chair Person ITC 26',
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          ),
                          Text(
                            'Grace Rianty Butar Butar',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Bottom Navigation Bar Kustom
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: darkGreen,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {}, 
                  icon: const Icon(Icons.home, color: Color(0xFFD6E3CE), size: 40),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const StrukturPage()),
                    );
                  },
                  icon: const Icon(Icons.menu_book, color: Colors.black87, size: 36),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget tombol kustom
  Widget _buildTagButton(BuildContext context, String text) {
    return GestureDetector(
      onTap: () => _tampilkanDetailBidang(context, text),
      child: Container(
        width: 72, 
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: darkGreen,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white, 
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}

class RibbonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width - 20, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}