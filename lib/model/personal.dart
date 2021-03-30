class Personal {
  final String name;
  final String location;
  final String job;
  final List<PersonalPoint> personalPoints;

  Personal({
    this.name,
    this.location,
    this.job,
    this.personalPoints,
  });
}

class PersonalPoint {
  final String title;
  final List<String> points;

  PersonalPoint({this.title, this.points});
}
