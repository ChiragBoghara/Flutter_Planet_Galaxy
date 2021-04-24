class Planet {
  String name;
  String imgPath;
  String distanceFromEarth;
  String distanceFromSun;
  String overview;
  String distance;
  String gravity;
  Planet(
      {this.name,
      this.imgPath,
      this.distanceFromEarth,
      this.distanceFromSun,
      this.overview,
      this.distance,
      this.gravity});
}

List<Planet> allPlanets = [
  Planet(
    name: 'Mercury',
    distanceFromSun: '57.91 million km',
    distanceFromEarth: '198.15 million km',
    overview:
        "Zipping around the sun in only 88 days, Mercury is the closest planet to the sun, and it's also the smallest, only a little bit larger than Earth's moon. Because its so close to the sun (about two-fifths the distance between Earth and the sun), Mercury experiences dramatic changes in its day and night temperatures: Day temperatures can reach a scorching 840  F (450 C), which is hot enough to melt lead. Meanwhile on the night side, temperatures drop to minus 290 F (minus 180 C).",
    imgPath: 'assets/images/mercury.png',
    distance: "54.6m Km",
    gravity: "3.711 m/s ",
  ),
  Planet(
    name: 'Earth',
    distanceFromSun: '149.6 million km',
    distanceFromEarth: '0',
    overview:
        "The third planet from the sun, Earth is a waterworld, with two-thirds of the planet covered by ocean. It's the only world known to harbor life. Earth's atmosphere is rich in nitrogen and oxygen. Earth's surface rotates about its axis at 1,532 feet per second (467 meters per second) — slightly more than 1,000 mph (1,600 kph) — at the equator. The planet zips around the sun at more than 18 miles per second (29 km per second).",
    imgPath: 'assets/images/earth.png',
    distance: "64.6m Km",
    gravity: "5.711 m/s ",
  ),
  Planet(
    name: 'Mars',
    distanceFromSun: '227.9 million km',
    distanceFromEarth: '290.22 million km',
    overview:
        "The fourth planet from the sun is Mars, and it's a cold, desert-like place covered in dust. This dust is made of iron oxides, giving the planet its iconic red hue. Mars shares similarities with Earth: It is rocky, has mountains, valleys and canyons, and storm systems ranging from localized tornado-like dust devils to planet-engulfing dust storms. ",
    imgPath: 'assets/images/mars.png',
    distance: "78.6m Km",
    gravity: "7.411 m/s ",
  ),
  Planet(
    name: 'Neptune',
    distanceFromSun: '4.495 billion km',
    distanceFromEarth: '4.5924 billion km',
    overview:
        "The eighth planet from the sun, Neptune is about the size of Uranus and is known for supersonic strong winds. Neptune is far out and cold. The planet is more than 30 times as far from the sun as Earth. Neptune was the first planet predicted to exist by using math, before it was visually detected. Irregularities in the orbit of Uranus led French astronomer Alexis Bouvard to suggest some other planet might be exerting a gravitational tug.",
    imgPath: 'assets/images/neptune.png',
    distance: "88.9m Km",
    gravity: "8.411 m/s ",
  ),
  Planet(
    name: 'Moon',
    distanceFromSun: '384400 km',
    distanceFromEarth: '150 million km',
    overview:
        "Moons – also known as natural satellites – orbit planets and asteroids in our solar system. Earth has one moon, and there are more than 200 moons in our solar system. Most of the major planets – all except Mercury and Venus – have moons. Pluto and some other dwarf planets, as well as many asteroids, also have small moons.Saturn and Jupiter have the most moons, with dozens orbiting each of the two giant planets.Moons come in many shapes, sizes, and types.",
    imgPath: 'assets/images/moon.png',
    distance: "102.8m Km",
    gravity: "9.711 m/s ",
  ),
];
