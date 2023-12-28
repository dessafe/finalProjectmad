
class Planet {
  final String name;
  final String description;

  Planet({
  required this.name, 
  required this.description});
}

List<Planet> planets = [
  Planet(
    name: 'Mercury',
    description:
        'Mercury is the smallest and innermost planet in the Solar System. It is named after the Roman deity Mercury, the messenger of the gods.',
  ),
  Planet(
    name: 'Venus',
    description:
        'Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty. Venus is the second-brightest natural object in the night sky.',
  ),
  Planet(
    name: 'Earth',
    description:
        'Earth is the third planet from the Sun and the only astronomical object known to harbor life. About 29.2% of Earth\'s surface is land.',
  ),
  Planet(
    name: 'Mars',
    description:
        'Mars is the fourth planet from the Sun. It is often called the "Red Planet" because of its reddish appearance, which is caused by iron oxide on its surface.',
  ),
  Planet(
    name: 'Jupiter',
    description:
        'Jupiter is the largest planet in the Solar System. It is a gas giant with a mass more than two and a half times all of the other planets in the Solar System combined.',
  ),
  Planet(
    name: 'Saturn',
    description:
        'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is known for its stunning ring system.',
  ),
  Planet(
    name: 'Uranus',
    description:
        'Uranus is the seventh planet from the Sun. It is a gas giant and the third-largest in the Solar System. Uranus is unique among the planets because it rotates on its side.',
  ),
  Planet(
    name: 'Neptune',
    description:
        'Neptune is the eighth and farthest-known Solar planet from the Sun. It is the fourth-largest planet by diameter and the third largest by mass.',
  ),
  Planet(
    name: 'Mercury is hot, but not too hot for ice',
    description:
        'The closest planet to the Sun does indeed have ice on its surface. That sounds surprising at first glance,'
        ' but the ice is found in permanently shadowed craters — those that never receive any sunlight.'
        ' It is thought that perhaps comets delivered this ice to Mercury in the first place.',
  )
];
