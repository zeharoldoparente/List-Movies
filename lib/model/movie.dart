class Movie {
  String title;
  String contentRating;
  String distributor;
  String urlKey;
  String siteURL;
  String nationalSiteURL;
  String siteURLByTheater;
  String nationalSiteURLByTheater;
  String boxOfficeId;
  String ancineId;
  List<Images> images;

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

  Movie.fromJson(Map<String,dynamic> json) {
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
    // if (json['images'] != null) {
    //   images = <Images>[];
    //   json['images'].forEach((v) {
    //     images.add(Images.fromJson(v));
    //   });
    // }
  }
}
class Images {
  String url;
  String type;

  Images({this.url, this.type});

  Images.fromJson(Map<String,dynamic> json) {
    url = json['url'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String,dynamic>();
    data['url'] = this.url;
    data['type'] = this.type;
    return data;
  }
}