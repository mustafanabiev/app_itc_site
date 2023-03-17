class DeveloperModel {
  const DeveloperModel({
    required this.name,
    required this.image,
    required this.description,
  });

  final String name;
  final String image;
  final String description;
}

const d1 = DeveloperModel(
  name: 'Mustafa Nabiev',
  image: 'images/person.png',
  description:
      'A skill is the learned ability to perform\nan action with determined results with\nExecution often Within given amount',
);

List<DeveloperModel> developers = [d1, d1, d1, d1, d1];
