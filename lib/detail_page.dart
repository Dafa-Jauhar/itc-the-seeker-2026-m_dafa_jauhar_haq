import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'pengurus.dart';

class DetailPage extends StatelessWidget {
  final Pengurus pengurus;

  const DetailPage({super.key, required this.pengurus});

  // Fungsi untuk Hyperlink ke WhatsApp

  Future<void> _hubungiWhatsApp(String nomor) async {
    final cleanNumber = nomor.replaceAll('+', ''); // Format API WhatsApp
    final Uri url = Uri.parse('https://wa.me/$cleanNumber');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Tidak dapat membuka WhatsApp');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail ${pengurus.jabatan}', style: const TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF43604C),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: pengurus.id,
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFF43604C), width: 4),
                  color: Colors.grey[200],
                ),
                child: ClipOval(
                  child: Image.asset(pengurus.imageUrl, fit: BoxFit.cover),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(pengurus.nama, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFF43604C).withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(pengurus.jabatan, style: const TextStyle(fontSize: 16, color: Color(0xFF2E7D32), fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 32),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Tanggung Jawab', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 8),
            Text(pengurus.deskripsi, style: const TextStyle(fontSize: 16, height: 1.5)),
            const SizedBox(height: 32),
            // Tombol Hyperlink Kontak
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => _hubungiWhatsApp(pengurus.kontak),
                icon: const Icon(Icons.chat),
                label: Text('Hubungi ${pengurus.kontak}'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF43604C),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}