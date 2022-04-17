<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Kemah;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

        Kemah::create([
            'title' => 'Ranca Upas',
            'slug' => 'ranca-upas',
            'excerpt' => 'Ranca Upas menjadi tempat camping di Bandung yang sebenarnya berlokasi di tempat penangkaran rusa. ...',
            'description' => 'Ranca Upas menjadi tempat camping di Bandung yang sebenarnya berlokasi di tempat penangkaran rusa. Luasnya berkisar sekitar 215 hektar dan berada di ketinggian 1.700 meter di atas permukaan laut. Berhubung lokasinya di dataran tinggi, maka tidak mengherankan kalau cuaca di sini sangatlah dingin sehingga Moms harus menggunakan pakaian yang tebal.',
            'alamat' => 'Jalan Raya Ciwidey - Patengan No.KM. 11, Patengan,Kecamatan Rancabali, Bandung, Jawa Barat 40973',
            'harga' => 'Rp22.000 untuk wisatawan lokal dan Rp44.000 untuk wisatawan asing',
            'fasilitas' => 'Bumi Perkemahan, Kolam Renang, Kids play Ground, Penangkaran Rusa Timorensis, Warung Makan',
            'website' => 'https://www.instagram.com/ranca_upas/',
            'contact' => '0813-2373-9973',
            'image1' => '/img/rancaupas/ranca1.jpg',
            'image2' => '',
            'image3' => ''
        ]);
        
        Kemah::create([
            'title' => 'Dusun Bambu',
            'slug' => 'dusun-bambu',
            'excerpt' => 'Buat Moms yang ingin pergi berkemah dengan keluarga, Eagle Camp Dusun Bambu menjadi tempat camping ...',
            'description' => 'Buat Moms yang ingin pergi berkemah dengan keluarga, Eagle Camp Dusun Bambu menjadi tempat camping di Bandung yang cocok didatangi. Eagle Camp Dusun Bambu memiliki fasilitas yang sangat lengkap. Mulai dari perapian untuk BBQ hingga taman rekreasi yang cocok untuk buah hati bermain.',
            'alamat' => 'Jalan Kolonel Masturi No.KM. 11, Kertawangi, Kecamatan Cisarua, Kabupaten Bandung Barat, Jawa Barat 40551',
            'harga' => 'Rp15.000 per orang',
            'fasilitas' => '',
            'website' => 'https://www.instagram.com/dusun_bambu/',
            'contact' => '',
            'image1' => '/img/dusunbambu/dusun1.jpg',
            'image2' => '/img/dusunbambu/dusun2.jpg',
            'image3' => '/img/dusunbambu/dusun3.jpg'
        ]);
        
        Kemah::create([
            'title' => 'Maribaya',
            'slug' => 'maribaya',
            'excerpt' => 'Tempat camping di Bandung selanjutnya adalah The Lodge Maribaya. Tenda-tenda yang ada di sini sangat ...',
            'description' => 'Tempat camping di Bandung selanjutnya adalah The Lodge Maribaya. Tenda-tenda yang ada di sini sangat unik karena berbentuk bulat dengan bagian atas yang mengecil seperti cerobong perapian. The Lodge Maribaya ini juga punya fasilitas yang lengkap. Mulai dari water heater, perlengkapan mandi, dan lain sebagainya.',
            'alamat' => 'Jalan Maribaya No. 149/252 RT. 03 / RW. 15 Babakan, Gentong, Cibodas, Lembang, Kabupaten Bandung Barat, Jawa Barat 40391',
            'harga' => 'Rp20.000-Rp35.000 per orang',
            'fasilitas' => '',
            'website' => 'https://www.instagram.com/maribayaresort/',
            'contact' => '',
            'image1' => '/img/maribaya/mari1.jpg',
            'image2' => '/img/maribaya/mari2.jpg',
            'image3' => '/img/maribaya/mari3.jpg'
        ]);
        
        Kemah::create([
            'title' => 'Pine Forest Camp',
            'slug' => 'pine-forest-camp',
            'excerpt' => 'Pine Forest Camp adalah tempat camping di Bandung yang berada di ketinggian 1200 meter di atas ...',
            'description' => 'Pine Forest Camp adalah tempat camping di Bandung yang berada di ketinggian 1200 meter di atas permukaan laut. Tempat camping di Bandung ini berlokasi di dalam hutan pinus sehingga jika Moms berkemah di sini akan dikelilingi oleh pohon pinus. Pemandangan di sini sangat asri dan pastinya udaranya sangat sejuk.',
            'alamat' => 'Suntenjaya, Lembang, Kabupaten Bandung Barat, Jawa Barat 40391',
            'harga' => 'Rp25.000 per orang',
            'fasilitas' => '',
            'website' => 'http://www.pineforestcamp.web.id/',
            'contact' => '',
            'image1' => '/img/pineforest/pineforest1.jpg',
            'image2' => '',
            'image3' => ''
        ]);
        
        Kemah::create([
            'title' => 'Lorem ipsum',
            'slug' => 'lorem-ipsum',
            'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis harum quisquam, sequi atque ...',
            'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis harum quisquam, sequi atque illo magni, ipsa ratione unde veritatis ullam odio reiciendis, quibusdam dolore. Quis non blanditiis quam ipsum quos provident necessitatibus atque rerum inventore et, ratione laboriosam impedit officiis officia minus magni ducimus, id neque, maxime reprehenderit? Repudiandae sapiente dignissimos nobis tempora id et rem iste ab voluptas nihil suscipit aliquid atque harum cupiditate maiores quasi, ut dolorum non veniam beatae mollitia, similique molestias error? Commodi eaque ea reiciendis quas expedita officia voluptates excepturi delectus rerum reprehenderit aut animi exercitationem quisquam numquam earum, saepe repellendus cupiditate sed tenetur! Explicabo.',
            'alamat' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
            'harga' => 'Rp999.999.999 per lorem',
            'fasilitas' => 'Lorem, ipsum, dolor, sit, dan amet',
            'website' => 'https://loremipsum.io/',
            'contact' => '999999999',
            'image1' => '/img/lorem/lorem1.jpg',
            'image2' => '/img/lorem/lorem1.jpg',
            'image3' => '/img/lorem/lorem1.jpg'
        ]);
    }
}
