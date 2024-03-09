class Usd {
  String p;

  Usd(this.p);

  factory Usd.fromMapJson(Map<String, dynamic> jsonMapObject1) {
    return Usd(jsonMapObject1['p']);
  }
}
