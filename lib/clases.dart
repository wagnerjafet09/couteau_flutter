class University {
  final String name;
  final String domain;
  final String webPage;

  University({required this.name, required this.domain, required this.webPage});

  factory University.fromJson(Map<String, dynamic> json) {
    return University(
      name: json['name'],
      domain: json['domains'][0],
      webPage: json['web_pages'][0],
    );
  }
}

class Weather {
  final String cityName;
  final double temperature;

  Weather({
    required this.cityName,
    required this.temperature,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['location']['name'] ?? '',
      temperature: double.parse(json['current']['temp_c'].toString()),
    );
  }
}

class AgePrediction {
  final String name;
  final int age;

  AgePrediction({required this.name, required this.age});

  factory AgePrediction.fromJson(Map<String, dynamic> json) {
    return AgePrediction(
      name: json['name'],
      age: json['age'],
    );
  }
}

class Post {
  final String title;
  final String summary;
  final String url;

  Post({
    required this.title,
    required this.summary,
    required this.url,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      title: json['title']['rendered'],
      summary: json['excerpt']['rendered'],
      url: json['link'],
    );
  }
}
