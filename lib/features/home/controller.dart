import '../../core/models/category.dart';

class HomeController {


  late Category selectedCategory;

  final List<Category> categories = [
    Category(image: 'star', title: 'Popular'),
    Category(image: 'chair', title: 'Chair'),
    Category(image: 'table', title: 'Table'),
    Category(image: 'arm_chair', title: 'Arm Chair'),
    Category(image: 'bed', title: 'Bed'),
  ];


}