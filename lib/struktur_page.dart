import 'package:flutter/material.dart';
import 'pengurus.dart';
import 'detail_page.dart';

class StrukturPage extends StatelessWidget {
  const StrukturPage({super.key});

  // Palet Warna
  final Color darkGreen = const Color(0xFF43604C);
  final Color lightGreen = const Color(0xFFD6E3CE);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Top Bar Header
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: darkGreen,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
          ),
          
          const SizedBox(height: 20),

          // Judul Halaman
          Text(
            'Organization Structure',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w900,
              color: darkGreen,
            ),
          ),

          const SizedBox(height: 16),

          // 3. List Struktur Organisasi
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              children: [
                // --- KATEGORI 1: Ketua & Wakil (Langsung Muncul) ---
                Text(
                  'Chair Person & Vice Chairman',
                  style: TextStyle(
                    fontSize: 18, 
                    fontWeight: FontWeight.bold,
                    color: darkGreen,
                  ),
                ),
                const SizedBox(height: 8),
                if (dataKetuaWakil.isEmpty)
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text('Data belum tersedia', style: TextStyle(color: Colors.grey)),
                  )
                else
                  ...dataKetuaWakil.map((pengurus) => _buildMemberCard(context, pengurus)),

                const SizedBox(height: 16),

                // --- KATEGORI 2: Sekretaris & Bendahara (Dropdown) ---
                _buildExpansionSection(
                  context,
                  title: 'Secretary & Treasury',
                  data: sekreBenda,
                ),

                const SizedBox(height: 12),

                // --- KATEGORI 3: MEDINFO (Dropdown) ---
                _buildExpansionSection(
                  context,
                  title: 'MEDINFO',
                  data: medinfo,
                ),

                const SizedBox(height: 12),

                // --- KATEGORI 4: Kepala Divisi (Dropdown) ---
                _buildExpansionSection(
                  context,
                  title: 'Division',
                  data: dataKadiv,
                ),
                
                const SizedBox(height: 20),
              ],
            ),
          ),

          // 4. Bottom Navigation Bar Kustom
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
                // Tombol Home
                IconButton(
                  onPressed: () {
                    Navigator.pop(context); 
                  },
                  icon: const Icon(Icons.home, color: Colors.black87, size: 40),
                ),
                // Tombol Buku
                IconButton(
                  onPressed: () {}, 
                  icon: Icon(Icons.menu_book, color: lightGreen, size: 36),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Fungsi pembungkus ExpansionTile
  Widget _buildExpansionSection(BuildContext context, {required String title, required List<Pengurus> data}) {
    return Theme(
      // Untuk menghilangkan garis pemisah bawaan ExpansionTile
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: Container(
        decoration: BoxDecoration(
          color: lightGreen.withOpacity(0.4),
          borderRadius: BorderRadius.circular(15),
        ),
        child: ExpansionTile(
          iconColor: darkGreen,
          collapsedIconColor: darkGreen,
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold, 
              color: darkGreen,
              fontSize: 16,
            ),
          ),
          childrenPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          children: data.isEmpty 
              ? [
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text('Data belum tersedia', style: TextStyle(color: Colors.grey)),
                  )
                ]
              : data.map((pengurus) => _buildMemberCard(context, pengurus)).toList(),
        ),
      ),
    );
  }

  // Widget kartu profil anggota pengurus
  Widget _buildMemberCard(BuildContext context, Pengurus pengurus) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Hero(
          tag: pengurus.id,
          child: CircleAvatar(
            backgroundColor: darkGreen.withOpacity(0.15),
            backgroundImage: AssetImage(pengurus.imageUrl),
          ),
        ),
        title: Text(
          pengurus.nama, 
          style: TextStyle(fontWeight: FontWeight.bold, color: darkGreen),
        ),
        subtitle: Text(pengurus.jabatan, style: const TextStyle(color: Colors.black54)),
        trailing: Icon(Icons.chevron_right, color: darkGreen),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailPage(pengurus: pengurus)),
          );
        },
      ),
    );
  }
}