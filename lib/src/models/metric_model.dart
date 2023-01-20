class MetricModel {
  double? amount;
  String? unitLong;
  String? unitShort;

  MetricModel({this.amount, this.unitLong, this.unitShort});

  MetricModel.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    unitLong = json['unitLong'];
    unitShort = json['unitShort'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['amount'] = amount;
    data['unitLong'] = unitLong;
    data['unitShort'] = unitShort;
    return data;
  }
}
