import 'package:qshop/models/categories_model.dart';
import 'package:qshop/services/asset_manager.dart';

class AppConsts {
  static List<CategoriesModel> categoriesList = [
    CategoriesModel(
      id: "elc",
      name: "Electronics",
      image: AssetManager.electronics,
    ),
    CategoriesModel(id: "bks", name: "Books", image: AssetManager.book),
    CategoriesModel(
      id: "csmtcs",
      name: "Cosmetics",
      image: AssetManager.cosmetics,
    ),
    CategoriesModel(id: "fsn", name: "Fashion", image: AssetManager.fashion),
    CategoriesModel(id: "mbl", name: "Mobiles", image: AssetManager.mobiles),
    CategoriesModel(id: "pcs", name: "PCs", image: AssetManager.pc),
    CategoriesModel(id: "shs", name: "Shoes", image: AssetManager.shoes),
    CategoriesModel(id: "wtch", name: "Watches", image: AssetManager.watch),
  ];
}
