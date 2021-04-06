class Personal {
  final String welcome;

  final List<PersonalPoint> personalPoints;

  Personal({
    this.welcome,
    this.personalPoints,
  });
}

class PersonalPoint {
  final String title;
  final List<String> points;

  PersonalPoint({this.title, this.points});
}
