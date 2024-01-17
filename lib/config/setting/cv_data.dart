import 'package:cv_flutter/config/data/about.dart';
import 'package:cv_flutter/config/data/data.dart';
import 'package:cv_flutter/config/data/education.dart';
import 'package:cv_flutter/config/data/header.dart';
import 'package:cv_flutter/config/data/projects.dart';
import 'package:cv_flutter/config/data/skills.dart';
import 'package:cv_flutter/config/data/work_experience.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

MyData myData = MyData(
  header: Header(
    name: "Eslam Elezaby",
    jobTitle: "Mobile App Devloper",
    bio:
        "Flutter virtuoso 🚀 | Crafting pixel-perfect magic ✨ | Turning caffeine into code"
        "☕ | Bug whisperer 🐛 | Emoji enthusiast 🤖 | #FlutterMastermind",
    location: Location(
      address: "Egypt",
      locationX: "",
      locationY: "",
    ),
    phone: Phone(code: "+20", phone: "1032390247"),
    email: "eslamelezaby98@gmail.com",
    links: [
      Links(
        "https://github.com/eslamelezaby98",
        icon: FontAwesomeIcons.github,
      ),
      Links(
        "https://www.linkedin.com/in/eslamelezaby98/",
        icon: FontAwesomeIcons.linkedin,
      ),
      Links(
        "https://medium.com/@eslamelezaby98",
        icon: FontAwesomeIcons.medium,
      ),
    ],
  ),
  about: About(
    title: "About",
    body:
        "Results-driven Flutter developer with 2 years of experience in developing and delivering high-quality"
        "mobile applications. Proficient in utilizing the Flutter framework to create cross-platform applications"
        "for iOS and Android platforms. Skilled in front-end development, UI/UX design, and integrating APIs to"
        "enhance application functionality. Strong problem-solving abilities and a passion for delivering efficient"
        "and user-friendly mobile experiences",
  ),
  workExperience: WorkExperience(
    title: "Work Experience",
    works: [
      Works(
        companyName: companyName,
        country: country,
        type: type,
        jobTitle: jobTitle,
        start: start,
        end: end,
        companySite: companySite,
        description: description,
      ),
    ],
  ),
  education: Education(
    title: "Education",
    items: [
      Item(
        specialization: "Collage degree in Marketing",
        start: "2016",
        end: "2020",
        universityName: "FACULTY OF COMMERCE - ALEXANDRIA UNIVERSITY",
      ),
    ],
  ),
  projects: Projects(
    title: "Projects",
    items: [
      ProjectItem(
        name: name,
        link: link,
        googlePlay: googlePlay,
        appStore: appStore,
        description: description,
        badgets: [],
      ),
    ],
  ),
  skills: Skills(
    title: "Skills",
    items: [
      "Unit Test",
      "Git",
      "GitHub",
      "Flutter",
      "Bloc",
      "Provider",
      "API",
      "Firebase",
    ],
  ),
);
