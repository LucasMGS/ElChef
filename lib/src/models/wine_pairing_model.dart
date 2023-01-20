import 'package:elchef/src/models/product_match_model.dart';

class WinePairing {
  List<String>? pairedWines;
  String? pairingText;
  List<ProductMatchModel>? productMatches;

  WinePairing({this.pairedWines, this.pairingText, this.productMatches});

  WinePairing.fromJson(Map<String, dynamic> json) {
    pairedWines = json['pairedWines'].cast<String>();
    pairingText = json['pairingText'];
    if (json['productMatches'] != null) {
      productMatches = <ProductMatchModel>[];
      json['productMatches'].forEach((v) {
        productMatches!.add(ProductMatchModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pairedWines'] = pairedWines;
    data['pairingText'] = pairingText;
    if (productMatches != null) {
      data['productMatches'] = productMatches!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
