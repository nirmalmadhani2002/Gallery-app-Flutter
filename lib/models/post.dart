class ImageModel {
  final String imageUrl;
  final String imageUel1;
  final String imageUel2;
  final String imageUel3;
  final String imageUel4;
  final String imageUel5;
  final String imageUel6;
  final String imageUel7;
  final String imageUel8;
  final String imageUel9;
  final String imageUel10;
  final String imageUel11;
  final String imageUel12;
  final String imageUel13;
  final String imageUel14;
  final String imageUel15;
  final String imageUel16;
  final String imageUel17;
  final String imageUel18;
  final String imageUel19;

  ImageModel({
    required this.imageUrl,
    required this.imageUel1,
    required this.imageUel2,
    required this.imageUel3,
    required this.imageUel4,
    required this.imageUel5,
    required this.imageUel6,
    required this.imageUel7,
    required this.imageUel8,
    required this.imageUel9,
    required this.imageUel10,
    required this.imageUel11,
    required this.imageUel12,
    required this.imageUel13,
    required this.imageUel14,
    required this.imageUel15,
    required this.imageUel16,
    required this.imageUel17,
    required this.imageUel18,
    required this.imageUel19,
  });

  factory ImageModel.fromJson({required Map json}) {
    return ImageModel(
      imageUrl: json['hits'][0]['largeImageURL'],
      imageUel1: json['hits'][1]['largeImageURL'],
      imageUel2: json['hits'][2]['largeImageURL'],
      imageUel3: json['hits'][3]['largeImageURL'],
      imageUel4: json['hits'][4]['largeImageURL'],
      imageUel5: json['hits'][5]['largeImageURL'],
      imageUel6: json['hits'][6]['largeImageURL'],
      imageUel7: json['hits'][7]['largeImageURL'],
      imageUel8: json['hits'][8]['largeImageURL'],
      imageUel9: json['hits'][9]['largeImageURL'],
      imageUel10: json['hits'][10]['largeImageURL'],
      imageUel11: json['hits'][11]['largeImageURL'],
      imageUel12: json['hits'][12]['largeImageURL'],
      imageUel13: json['hits'][13]['largeImageURL'],
      imageUel14: json['hits'][14]['largeImageURL'],
      imageUel15: json['hits'][15]['largeImageURL'],
      imageUel16: json['hits'][16]['largeImageURL'],
      imageUel17: json['hits'][17]['largeImageURL'],
      imageUel18: json['hits'][18]['largeImageURL'],
      imageUel19: json['hits'][19]['largeImageURL'],
    );
  }
}
