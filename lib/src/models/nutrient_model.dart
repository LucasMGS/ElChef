class Nutrients {
  String? name;
  double? amount;
  String? unit;
  double? percentOfDailyNeeds;

  Nutrients({this.name, this.amount, this.unit, this.percentOfDailyNeeds});

  Nutrients.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    amount = json['amount'];
    unit = json['unit'];
    percentOfDailyNeeds = json['percentOfDailyNeeds'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['amount'] = amount;
    data['unit'] = unit;
    data['percentOfDailyNeeds'] = percentOfDailyNeeds;
    return data;
  }
}
