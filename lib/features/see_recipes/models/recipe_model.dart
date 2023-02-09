class RecipeModel {
  final String? name;
  final List<String> ingredients;

  RecipeModel({this.name, required this.ingredients});

  factory RecipeModel.fromJson(Map<String, dynamic> json) => RecipeModel(
        name: json['title'],
        ingredients: json['ingredients'].cast<String>(),
      );
}
