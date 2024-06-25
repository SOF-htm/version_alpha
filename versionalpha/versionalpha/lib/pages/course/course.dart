class Course {
  final String name;
  final String price;
  final String imagePath;
  final String description;

  Course(String imagePath, 
    {required this.name,
    required this.price,
    required this.imagePath,
    required this.description}
  );
}