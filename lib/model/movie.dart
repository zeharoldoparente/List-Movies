class Movie {
  String? title;
  String? contentRating;
  String? distributor;
  String? urlKey;
  String? siteURL;
  String? nationalSiteURL;
  String? siteURLByTheater;
  String? nationalSiteURLByTheater;
  String? boxOfficeId;
  String? ancineId;
  List<Images>? images;

  Movie(
      {this.title,
      this.contentRating,
      this.distributor,
      this.urlKey,
      this.siteURL,
      this.nationalSiteURL,
      this.siteURLByTheater,
      this.nationalSiteURLByTheater,
      this.boxOfficeId,
      this.ancineId,
      this.images});

  Movie.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    contentRating = json['contentRating'];
    distributor = json['distributor'];
    urlKey = json['urlKey'];
    siteURL = json['siteURL'];
    nationalSiteURL = json['nationalSiteURL'];
    siteURLByTheater = json['siteURLByTheater'];
    nationalSiteURLByTheater = json['nationalSiteURLByTheater'];
    boxOfficeId = json['boxOfficeId'];
    ancineId = json['ancineId'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['contentRating'] = contentRating;
    data['distributor'] = distributor;
    data['urlKey'] = urlKey;
    data['siteURL'] = siteURL;
    data['nationalSiteURL'] = nationalSiteURL;
    data['siteURLByTheater'] = siteURLByTheater;
    data['nationalSiteURLByTheater'] = nationalSiteURLByTheater;
    data['boxOfficeId'] = boxOfficeId;
    data['ancineId'] = ancineId;
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Images {
  String? url;
  String? type;

  Images({this.url, this.type});

  Images.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['type'] = type;
    return data;
  }
}