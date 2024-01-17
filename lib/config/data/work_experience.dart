class WorkExperience {
  final String title;
  final List<Works> works;

  WorkExperience({
    required this.title,
    required this.works,
  });
}

class Works {
  final String companyName;
  final String country;
  final String type;
  final String jobTitle;
  final String start;
  final String end;
  final String description;
  final String companySite;

  Works({
    required this.companyName,
    required this.country,
    required this.type,
    required this.jobTitle,
    required this.start,
    required this.end,
    required this.companySite,
    required this.description,
  });
}
