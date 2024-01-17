class Education {
  final String title;
  final List<Item> items;

  Education({required this.title, required this.items});
}

class Item {
  final String specialization;
  final String start;
  final String end;
  final String universityName;

  Item({
    required this.specialization,
    required this.start,
    required this.end,
    required this.universityName,
  });
}
