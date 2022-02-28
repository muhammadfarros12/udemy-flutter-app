import 'package:flutter/material.dart';

class ArticlePage extends StatelessWidget {
  String title =
      'Sejarah Maulid Nabi Muhammad SAW, Perayaan Hari Kelahiran Manusia Paling Mulia';

  String publish = '28 Februari 2022 | 14:36';
  String update = '28 Februari 2022 | 10:16';

  String imageCoverLink =
      'https://img.inews.co.id/media/822/files/inews_new/2021/10/19/sejarah_maulid_nabi_saw.jpg';

  String imgCoverContent =
      'Sejarah Maulid Nabi Muhammad SAW, Perayaan Hari Kelahiran Manusia Paling Mulia';

  String content = '''
  Sejarah Maulid Nabi Muhammad SAW yang diperingati tiap 12 Rabiul Awal penting diketahui Muslim. Tradisi memperingati Maulid Nabi Muhammad SAW sudah dilakukan umat Islam sejak dulu. Tahun ini, Maulid Nabi jatuh pada hari Selasa, tanggal 19 Oktober 2021. Namun, pemerintah menggeser hari libur Maulid Nabi SAW 2021 menjadi Rabu, 20 Oktober 2021 demi mencegah terjadinya klaster Covid-19. Tujuan memeringati Maulid Nabi SAW adalah dalam rangka menampakkan kegembiran atas kelahiran manusia agung pembawa rahmat alam semesta. Allah SWT berfirman:  قُلْ بِفَضْلِ اللّهِ وَبِرَحْمَتِهِ فَبِذَلِكَ فَلْيَفْرَحُواْ هُوَ خَيْرٌ مِّمَّا يَجْمَعُونَ “Katakanlah: “Dengan kurnia Allah dan rahmat-Nya, hendaklah dengan itu mereka bergembira. Kurnia Allah dan rahmat-Nya itu adalah lebih baik dari apa yang mereka kumpulkan. (QS.Yunus:58). Salah satu bentuk mengungkapkan kebahagiaan dan rasa syukur itu yakni dengan banyak membaca sholawat. Secara bahasa, sholawat berasal dari kata sholah yang berarti doa atau seruan kepada Allah SWT.   Berikut awal mula sejarah Maulid Nabi Muhammad SAW 1. Maulid Nabi Digelar Raja Al Mudhaffar Sejarah Maulid Nabi, menurut Imam al-Suyuthi seperti dikutip mui.or.id, tercatat sebagai raja pertama yang memperingati Maulid Nabi SAW atau hari kelahiran Rasulullah SAW dengan perayaan yang meriah luar biasa adalah Raja Al-Mudhaffar Abu Sa`id Kukburi ibn Zainuddin Ali bin Baktakin (l. 549 H. – w.630 H.) Tidak kurang dari 300.000 dinar beliau keluarkan dengan ikhlas untuk bersedekah pada hari peringatan maulid. Intinya menghimpun semangat juang dengan membacakan syi’ir dan karya sastra yang menceritakan kisah kelahiran Rasulullah saw
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article Page'),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  heroTag: 'notif',
                  mini: true,
                  child: const Icon(Icons.notifications),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  heroTag: 'share',
                  mini: true,
                  child: const Icon(Icons.share),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Publish: ' + publish,
                        style: const TextStyle(fontSize: 13),
                      ),
                      Text(
                        'Update: $update',
                        style: const TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark,
                      color: Colors.blue,
                    ))
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            Stack(
              children: [
                Image.network(imageCoverLink),
                Positioned(
                  top: 4,
                  right: 8,
                  child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.visibility),
                      label: const Text('Lihat Foto')),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              imgCoverContent,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              content,
              style: TextStyle(
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      )),
    );
  }
}
