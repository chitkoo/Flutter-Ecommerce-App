import 'package:equatable/equatable.dart';

class CategoryModel extends Equatable {
  const CategoryModel({
    required this.name,
    required this.image,
  });

  final String name;
  final String image;

  @override
  List<Object?> get props => [name, image];

  static List<CategoryModel> categories = [
    const CategoryModel(
      name: 'smartphones',
      image:
          'https://images.unsplash.com/photo-1604671368394-2240d0b1bb6c?q=80&w=2831&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    const CategoryModel(
      name: 'laptops',
      image:
          'https://images.unsplash.com/photo-1629131726692-1accd0c53ce0?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    const CategoryModel(
      name: 'fragrances',
      image:
          'https://images.unsplash.com/photo-1557827999-c0bb00bbee13?q=80&w=2952&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
  ];
}
