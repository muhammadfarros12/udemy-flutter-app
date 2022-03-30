class Animal {
  String name;
  String image;
  String move;
  double weight;

  Animal(
      {required this.name,
      required this.image,
      required this.move,
      required this.weight});
}

String _assetAnimal = 'asset/image/animal';

final animal = [
  Animal(
      name: 'rusa',
      image: '$_assetAnimal/rusa.jpg',
      move: 'berlari',
      weight: 56.0),
  Animal(
      name: 'beruang',
      image: '$_assetAnimal/beruang.jpg',
      move: 'berlari',
      weight: 56.0),
  Animal(
      name: 'elang',
      image: '$_assetAnimal/elang.jpg',
      move: 'berlari',
      weight: 56.0),
  Animal(
      name: 'gajah',
      image: '$_assetAnimal/gajah.jpg',
      move: 'berlari',
      weight: 56.0),
  Animal(
      name: 'harimau',
      image: '$_assetAnimal/harimau.jpg',
      move: 'berlari',
      weight: 56.0),
  Animal(
      name: 'koala',
      image: '$_assetAnimal/koala.jpg',
      move: 'berlari',
      weight: 56.0),
  Animal(
      name: 'rubah',
      image: '$_assetAnimal/rubah.jpg',
      move: 'berlari',
      weight: 56.0),
  Animal(
      name: 'tupai',
      image: '$_assetAnimal/tupai.jpg',
      move: 'berlari',
      weight: 56.0),
  Animal(
      name: 'semut',
      image: '$_assetAnimal/semut.jpg',
      move: 'berlari',
      weight: 56.0),
];
