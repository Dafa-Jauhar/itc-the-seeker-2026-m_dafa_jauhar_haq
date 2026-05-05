class Pengurus {
  final String id;
  final String nama;
  final String jabatan;
  final String deskripsi;
  final String kontak;
  final String imageUrl;

  Pengurus({
    required this.id,
    required this.nama,
    required this.jabatan,
    required this.deskripsi,
    required this.kontak,
    required this.imageUrl,
  });
}

// Data Dummy 
List<Pengurus> dataKetuaWakil = [
  Pengurus(
    id: '1',
    nama: 'Grace Rianty Butar Butar',
    jabatan: 'Chair Person', 
    deskripsi: 'Bertanggung jawab bersama Vice Chairman dalam mengelola, mengoordinasi dan merancang pengelolaan ITC secara keseluruhan.',
    kontak: '+6282128632192', 
    imageUrl: 'assets/images/chair_person.jpeg',
  ),
  Pengurus(
    id: '2',
    nama: 'Dzaki Ghatfaan Abhipraya', 
    jabatan: 'Vice Chairman', 
    deskripsi: 'Bertanggung jawab bersama Chair Person dalam mengelola, mengoordinasi dan merancang pengelolaan ITC secara keseluruhan.',
    kontak: '+6282128632192',
    imageUrl: 'assets/images/vice_chairman.jpeg', 
  )
];

List<Pengurus> sekreBenda = [
  Pengurus(
    id: '3',
    nama: 'Nayla Saskia Zallianti', 
    jabatan: 'Secretary',
    deskripsi: 'Bertanggung jawab dalam pengelolaan keuangan di dalam ITC.', 
    kontak: '+6282128632192',
    imageUrl: 'assets/images/sekre.jpeg',
  ),
  Pengurus(
    id: '4',
    nama: 'Dewi Rahmawati',
    jabatan: 'Treasury', 
    deskripsi: 'Bertanggung jawab dalam pengelolaan berkas-berkas administrasi di dalam ITC.',
    kontak: '+6282128632192',
    imageUrl: 'assets/images/bendahara.jpeg',
  )
];

List<Pengurus> medinfo = [
  Pengurus(
    id: '18',
    nama: 'M. Rafli Wibowo', 
    jabatan: 'Medinfo', 
    deskripsi: 'Bertanggung jawab dalam media informasi, baik dalam bentuk dokumentasi kegiatan maupun pengelolaan media sosial.', 
    kontak: '+6282128632192', 
    imageUrl: 'assets/images/medinfo1.jpeg',
  ),
  Pengurus(
    id: '19',
    nama: 'Satya Dio Putranto', 
    jabatan: 'Medinfo', 
    deskripsi: 'Bertanggung jawab dalam media informasi, baik dalam bentuk dokumentasi kegiatan maupun pengelolaan media sosial.', 
    kontak: '+6282128632192', 
    imageUrl: 'assets/images/medinfo2.jpeg',
  ),
  Pengurus(
    id: '20',
    nama: 'Wilda Nafian', 
    jabatan: 'Medinfo', 
    deskripsi: 'Bertanggung jawab dalam media informasi, baik dalam bentuk dokumentasi kegiatan maupun pengelolaan media sosial.', 
    kontak: '+6282128632192', 
    imageUrl: 'assets/images/medinfo3.jpeg',
  ),

];

List<Pengurus> dataKadiv = [
  Pengurus(
    id: '5',
    nama: 'Gradiva Arya Wicaksana', 
    jabatan: 'Head of Division Web', 
    deskripsi: 'Bertanggung jawab bersama Deputy Head of Division Web dalam pelatihan dan pengembangan teknologi informasi berbasis web.', 
    kontak: '+6282128632192', 
    imageUrl: 'assets/images/kadiv_web.jpeg', 
  ),
  Pengurus(
    id: '6',
    nama: 'Farhannivta Ramadhana', 
    jabatan: 'Deputy Head of Division Web', 
    deskripsi: 'Bertanggung jawab bersama Head of Division Web dalam pelatihan dan pengembangan teknologi informasi berbasis web.', 
    kontak: '+6282128632192', 
    imageUrl: 'assets/images/wakadiv1_web.jpeg', 
  ),
  Pengurus(
    id: '7',
    nama: 'Marvel Valensiano', 
    jabatan: 'Deputy Head of Division Web', 
    deskripsi: 'Bertanggung jawab bersama Head of Division Web dalam pelatihan dan pengembangan teknologi informasi berbasis web.', 
    kontak: '+6282128632192', 
    imageUrl: 'assets/images/wakadiv2_web.jpeg', 
  ),
  Pengurus(
    id: '8',
    nama: 'Bintoro', 
    jabatan: 'Head of Division Mobile', 
    deskripsi: 'Bertanggung jawab bersama DeputyHead of Division Mobile dalam pelatihan dan pengembangan teknologi informasi berbasis mobile.', 
    kontak: '+6282128632192', 
    imageUrl: 'assets/images/kadiv_mobile.jpeg', 
  ),  
  Pengurus(
    id: '9',
    nama: 'Ikhsan Fillah Hidayat', 
    jabatan: 'Deputy Head of Division Mobile', 
    deskripsi: 'Bertanggung jawab bersama Head of Division Mobile dalam pelatihan dan pengembangan teknologi informasi berbasis mobile.', 
    kontak: '+6282128632192', 
    imageUrl: 'assets/images/wakadiv_mobile.jpeg',
  ),
  Pengurus(
    id: '10',
    nama: 'Bintang Ramadhan', 
    jabatan: 'Head of Division Machine Learning', 
    deskripsi: 'Bertanggung jawab bersama DeputyHead of Division Machine Learning dalam pelatihan dan pengembangan Artificial Intelligence dan Machine Learning.', 
    kontak: '+6282128632192', 
    imageUrl: 'assets/images/kadiv_ai.jpeg',
  ),
  Pengurus(
    id: '11',
    nama: 'M. Dimas Setiaji', 
    jabatan: 'Deputy Head of Division Machine Learning', 
    deskripsi: 'Bertanggung jawab bersama Head of Division Machine Learning dalam pelatihan dan pengembangan Artificial Intelligence dan Machine Learning.', 
    kontak: '+6282128632192',
    imageUrl: 'assets/images/wakadiv_ai.jpeg',
  ),
  Pengurus(
    id: '12',
    nama: 'Kurniasari Salasa', 
    jabatan: 'Head of Division Project Management', 
    deskripsi: 'Bertanggung jawab bersama Deputy Head of Division Project Management dalam pelatihan mengatur dan mengelola sebuah proyek berbasis teknologi informasi.', 
    kontak: '+6282128632192', 
    imageUrl: 'assets/images/kadiv_pm.jpeg',
  ),
  Pengurus(
    id: '13',
    nama: 'Fahri Hidayatullah', 
    jabatan: 'Deputy Head of Division Project Management', 
    deskripsi: 'Bertanggung jawab bersama Head of Division Project Management dalam pelatihan mengatur dan mengelola sebuah proyek berbasis teknologi informasi.', 
    kontak: '+6282128632192', 
    imageUrl: 'assets/images/wakadiv_pm.jpeg',
  ),
  Pengurus(
    id: '14',
    nama: 'M. Rizal A. Sucipno', 
    jabatan: 'Head of Division Competitive Programming', 
    deskripsi: 'Bertanggung jawab bersama Deputy Head of Division Competitive Programming dalam pelatihan logika di dalam pemrograman supaya program menjadi lebih efisien.', 
    kontak: '+6282128632192', 
    imageUrl: 'assets/images/kadiv_com.jpeg',
  ),
   Pengurus(
    id: '15',
    nama: 'F. S. Dewaki Yasing Suryo', 
    jabatan: 'Deputy Head of Division Competitive Programming', 
    deskripsi: 'Bertanggung jawab bersama Deputy Head of Division Competitive Programming dalam pelatihan logika di dalam pemrograman supaya program menjadi lebih efisien.', 
    kontak: '+6282128632192', 
    imageUrl: 'assets/images/wakadiv_com.jpeg',
  ),
   Pengurus(
    id: '16',
    nama: 'M. Ruhul Yadid', 
    jabatan: 'Head of Division UI/UX Design', 
    deskripsi: 'Bertanggung jawab bersama Deputy Head of Division UI/UX Design dalam pelatihan pembentukan UI dan UX dalam sebuah aplkasi/website.', 
    kontak: '+6282128632192', 
    imageUrl: 'assets/images/kadiv_ux.jpeg',
  ),
  Pengurus(
    id: '17',
    nama: 'Gita Ristya', 
    jabatan: 'Deputy Head of Division UI/UX Design', 
    deskripsi: 'Bertanggung jawab bersama Head of Division UI/UX Design dalam pelatihan pembentukan UI dan UX dalam sebuah aplkasi/website.', 
    kontak: '+6282128632192', 
    imageUrl: 'assets/images/wakadiv_ux.jpeg',
  ),
];