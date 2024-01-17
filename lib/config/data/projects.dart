class Projects {
  final String title;
  final List<ProjectItem> items;

  Projects({required this.title, required this.items});
}

class ProjectItem {
  final String name;
  final String link;
  final String googlePlay;
  final String macOS;
  final String windows;
  final String appStore;
  final String description;
  final List<String> badgets;

  ProjectItem({
    required this.name,
    required this.link,
    required this.googlePlay,
    required this.appStore,
    required this.description,
    required this.badgets,
    required this.macOS,
    required this.windows,
  });
}
