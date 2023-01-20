import 'package:elchef/src/models/measures_model.dart';

class ExtendedIngredients {
  String? aisle;
  double? amount;
  String? consitency;
  int? id;
  String? image;
  MeasureModel? measures;
  List<String>? meta;
  String? name;
  String? original;
  String? originalName;
  String? unit;

  ExtendedIngredients({
    this.aisle,
    this.amount,
    this.consitency,
    this.id,
    this.image,
    this.measures,
    this.meta,
    this.name,
    this.original,
    this.originalName,
    this.unit,
  });

  ExtendedIngredients.fromJson(Map<String, dynamic> json) {
    aisle = json['aisle'];
    amount = json['amount'];
    consitency = json['consitency'];
    id = json['id'];
    image = json['image'];
    measures = json['measures'] != null
        ? MeasureModel.fromJson(json['measures'])
        : null;
    meta = json['meta'].cast<String>();
    name = json['name'];
    original = json['original'];
    originalName = json['originalName'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['aisle'] = aisle;
    data['amount'] = amount;
    data['consitency'] = consitency;
    data['id'] = id;
    data['image'] = image;
    if (measures != null) {
      data['measures'] = measures!.toJson();
    }
    data['meta'] = meta;
    data['name'] = name;
    data['original'] = original;
    data['originalName'] = originalName;
    data['unit'] = unit;
    return data;
  }
}
