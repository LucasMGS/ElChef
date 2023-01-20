import 'package:elchef/src/models/metric_model.dart';

class MeasureModel {
  MetricModel? metric;
  MetricModel? us;

  MeasureModel({this.metric, this.us});

  MeasureModel.fromJson(Map<String, dynamic> json) {
    metric =
        json['metric'] != null ? MetricModel.fromJson(json['metric']) : null;
    us = json['us'] != null ? MetricModel.fromJson(json['us']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (metric != null) {
      data['metric'] = metric!.toJson();
    }
    if (us != null) {
      data['us'] = us!.toJson();
    }
    return data;
  }
}
