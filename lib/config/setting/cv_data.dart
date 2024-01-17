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
    phone: Phone(code: "+20", number: "1032390247"),
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
        companyName: "Stoork",
        country: "Turkey",
        type: "Remote",
        jobTitle: "Mobile App Developer",
        start: "2023",
        end: "Present",
        companySite: "",
        description:
            "I played a pivotal role in creating and maintaining mobile applications for Stork company. Working"
            "remotely, I effectively collaborated with cross-functional teams to deliver high-quality mobile applications"
            "and contribute to the success of various projects",
      ),
      Works(
        companyName: "ECMPP",
        country: "Egypt",
        type: "Full Time",
        jobTitle: "Mobile App Developer",
        start: "2022",
        end: "2024",
        companySite: "https://www.ecmpp.com/#/home",
        description:
            " Implemented UI/UX designs, translating wireframes and mockups into interactive and visually appealing"
            "mobile interfaces. We integrated RESTful APIs to fetch and display real-time dynamic data, improving application"
            "functionality and user experience.",
      ),
      Works(
        companyName: "Freelancer",
        country: "",
        type: "Freelancer",
        jobTitle: "Mobile App Developer",
        start: "2020",
        end: "2022",
        companySite: "https://www.freelancer.com/",
        description:
            "Collaborated closely with clients to understand project requirements, translate concepts into technical"
            " specifications, and provide regular progress updates. Actively engaged in client communication, addressing feedback, and incorporating requested changes"
            " to meet their specific requirements.",
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
        name: "Zone",
        link: "",
        googlePlay:
            "https://play.google.com/store/apps/details?id=com.ecmpp.zone.app",
        appStore: "https://apps.apple.com/us/app/zone-office/id6446050733",
        description:
            "Zone is more than just an app; it's your engineering partner. It simplifies the process, saves you time and resources, and gives you the confidence to bring your ideas to life.",
        badgets: [
          "Firebase",
          "API",
          "Agora",
          "Pusher",
        ],
      ),
      ProjectItem(
        name: "Zone",
        link: "",
        googlePlay: "",
        appStore: "",
        description: "",
        badgets: [],
      ),
      ProjectItem(
        name: "Zone",
        link: "",
        googlePlay: "",
        appStore: "",
        description: "",
        badgets: [],
      ),
      ProjectItem(
        name: "Zone",
        link: "",
        googlePlay: "",
        appStore: "",
        description: "",
        badgets: [],
      ),
      ProjectItem(
        name: "Zone",
        link: "",
        googlePlay: "",
        appStore: "",
        description: "",
        badgets: [],
      ),
      ProjectItem(
        name: "Zone",
        link: "",
        googlePlay: "",
        appStore: "",
        description: "",
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
