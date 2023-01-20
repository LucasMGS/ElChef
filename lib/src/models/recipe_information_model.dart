import 'package:elchef/src/models/analyzed_instruction_model.dart';
import 'package:elchef/src/models/extended_ingredients_model.dart';
import 'package:elchef/src/models/wine_pairing_model.dart';

class RecipeInformation {
  int? id;
  String? title;
  String? image;
  String? imageType;
  int? servings;
  int? readyInMinutes;
  String? license;
  String? sourceName;
  String? sourceUrl;
  String? spoonacularSourceUrl;
  int? aggregateLikes;
  int? healthScore;
  int? spoonacularScore;
  double? pricePerServing;
  List<AnalyzedInstructionModel>? analyzedInstructions;
  bool? cheap;
  String? creditsText;
  List<String>? cuisines;
  bool? dairyFree;
  List<String>? diets;
  String? gaps;
  bool? glutenFree;
  String? instructions;
  bool? ketogenic;
  bool? lowFodmap;
  // List<Null>? occasions;
  bool? sustainable;
  bool? vegan;
  bool? vegetarian;
  bool? veryHealthy;
  bool? veryPopular;
  bool? whole30;
  int? weightWatcherSmartPoints;
  List<String>? dishTypes;
  List<ExtendedIngredients>? extendedIngredients;
  String? summary;
  WinePairing? winePairing;

  RecipeInformation(
      {this.id,
      this.title,
      this.image,
      this.imageType,
      this.servings,
      this.readyInMinutes,
      this.license,
      this.sourceName,
      this.sourceUrl,
      this.spoonacularSourceUrl,
      this.aggregateLikes,
      this.healthScore,
      this.spoonacularScore,
      this.pricePerServing,
      this.analyzedInstructions,
      this.cheap,
      this.creditsText,
      this.cuisines,
      this.dairyFree,
      this.diets,
      this.gaps,
      this.glutenFree,
      this.instructions,
      this.ketogenic,
      this.lowFodmap,
      // this.occasions,
      this.sustainable,
      this.vegan,
      this.vegetarian,
      this.veryHealthy,
      this.veryPopular,
      this.whole30,
      this.weightWatcherSmartPoints,
      this.dishTypes,
      this.extendedIngredients,
      this.summary,
      this.winePairing});

  RecipeInformation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    imageType = json['imageType'];
    servings = json['servings'];
    readyInMinutes = json['readyInMinutes'];
    license = json['license'];
    sourceName = json['sourceName'];
    sourceUrl = json['sourceUrl'];
    spoonacularSourceUrl = json['spoonacularSourceUrl'];
    aggregateLikes = json['aggregateLikes'];
    healthScore = json['healthScore'];
    spoonacularScore = json['spoonacularScore'];
    pricePerServing = json['pricePerServing'];
    if (json['analyzedInstructions'] != null) {
      analyzedInstructions = <AnalyzedInstructionModel>[];
      json['analyzedInstructions'].forEach((v) {
        analyzedInstructions!.add(AnalyzedInstructionModel.fromJson(v));
      });
    }
    cheap = json['cheap'];
    creditsText = json['creditsText'];
    if (json['cuisines'] != null) {
      cuisines = <String>[];
      json['cuisines'].forEach((v) {
        cuisines!.add(v);
      });
    }
    dairyFree = json['dairyFree'];
    if (json['diets'] != null) {
      diets = <String>[];
      json['diets'].forEach((v) {
        diets!.add(v);
      });
    }
    gaps = json['gaps'];
    glutenFree = json['glutenFree'];
    instructions = json['instructions'];
    ketogenic = json['ketogenic'];
    lowFodmap = json['lowFodmap'];
    // if (json['occasions'] != null) {
    //   occasions = <Null>[];
    //   json['occasions'].forEach((v) {
    //     occasions!.add(new Null.fromJson(v));
    //   });
    // }
    sustainable = json['sustainable'];
    vegan = json['vegan'];
    vegetarian = json['vegetarian'];
    veryHealthy = json['veryHealthy'];
    veryPopular = json['veryPopular'];
    whole30 = json['whole30'];
    weightWatcherSmartPoints = json['weightWatcherSmartPoints'];
    dishTypes = json['dishTypes'].cast<String>();
    if (json['extendedIngredients'] != null) {
      extendedIngredients = <ExtendedIngredients>[];
      json['extendedIngredients'].forEach((v) {
        extendedIngredients!.add(ExtendedIngredients.fromJson(v));
      });
    }
    summary = json['summary'];
    winePairing = json['winePairing'] != null
        ? WinePairing.fromJson(json['winePairing'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['image'] = image;
    data['imageType'] = imageType;
    data['servings'] = servings;
    data['readyInMinutes'] = readyInMinutes;
    data['license'] = license;
    data['sourceName'] = sourceName;
    data['sourceUrl'] = sourceUrl;
    data['spoonacularSourceUrl'] = spoonacularSourceUrl;
    data['aggregateLikes'] = aggregateLikes;
    data['healthScore'] = healthScore;
    data['spoonacularScore'] = spoonacularScore;
    data['pricePerServing'] = pricePerServing;
    if (analyzedInstructions != null) {
      data['analyzedInstructions'] =
          analyzedInstructions!.map((v) => v.toJson()).toList();
    }
    data['cheap'] = cheap;
    data['creditsText'] = creditsText;
    if (cuisines != null) {
      data['cuisines'] = cuisines!.map((v) => v).toList();
    }
    data['dairyFree'] = dairyFree;
    if (diets != null) {
      data['diets'] = diets!.map((v) => v).toList();
    }
    data['gaps'] = gaps;
    data['glutenFree'] = glutenFree;
    data['instructions'] = instructions;
    data['ketogenic'] = ketogenic;
    data['lowFodmap'] = lowFodmap;
    // if (this.occasions != null) {
    //   data['occasions'] = this.occasions!.map((v) => v.toJson()).toList();
    // }
    data['sustainable'] = sustainable;
    data['vegan'] = vegan;
    data['vegetarian'] = vegetarian;
    data['veryHealthy'] = veryHealthy;
    data['veryPopular'] = veryPopular;
    data['whole30'] = whole30;
    data['weightWatcherSmartPoints'] = weightWatcherSmartPoints;
    data['dishTypes'] = dishTypes;
    if (extendedIngredients != null) {
      data['extendedIngredients'] =
          extendedIngredients!.map((v) => v.toJson()).toList();
    }
    data['summary'] = summary;
    if (winePairing != null) {
      data['winePairing'] = winePairing!.toJson();
    }
    return data;
  }
}
