import 'package:flavel/models/category_model.dart';
import 'package:flavel/models/galery_model.dart';

class ProductModel{
  int? id;
  String? name;
  String? description;
  String? tags;
  double? price;
  CategoryModel? category;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<GaleryModel>? galery;

  ProductModel({
    this.id,
    this.name,
    this.description,
    this.tags,
    this.price,
    this.category,
    this.createdAt,
    this.updatedAt,
    this.galery,
  });
  
  ProductModel.fromJson(Map<String, dynamic>json){
    id = json['id'];
    name = json['name'];
    description = json['description'];
    tags = json['tags'];
    price = double.parse(json['price'].toString());
    category = CategoryModel.fromJson(json['category']) ;
    createdAt = DateTime.parse(json['created_at']);
    updatedAt = DateTime.parse(json['updated_at']);
    galery = json['galleries'].map<GaleryModel>((g) => GaleryModel.fromJson(g)).toList();
  }

  Map<String, dynamic>toJson (){
    return {
      'id': id,
      'name': name,
      'description': description,
      'tags': tags,
      'price': price,
      'category': category?.toJson(),
      'createdAt': createdAt.toString(),
      'updatedAt': updatedAt.toString(),
      'galery': galery?.map((g) => g.toJson()).toList(),
    };
  }
}