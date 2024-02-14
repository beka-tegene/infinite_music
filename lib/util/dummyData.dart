class MusicItem {
  final String artistName;
  final String title;
  final String albumName;
  final String artwork;
  final int albumId;

  MusicItem(
      this.artistName, this.title, this.albumName, this.artwork, this.albumId);
}

List<MusicItem> musicList = [
  MusicItem(
      'ROPHNAN-ሮፍናን', 'SHEGIYE-ሸግዬ', 'SOST - 3', 'lib/Images/album.jpg', 1),
  MusicItem(
      'YOHANNA-ዮሃና', 'GELAGAY-ገላጋይ', 'SOST - 3', 'lib/Images/album0.jpg', 2),
  MusicItem('ROPHNAN-ሮፍናን', 'PELE-ፔሌ', 'SOST - 3', 'lib/Images/album1.jpg', 3),
  MusicItem('HEWAN-ሄዋን', 'ARADA-አራዳ', 'SOST - 3', 'lib/Images/album2.jpg', 4),
];
