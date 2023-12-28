import 'package:finaltermproject/models/overview_class.dart';
import 'package:finaltermproject/models/planet_class.dart';


List<Planet> planets = [
  Planet(
    id: 1,
    name: 'MERCURY',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Mercury_in_true_color.jpg/220px-Mercury_in_true_color.jpg', 
  ),
  Planet(
    id: 2,
    name: 'VENUS',
    imageUrl: 'https://cdn.mos.cms.futurecdn.net/RifjtkFLBEFgzkZqWEh69P.jpg', 
  ),
  Planet(
    id: 3,
    name: 'EARTH',
    imageUrl: 'https://i.natgeofe.com/n/f5453fe7-0483-42f1-b3e7-160e1d2019f8/940_square.jpg', 
  ),
  Planet(
    id: 4,
    name: 'MARS',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Mars_-_August_30_2021_-_Flickr_-_Kevin_M._Gill.png/1200px-Mars_-_August_30_2021_-_Flickr_-_Kevin_M._Gill.png', 
  ),
  Planet(
    id: 5,
    name: 'JUPITER',
    imageUrl: 'https://cdn.mos.cms.futurecdn.net/Mza6ccKYF6WVrqZekTtJxN-1200-80.jpg', 
  ),
  Planet(
    id: 6,
    name: 'SATURN',
    imageUrl: 'https://cdn.britannica.com/67/21167-004-6B1CF05E/Saturn-storm-Earth-region-observations-image-Hubble-December-1-1994.jpg', 
  ),
  Planet(id: 7, 
  name: 'URANUS',
   imageUrl: 'https://ychef.files.bbci.co.uk/1280x720/p0257vk5.jpg'
   ),
   Planet(id: 8, 
   name: 'NEPTUNE', 
   imageUrl: 'https://cdn.mos.cms.futurecdn.net/PezBzd9Fehsq9XWgWMauVV-1200-80.jpg' )
];


List<Overview> overview = const [
 
  Overview(
    id: 1,
    planetID: 1,
    name: 'MERCURY',
    description: 'Mercury—the smallest planet in our solar system and nearest '
        'to the Sun—is only slightly larger than Earth\'s Moon. Its surface is covered in tens of thousands of impact craters. '
        'From the surface of Mercury, the Sun would appear more than three times as large as '
        'it does when viewed from Earth, and the sunlight would be as much as 11 times brighter. '
        'Despite its proximity to the Sun, Mercury is not the hottest planet in our solar system— that '
        'title belongs to nearby Venus, thanks to its dense atmosphere. But Mercury is the fastest planet, zipping around the Sun every 88 Earth days. '
        'Mercury is appropriately named for the swiftest of the ancient Roman gods.',
    physicalapp: 'Mercury\'s surface resembles that of Earth\'s Moon, scarred by many impact craters resulting '
        'from collisions with meteoroids and comets. Craters and features on Mercury are named after famous deceased artists, '
        'musicians, or authors, including children\'s author Dr. Seuss and dance pioneer Alvin Ailey.'
        'Mercury is one of four terrestrial planets in the Solar System, which means it is a rocky body like Earth.'
        ' It is the smallest planet in the Solar System, with an equatorial radius of 2,439.7 kilometres (1,516.0 mi)'
        'Mercury is also smaller—albeit more massive—than the largest natural satellites in the Solar System, Ganymede and Titan.'
        ' Mercury consists of approximately 70% metallic and 30% silicate material.',
    imageUrl: 'https://img.freepik.com/premium-photo/highly-detailed-mercury-planet-black-elements-this-image-furnished-by-nasa-3d-rendering_62024-120.jpg',
  ),
  Overview(
  id: 2,
  planetID: 2,
  name: 'VENUS',
  description: 'Venus is the second planet from the Sun and is often referred to as Earth\'s "sister planet" '
      'due to their similar size and composition. However, Venus has a harsh and inhospitable environment. '
      'It is known for its thick and toxic atmosphere composed mainly of carbon dioxide.',
  physicalapp: 'Venus has a rocky surface with mountains and highland regions. The planet is extremely hot, '
      'with surface temperatures that can melt lead. Venus experiences a runaway greenhouse effect, trapping heat '
      'from the Sun and making it the hottest planet in our solar system.',
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Venus_-_December_23_2016.png/220px-Venus_-_December_23_2016.png',
),
Overview(
  id: 3,
  planetID: 3,
  name: 'EARTH',
  description: 'Earth is the third planet from the Sun and the only known celestial body to support life. '
      'It has a diverse and complex ecosystem, featuring oceans, landmasses, and a variety of climates. Earth is '
      'characterized by its abundant water, essential for life as we know it.',
  physicalapp: 'Earth has a diverse geography, including mountains, plains, and deep oceans. It is the only planet '
      'known to have liquid water on its surface. The atmosphere consists mainly of nitrogen and oxygen, supporting '
      'a wide range of life forms.',
  imageUrl: 'https://cdn.britannica.com/31/160431-050-C38A5086/Image-Earth-Russian-Elektro-L-weather-satellite-2012.jpg',
),

Overview(
  id: 4,
  planetID: 4,
  name: 'MARS',
  description: 'Mars is the fourth planet from the Sun and is often called the "Red Planet" due to its reddish appearance. '
      'It has a thin atmosphere and is known for its surface features, including mountains, valleys, and polar ice caps.',
  physicalapp: 'Mars has a rusty-colored surface, primarily composed of iron oxide. The planet has the largest volcano '
      'and canyon in our solar system, Olympus Mons and Valles Marineris, respectively. Mars is a target for future '
      'human exploration.',
  imageUrl: 'https://cdn.mos.cms.futurecdn.net/BiH44Z2Wd9PS55wXBuQK8H.jpg',
),

Overview(
  id: 5,
  planetID: 5,
  name: 'JUPITER',
  description: 'Jupiter is the largest planet in our solar system, known for its massive size and powerful magnetic field. '
      'It is composed mostly of hydrogen and helium and has a banded appearance with a prominent Great Red Spot, a giant storm.',
  physicalapp: 'Jupiter has a thick atmosphere with colorful cloud bands. It is home to the largest moon in our solar system, '
      'Ganymede. Jupiter is powerful magnetic field makes it a unique and intriguing object of study.',
  imageUrl: 'https://ca-times.brightspotcdn.com/dims4/default/d89fccd/2147483647/strip/false/crop/1525x1525+0+0/resize/1486x1486!/quality/75/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F97%2Fdf%2Facecba9ca7df1280decf13ff3d31%2F50625a6906ec471d94917b94733da298',
),

Overview(
  id: 6,
  planetID: 6,
  name: 'SATURN',
  description: 'Saturn is known for its stunning ring system, which consists of icy particles and rock fragments. It is the '
      'sixth planet from the Sun and has a distinctive golden color. Saturn is primarily composed of hydrogen and helium.',
  physicalapp: 'Saturn rings are made up of countless individual ringlets. The planet has a complex system of moons, including '
      'the large moon Titan. Saturn unique appearance makes it a favorite among astronomers and space enthusiasts.',
  imageUrl: 'https://saltwire.imgix.net/2023/6/1/atlantic-skies-vanishing-before-our-eyes-saturns-magnificent-_HESrVYT.jpg?cs=srgb&auto=compress%2Cformat%2Cenhance',
),

Overview(
  id: 7,
  planetID: 7,
  name: 'URANUS',
  description: 'Uranus is the seventh planet from the Sun and is known for its unique sideways rotation, making it appear to roll '
      'along its orbit. It is composed mainly of hydrogen, helium, and methane. Uranus is a gas giant similar to Jupiter and Saturn.',
  physicalapp: 'Uranus has a blue-green color due to the presence of methane in its atmosphere. It has a ring system, though not as '
      'prominent as Saturn\'s. Uranus has a set of 13 known moons.',
  imageUrl: 'https://i.natgeofe.com/k/05cb4d03-5a7f-4cd1-8f6d-3065b3b69c94/uranus-planet_square.jpg',
),

Overview(
  id: 8,
  planetID: 8,
  name: 'NEPTUNE',
  description: 'Neptune is the eighth and farthest planet from the Sun in our solar system. It is a gas giant with a bluish color, '
      'similar to Uranus. Neptune has a dynamic atmosphere with fast-moving clouds and a prominent dark storm called the Great Dark Spot.',
  physicalapp: 'Neptune atmosphere is composed of hydrogen, helium, and methane.It has a strong magnetic field and a complex system '
      'of rings and moons. Neptune is a fascinating world that continues to be explored through telescopes and space probes.',
  imageUrl: 'https://cdn.mos.cms.futurecdn.net/PezBzd9Fehsq9XWgWMauVV-1200-80.jpg',
),


];
List<Overview> getOverviewsForPlanet(int planetID) {
  return overview.where((overview) => overview.planetID == planetID).toList();
}
