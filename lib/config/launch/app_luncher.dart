import 'package:url_launcher/url_launcher.dart';

class AppLaunch {
  static Future openLink(String link) async {
    await launchUrl(
      Uri.parse(link),
      webOnlyWindowName: "_blank",
    );
  }
}
