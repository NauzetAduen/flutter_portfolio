class UrlRepository {
  static UrlRepository _instance;

  factory UrlRepository() => _instance ??= UrlRepository._internal();

  UrlRepository._internal() {
    _instance = this;
  }

  String getUrl(String key) {
    switch (key) {
      case 'github':
        return "https://github.com/NauzetAduen";

      case 'linkedin':
        return "https://www.linkedin.com/in/nauzet-aduen-hern%C3%A1ndez-hern%C3%A1ndez-036b4118b/";
      case 'stackoverflow':
        return "https://stackoverflow.com/users/6155494/nauzet";
      case 'mail':
        return "nauzet.aduen@gmail.com";
      default:
        return "https://wwww.google.es";
    }
  }
}
