class Perkemahan {
  String label;
  String imageUrl;
  String description;
  String alamat;
  String harga;
  String fasilitas;
  String website;
  String contact;

  Perkemahan(
    this.label,
    this.imageUrl,
    this.description,
    this.alamat,
    this.harga,
    this.fasilitas,
    this.website,
    this.contact,
  );

  static List<Perkemahan> samples = [
    Perkemahan(
      'Ranca Upas',
      'assets/img/rancaupas/ranca1.jpg',
      'Ranca Upas menjadi tempat camping di Bandung yang sebenarnya berlokasi di tempat penangkaran rusa. Luasnya berkisar sekitar 215 hektar dan berada di ketinggian 1.700 meter di atas permukaan laut. Berhubung lokasinya di dataran tinggi, maka tidak mengherankan kalau cuaca di sini sangatlah dingin sehingga Moms harus menggunakan pakaian yang tebal..',
      'Jalan Raya Ciwidey - Patengan No.KM. 11, Patengan,Kecamatan Rancabali, Bandung, Jawa Barat 40973',
      'Rp22.000 untuk wisatawan lokal dan Rp44.000 untuk wisatawan asing',
      'Bumi Perkemahan, Kolam Renang, Kids play Ground, Penangkaran Rusa Timorensis, Warung Makan',
      'https://www.instagram.com/ranca_upas/',
      '0813-2373-9973',
    ),
    Perkemahan(
      'Dusun Bambu',
      'assets/img/dusunbambu/dusun2.jpg',
      'Buat Moms yang ingin pergi berkemah dengan keluarga, Eagle Camp Dusun Bambu menjadi tempat camping di Bandung yang cocok didatangi. Eagle Camp Dusun Bambu memiliki fasilitas yang sangat lengkap. Mulai dari perapian untuk BBQ hingga taman rekreasi yang cocok untuk buah hati bermain..',
      'Jalan Kolonel Masturi No.KM. 11, Kertawangi, Kecamatan Cisarua, Kabupaten Bandung Barat, Jawa Barat 40551',
      'Rp15.000 per orang',
      '',
      'https://www.instagram.com/dusun_bambu/',
      '',
    ),
    Perkemahan(
      'Maribaya',
      'assets/img/maribaya/mari1.jpg',
      'Tempat camping di Bandung selanjutnya adalah The Lodge Maribaya. Tenda-tenda yang ada di sini sangat unik karena berbentuk bulat dengan bagian atas yang mengecil seperti cerobong perapian. The Lodge Maribaya ini juga punya fasilitas yang lengkap. Mulai dari water heater, perlengkapan mandi, dan lain sebagainya..',
      'Jalan Maribaya No. 149/252 RT. 03 / RW. 15 Babakan, Gentong, Cibodas, Lembang, Kabupaten Bandung Barat, Jawa Barat 40391',
      'Rp20.000-Rp35.000 per orang',
      '',
      'https://www.instagram.com/maribayaresort/',
      '',
    ),
    Perkemahan(
      'Pine Forest',
      'assets/img/pineforest/pineforest1.jpg',
      'Pine Forest Camp adalah tempat camping di Bandung yang berada di ketinggian 1200 meter di atas permukaan laut. Tempat camping di Bandung ini berlokasi di dalam hutan pinus sehingga jika Moms berkemah di sini akan dikelilingi oleh pohon pinus. Pemandangan di sini sangat asri dan pastinya udaranya sangat sejuk..',
      'Suntenjaya, Lembang, Kabupaten Bandung Barat, Jawa Barat 40391',
      'Rp25.000 per orang',
      '',
      'http://www.pineforestcamp.web.id/',
      '',
    ),
    Perkemahan(
      'Lorem Ipsum',
      'assets/img/lorem/lorem1.jpg',
      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis harum quisquam, sequi atque illo magni, ipsa ratione unde veritatis ullam odio reiciendis, quibusdam dolore. Quis non blanditiis quam ipsum quos provident necessitatibus atque rerum inventore et, ratione laboriosam impedit officiis officia minus magni ducimus, id neque, maxime reprehenderit? Repudiandae sapiente dignissimos nobis tempora id et rem iste ab voluptas nihil suscipit aliquid atque harum cupiditate maiores quasi, ut dolorum non veniam beatae mollitia, similique molestias error? Commodi eaque ea reiciendis quas expedita officia voluptates excepturi delectus rerum reprehenderit aut animi exercitationem quisquam numquam earum, saepe repellendus cupiditate sed tenetur! Explicabo..',
      'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
      'Rp999.999.999 per lorem',
      'Lorem, ipsum, dolor, sit, dan amet',
      'https://loremipsum.io/',
      '999999999',
    ),
  ];
}
