class Cat {
  String nama;
  String jenis;
  String gambar;
  String detail;
  String asal;

  Cat({
    required this.nama,
    required this.jenis,
    required this.gambar,
    required this.asal,
    required this.detail,
  });

  static List<Cat> dummyData = [
    Cat(
        nama: 'Oreo',
        jenis: 'Scottish',
        gambar: 'Scottish.jpeg',
        asal: 'Skotlandia',
        detail:
            'Kucing yang memiliki bulu lebat dan panjang sehingga perlu menyisir bulunya agar tidak mudah kusut biasanya kucing ini berwarna abu abu'),
    Cat(
        nama: 'Simba',
        jenis: 'Angora',
        gambar: 'oren.jpeg',
        asal: 'Turki',
        detail:
            'Kucing yang berasal dari Turki memiliki tubuh panjang, ramping dan memiliki bulu yang lebat'),
    Cat(
        nama: 'Minie',
        jenis: 'Ragdoll',
        gambar: 'ragdoll.jpeg',
        asal: 'Riverside, California',
        detail:
            'Kucing ragdoll merupakan kucing hasil persilangan dari angora dan persia'),
    Cat(
        nama: 'Leo',
        jenis: 'Persia',
        gambar: 'persia.jpeg',
        asal: 'Iran',
        detail:
            'Kucing ragdoll merupakan kucing hasil persilangan dari angora dan persia'),
    Cat(
        nama: 'Milo',
        jenis: 'Maine Coon',
        gambar: 'mainecoon.jpeg',
        asal: 'America',
        detail:
            'Kucing ragdoll merupakan kucing hasil persilangan dari angora dan persia'),
    Cat(
        nama: 'Chole',
        jenis: 'Siamese',
        gambar: 'Siamse.jpg',
        asal: 'Thailand',
        detail:
            'Kucing Siam sangat sensitif terhadap temperatur di sekelilingnya dan tidak cocok berada di iklim yang dingin karena mantel bulu mereka yang pendek. Meskipun mereka lebih suka di lingkungan hangat, tetapi ras yang sangat cantik ini juga tidak begitu menyukai iklim yang terlalu panas.'),
    Cat(
        nama: 'Jack',
        jenis: 'Bengal',
        gambar: 'Bengal.jpg',
        asal: 'America',
        detail:
            'Keturunan kucing Bengal sangatlah cantik dan terlihat menyerupai macan tutul mini yang jinak dikarenakan bintik-bintik di tubuhnya dan bentuk badannya yang berotot'),
    Cat(
        nama: 'Smith',
        jenis: 'Burma',
        gambar: 'burma.jpeg',
        asal: 'Myanmar',
        detail:
            'kucing dengan kepribadian yang baik Sifatnya yang selalu senang dan penuh kasih sayang adalah nalurinya, kucing Burmese senang bermain dan rasa penasarannya yang tinggi membuat mereka cocok sebagai teman main untuk anak-anak'),
    Cat(
        nama: 'Spy',
        jenis: 'Sphynx',
        gambar: 'Kucing-Sphynx-.jpg',
        asal: 'Toronto, Kanada',
        detail: 'kucing yang tidak memiliki bulu ini sudah terancam punah '),
    Cat(
        nama: 'Coco',
        jenis: 'Abyssinian',
        gambar: 'abyssinian.jpg',
        asal: 'Mesir',
        detail:
            'kucing paling kuno di dunia. Mereka memiliki kecantikan yang elegan dan sifat yang ceria. '),
  ];
}
