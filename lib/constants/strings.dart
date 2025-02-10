import 'package:portfolio_flutter/models/work_experience.dart';

class Strings {
  Strings._();

  // home:----------------------------------------------------------------------
  static const String portfolio = 'Portfolio';
  static const String this_web = 'Yes this website uses f***ing ';
  static const String cookies = 'cookies';
  static const String made_with = 'Made with';
  static const String heart = ' ❤ ';
  static const String in_flutter = 'in flutter';

  // intro:---------------------------------------------------------------------
  static const String hello = 'Hello';
  static const String i_am_kayes = '\nI am\nKayes';
  static const String design = 'DES_\nIGN';
  static const String mobile_dev = 'Mobile App Developer\nbased in Dhaka\nBangladesh.';

  // about:---------------------------------------------------------------------
  static const String about_me = 'About Me';
  static const String about = 'Ab_\nout';
  static const String me = ' Me';
  static const String headline = 'I\'am Ashfaq Kayes, Mobile App Developer from Dhaka, Bangladesh';
  static const String summary = 'Focused professional having excellent technical and communication skills, and offering 3+ years of experience in Computer industry. Proficient at designing and formulating test automation frameworks, writing code in various languages, feature development and implementation. Specialize in thinking outside the box to find unique solutions to difficult engineering problems.';

  // skills:--------------------------------------------------------------------
  static const String skills = 'Sk_\nills';
  static const String experience = 'Experience';
  static const String skills_i_have = 'What Skills I Have';
  static const String rights_reserved = '© 2019 IOTECK SOLUTIONS. ALL RIGHTS RESERVED.';

  static final skillsList = [
    'Java',
    'Kotlin',
    'Dart',
    'Flutter',
    'Android',
    'iOS',
    'Xamarin',
    'Reactive Programming',
    'Jenkins',
    'Photoshop',
    'JFrog Atrtifactory',
    'Code Magic',
  ];

  static final educationList = [
    WorkExperience(
      organization: 'TechnoNext',
      post: 'Software Engineer',
      from: 'Oct 2023',
      to: 'Present',
    ),
    WorkExperience(
      organization: 'Coder71',
      post: 'Mobile App Developer',
      from: 'Jan 2023',
      to: 'Oct 2023',
    ),
    WorkExperience(
      organization: 'Spinner Tech',
      post: 'Mobile App Developer',
      from: 'Oct 2021',
      to: 'Dec 2022',
    ),
    WorkExperience(
      organization: 'Affable Technology',
      post: 'Jr. Android Developer',
      from: 'Jan 2021',
      to: 'Sep 2021',
    ),
  ];

  // hire:----------------------------------------------------------------------
  static const String hire = 'HIRE';
  static const String always_interested = 'I\'m always interested about cool stuff. Are you minding a project?\n';
  static const String lets_talk = 'Let\'s talk.';

  // menu items:----------------------------------------------------------------
  static const String menu_facebook = 'FACEBOOK';
  static const String menu_twitter = 'TWITTER';
  static const String menu_linked_in = 'LINKEDIN';
  static const String menu_medium = ' MEDIUM ';
  static const String menu_github = 'GITHUB';
  static const String menu_mail = 'MAIL';

  // links:---------------------------------------------------------------------
  static const String menu_facebook_link = 'https://www.facebook.com/KayesAshfaq';
  static const String menu_twitter_link = 'https://twitter.com/@kayesashfaq';
  static const String menu_linked_in_link = 'https://linkedin.com/in/kayesashfaq';
  static const String menu_medium_link = 'https://medium.com/@kayes_ashfaq';
  static const String menu_github_link = 'https://github.com/KayesAshfaQ';
  static const String menu_mail_link = 'mailto:asfak7074@gmail.com';
}
