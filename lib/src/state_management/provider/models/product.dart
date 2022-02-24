class Product {
  String? id;
  String? name;
  String? description;
  String? brand;
  String? price;
  String? category;
  Product(
      {this.id,
      this.name,
      this.description,
      this.brand,
      this.price,
      this.category});
  Product.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        description = json['description'],
        brand = json['brand'],
        price = json['price'],
        category = json['category'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'brand': brand,
        'price': price,
        'category': category,
      };
}
