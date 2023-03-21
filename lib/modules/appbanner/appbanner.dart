class AppBanner {
  final String images;
  AppBanner(this.images);
}

final List<AppBanner> appbannerList = [
  AppBanner('assets/images/profil2.png'),
  AppBanner('assets/images/profil1.png'),
  AppBanner('assets/images/profil3.png'),
  AppBanner('assets/images/profil4.png'),
  AppBanner('assets/images/profil5.png'),
  AppBanner('assets/images/profil6.png'),
  AppBanner('assets/images/profil7.png'),
  AppBanner('assets/images/profil8.png'),
  AppBanner('assets/images/profil_8.png'),
  AppBanner('assets/images/profil9.png'),
  AppBanner('assets/images/profil10.png'),
];

class AssetsImages {
  const AssetsImages({
    required this.images,
    required this.name,
    required this.work,
  });

  final String images;
  final String name;
  final String work;
}

const List<AssetsImages> assetsImages = [
  AssetsImages(
    name: 'Tafhim Hasan',
    work: 'Web Devoloper',
    images: 'assets/images/image.png',
  ),
  AssetsImages(
    name: 'Sujhon Khan',
    work: 'Graphic Designer',
    images: 'assets/images/image.png',
  ),
  AssetsImages(
    name: 'Nasir jamshed',
    work: 'UI/UX Designer',
    images: 'assets/images/image.png',
  ),
  AssetsImages(
    name: 'Helal Hafiz',
    work: 'Digital Marketer',
    images: 'assets/images/imag.png',
  ),
  AssetsImages(
    name: 'Tafhim Hasan',
    work: 'Web Devoloper',
    images: 'assets/images/image.png',
  ),
  AssetsImages(
    name: 'Sujhon Khan',
    work: 'Graphic Designer',
    images: 'assets/images/image.png',
  ),
  AssetsImages(
    name: 'Nasir jamshed',
    work: 'UI/UX Designer',
    images: 'assets/images/image.png',
  ),
  AssetsImages(
    name: 'Helal Hafiz',
    work: 'Digital Marketer',
    images: 'assets/images/imag.png',
  ),
];
