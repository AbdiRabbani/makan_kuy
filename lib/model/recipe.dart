class Resep {
  final String title;
  final String rating;
  final String imgPoster;
  final String portion;
  final String minute;
  final String overview;

  Resep({
    required this.title,
    required this.rating,
    required this.imgPoster,
    required this.portion,
    required this.minute,
    required this.overview,
  });

  get length => null;
}

var beingPopular = [
  Resep(
    title: "Semur ayam bangka",
    rating: "7.5",
    imgPoster:
        "https://www.masakapahariini.com/wp-content/uploads/2019/11/cara-membuat-semur-ayam-bangka-400x240.jpg",
    minute: '1 Jam',
    portion: '4 Orang',
    overview: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Resep(
    title: 'Resep oncom tumis',
    rating: '8.0',
    imgPoster:
        'https://www.masakapahariini.com/wp-content/uploads/2019/06/oncom-tumis-pedas_edited-400x240.jpg',
    overview: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    portion: '4 Porsi',
    minute: '50 Menit',
  ),
  Resep(
    title: 'Singkong thailand saus tomat',
    rating: '7.0',
    imgPoster:
        'https://www.masakapahariini.com/wp-content/uploads/2021/05/singkong-thailand-400x240.jpg',
    portion: '4 Porsi',
    minute: '1 Jam 30mnt',
    overview: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Resep(
    title: 'Tuna saus katsu lada hitam',
    rating: '7.5',
    imgPoster:
        'https://www.masakapahariini.com/wp-content/uploads/2018/10/tuna-katsu-saus-lada-hitam-400x240.jpg',
    portion: '2 Porsi',
    minute: '1 Jam',
    overview: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
];

var newFood = [
  Resep(
    title: 'Cumi saus padang',
    rating: '9.0',
    imgPoster:
        'https://www.masakapahariini.com/wp-content/uploads/2020/11/cumi-saus-padang-400x240.jpg',
    portion: '4 Porsi',
    minute: '45 Menit',
    overview: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Resep(
    title: 'Sayur asem tempe teri',
    rating: '6.5',
    imgPoster:
        'https://www.masakapahariini.com/wp-content/uploads/2018/08/sayur_asam_MAHI-400x240.jpg',
    portion: '3 Porsi',
    minute: '45 Menit',
    overview: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Resep(
    title: 'Nasi telur pontianak',
    rating: '7.0',
    imgPoster:
        'https://www.masakapahariini.com/wp-content/uploads/2020/07/nasi-telur-pontianak-disajikan-400x240.jpg',
    portion: '2 Porsi',
    minute: '15 Menit',
    overview: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Resep(
    title: 'Santai pentul kambing',
    rating: '8.5',
    imgPoster:
        'https://www.masakapahariini.com/wp-content/uploads/2018/08/satai-pentul-kambing-400x240.jpg',
    portion: '4 Porsi',
    minute: '1 Jam',
    overview: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
];

var mostSelling = [
  Resep(
    title: 'Siomay tempe udang',
    rating: '7.7',
    imgPoster:
        'https://www.masakapahariini.com/wp-content/uploads/2018/07/siomay_tempe_MAHI-400x240.jpg',
    portion: '3 Porsi',
    minute: '1 Jam 30mnt',
    overview: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Resep(
    title: 'Nugget tahu udang jamur',
    rating: '8.5',
    imgPoster:
        'https://www.masakapahariini.com/wp-content/uploads/2020/08/Nugget-Tahu-400x240.jpg',
    portion: '4 Porsi',
    minute: '1 Jam 15mnt',
    overview: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Resep(
    title: 'Bebek betutu',
    rating: '7.8',
    imgPoster:
        'https://www.masakapahariini.com/wp-content/uploads/2021/07/Bebek-Betutu-rumah-makan-Bali-400x240.jpg',
    portion: '4 Porsi',
    minute: '1 Jam 30mnt',
    overview: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
  Resep(
    title: 'Kue pancong gurih',
    rating: '7.5',
    imgPoster:
        'https://www.masakapahariini.com/wp-content/uploads/2022/04/resep-kue-pancong-gurih-disajikan-400x240.jpg',
    portion: '4 Porsi',
    minute: '1 Jam',
    overview: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  ),
];
