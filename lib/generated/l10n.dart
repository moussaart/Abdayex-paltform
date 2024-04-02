// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `ABDAYEX`
  String get appName {
    return Intl.message(
      'ABDAYEX',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `==========================================================================================`
  String get _home {
    return Intl.message(
      '==========================================================================================',
      name: '_home',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to  ABDAYEX  platform`
  String get Pr_title {
    return Intl.message(
      'Welcome to  ABDAYEX  platform',
      name: 'Pr_title',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to the fascinating world of knowledge! We are here to provide you with a leading educational platform that combines fun and learning. Teachers can enhance their teaching methods by sharing their experiences and creativity. Meanwhile, students can enjoy engaging lessons and exciting educational games, helping them acquire knowledge inside and outside the school walls.`
  String get Pr_line_1 {
    return Intl.message(
      'Welcome to the fascinating world of knowledge! We are here to provide you with a leading educational platform that combines fun and learning. Teachers can enhance their teaching methods by sharing their experiences and creativity. Meanwhile, students can enjoy engaging lessons and exciting educational games, helping them acquire knowledge inside and outside the school walls.',
      name: 'Pr_line_1',
      desc: '',
      args: [],
    );
  }

  /// `We open the doors to knowledge in an enjoyable and engaging manner, offering unique learning experiences that foster understanding and stimulate exploration. Whether you are a student looking for additional motivation or a teacher seeking to improve your skills, we provide modern and effective tools to maximize the learning process.`
  String get Pr_line_2 {
    return Intl.message(
      'We open the doors to knowledge in an enjoyable and engaging manner, offering unique learning experiences that foster understanding and stimulate exploration. Whether you are a student looking for additional motivation or a teacher seeking to improve your skills, we provide modern and effective tools to maximize the learning process.',
      name: 'Pr_line_2',
      desc: '',
      args: [],
    );
  }

  /// `Join us on a journey of knowledge and creativity, where education meets entertainment and results in unforgettable learning experiences. With our platform, there are no limits to knowledge and fun.`
  String get Pr_line_3 {
    return Intl.message(
      'Join us on a journey of knowledge and creativity, where education meets entertainment and results in unforgettable learning experiences. With our platform, there are no limits to knowledge and fun.',
      name: 'Pr_line_3',
      desc: '',
      args: [],
    );
  }

  /// `Our Services`
  String get Solution_title {
    return Intl.message(
      'Our Services',
      name: 'Solution_title',
      desc: '',
      args: [],
    );
  }

  /// `Our services aim to make the learning journey enjoyable and effective through a diverse range of offerings.`
  String get Solution_Prestation {
    return Intl.message(
      'Our services aim to make the learning journey enjoyable and effective through a diverse range of offerings.',
      name: 'Solution_Prestation',
      desc: '',
      args: [],
    );
  }

  /// `Distinctive Lessons and Exercises`
  String get Solution_item_1 {
    return Intl.message(
      'Distinctive Lessons and Exercises',
      name: 'Solution_item_1',
      desc: '',
      args: [],
    );
  }

  /// `We offer outstanding lessons and exercises prepared by experienced teachers to ensure comprehensive understanding and deep absorption of educational materials.`
  String get Solution_line_1 {
    return Intl.message(
      'We offer outstanding lessons and exercises prepared by experienced teachers to ensure comprehensive understanding and deep absorption of educational materials.',
      name: 'Solution_line_1',
      desc: '',
      args: [],
    );
  }

  /// `Interactive Educational Content`
  String get Solution_item_2 {
    return Intl.message(
      'Interactive Educational Content',
      name: 'Solution_item_2',
      desc: '',
      args: [],
    );
  }

  /// `We provide interactive educational content that promotes learning experiences and encourages active student participation.`
  String get Solution_line_2 {
    return Intl.message(
      'We provide interactive educational content that promotes learning experiences and encourages active student participation.',
      name: 'Solution_line_2',
      desc: '',
      args: [],
    );
  }

  /// `Inspiring Educational Experience`
  String get Solution_item_3 {
    return Intl.message(
      'Inspiring Educational Experience',
      name: 'Solution_item_3',
      desc: '',
      args: [],
    );
  }

  /// `We strive to deliver an inspiring and motivating educational experience, where students feel enthusiasm and curiosity to continue their journey in the world of knowledge.`
  String get Solution_line_3 {
    return Intl.message(
      'We strive to deliver an inspiring and motivating educational experience, where students feel enthusiasm and curiosity to continue their journey in the world of knowledge.',
      name: 'Solution_line_3',
      desc: '',
      args: [],
    );
  }

  /// `Periodic Educational Content`
  String get Solution_item_4 {
    return Intl.message(
      'Periodic Educational Content',
      name: 'Solution_item_4',
      desc: '',
      args: [],
    );
  }

  /// `We offer diverse educational content covering curricula, helping students enhance their skills and knowledge in various fields.`
  String get Solution_line_4 {
    return Intl.message(
      'We offer diverse educational content covering curricula, helping students enhance their skills and knowledge in various fields.',
      name: 'Solution_line_4',
      desc: '',
      args: [],
    );
  }

  /// `Our Solutions`
  String get Services_title {
    return Intl.message(
      'Our Solutions',
      name: 'Services_title',
      desc: '',
      args: [],
    );
  }

  /// `Our platform takes pride in offering advanced educational and training solutions that bring together technological innovation and modern creativity.`
  String get Services_Prestation {
    return Intl.message(
      'Our platform takes pride in offering advanced educational and training solutions that bring together technological innovation and modern creativity.',
      name: 'Services_Prestation',
      desc: '',
      args: [],
    );
  }

  /// `We provide a comprehensive educational platform covering all subjects and academic stages, allowing students to access outstanding educational content anytime, anywhere.`
  String get Services_line_1 {
    return Intl.message(
      'We provide a comprehensive educational platform covering all subjects and academic stages, allowing students to access outstanding educational content anytime, anywhere.',
      name: 'Services_line_1',
      desc: '',
      args: [],
    );
  }

  /// `We employ machine learning and artificial intelligence techniques to deliver a customized and enhanced learning experience, helping students achieve their maximum potential.`
  String get Services_line_2 {
    return Intl.message(
      'We employ machine learning and artificial intelligence techniques to deliver a customized and enhanced learning experience, helping students achieve their maximum potential.',
      name: 'Services_line_2',
      desc: '',
      args: [],
    );
  }

  /// `We offer advanced training solutions aimed at developing students' skills and motivating them to acquire deep knowledge in various fields.`
  String get Services_line_3 {
    return Intl.message(
      'We offer advanced training solutions aimed at developing students\' skills and motivating them to acquire deep knowledge in various fields.',
      name: 'Services_line_3',
      desc: '',
      args: [],
    );
  }

  /// `To encourage interaction and participation, we provide interactive and stimulating tools that enhance communication between teachers and students, contributing to building an effective learning environment.`
  String get Services_line_4 {
    return Intl.message(
      'To encourage interaction and participation, we provide interactive and stimulating tools that enhance communication between teachers and students, contributing to building an effective learning environment.',
      name: 'Services_line_4',
      desc: '',
      args: [],
    );
  }

  /// `Integrated Learning Platform`
  String get Services_item_1 {
    return Intl.message(
      'Integrated Learning Platform',
      name: 'Services_item_1',
      desc: '',
      args: [],
    );
  }

  /// `Smart Learning Technology`
  String get Services_item_2 {
    return Intl.message(
      'Smart Learning Technology',
      name: 'Services_item_2',
      desc: '',
      args: [],
    );
  }

  /// `Advanced Training Solutions`
  String get Services_item_3 {
    return Intl.message(
      'Advanced Training Solutions',
      name: 'Services_item_3',
      desc: '',
      args: [],
    );
  }

  /// `Interaction and Participation`
  String get Services_item_4 {
    return Intl.message(
      'Interaction and Participation',
      name: 'Services_item_4',
      desc: '',
      args: [],
    );
  }

  /// `==================================================================================================`
  String get _student_space {
    return Intl.message(
      '==================================================================================================',
      name: '_student_space',
      desc: '',
      args: [],
    );
  }

  /// `Student Space`
  String get student_space {
    return Intl.message(
      'Student Space',
      name: 'student_space',
      desc: '',
      args: [],
    );
  }

  /// `Class`
  String get Class {
    return Intl.message(
      'Class',
      name: 'Class',
      desc: '',
      args: [],
    );
  }

  /// `All grades`
  String get AllGrades {
    return Intl.message(
      'All grades',
      name: 'AllGrades',
      desc: '',
      args: [],
    );
  }

  /// `First degree`
  String get firstGegree {
    return Intl.message(
      'First degree',
      name: 'firstGegree',
      desc: '',
      args: [],
    );
  }

  /// `Second degree`
  String get SecondGegree {
    return Intl.message(
      'Second degree',
      name: 'SecondGegree',
      desc: '',
      args: [],
    );
  }

  /// `Third degree`
  String get ThirdGegree {
    return Intl.message(
      'Third degree',
      name: 'ThirdGegree',
      desc: '',
      args: [],
    );
  }

  /// `Educational Level`
  String get EducationalLevel {
    return Intl.message(
      'Educational Level',
      name: 'EducationalLevel',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'All years' key

  /// `First Year Primary`
  String get firstYearPrimary {
    return Intl.message(
      'First Year Primary',
      name: 'firstYearPrimary',
      desc: '',
      args: [],
    );
  }

  /// `Second Year Primary`
  String get secondYearPrimary {
    return Intl.message(
      'Second Year Primary',
      name: 'secondYearPrimary',
      desc: '',
      args: [],
    );
  }

  /// `Third Year Primary`
  String get thirdYearPrimary {
    return Intl.message(
      'Third Year Primary',
      name: 'thirdYearPrimary',
      desc: '',
      args: [],
    );
  }

  /// `Fourth Year Primary`
  String get fourthYearPrimary {
    return Intl.message(
      'Fourth Year Primary',
      name: 'fourthYearPrimary',
      desc: '',
      args: [],
    );
  }

  /// `Fifth Year Primary`
  String get fifthYearPrimary {
    return Intl.message(
      'Fifth Year Primary',
      name: 'fifthYearPrimary',
      desc: '',
      args: [],
    );
  }

  /// `Sixth Year Primary`
  String get sixthYearPrimary {
    return Intl.message(
      'Sixth Year Primary',
      name: 'sixthYearPrimary',
      desc: '',
      args: [],
    );
  }

  /// `Content`
  String get content {
    return Intl.message(
      'Content',
      name: 'content',
      desc: '',
      args: [],
    );
  }

  /// `Search in the database`
  String get Searchthedatabase {
    return Intl.message(
      'Search in the database',
      name: 'Searchthedatabase',
      desc: '',
      args: [],
    );
  }

  /// `=======================================================================================`
  String get _teacher_space {
    return Intl.message(
      '=======================================================================================',
      name: '_teacher_space',
      desc: '',
      args: [],
    );
  }

  /// `Teacher Space`
  String get teacher_space {
    return Intl.message(
      'Teacher Space',
      name: 'teacher_space',
      desc: '',
      args: [],
    );
  }

  /// `login`
  String get login {
    return Intl.message(
      'login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get Email {
    return Intl.message(
      'Email',
      name: 'Email',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get password {
    return Intl.message(
      'password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `forgot password`
  String get forgot_password {
    return Intl.message(
      'forgot password',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get DHA {
    return Intl.message(
      'Don\'t have an account?',
      name: 'DHA',
      desc: '',
      args: [],
    );
  }

  /// `registration`
  String get registration {
    return Intl.message(
      'registration',
      name: 'registration',
      desc: '',
      args: [],
    );
  }

  /// `Google`
  String get Google {
    return Intl.message(
      'Google',
      name: 'Google',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signUp {
    return Intl.message(
      'Sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Create your account`
  String get createAccount {
    return Intl.message(
      'Create your account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirmPassword {
    return Intl.message(
      'Confirm password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account ?`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account ?',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `================================================================================================`
  String get footer {
    return Intl.message(
      '================================================================================================',
      name: 'footer',
      desc: '',
      args: [],
    );
  }

  /// `Contact Information`
  String get contactInformation {
    return Intl.message(
      'Contact Information',
      name: 'contactInformation',
      desc: '',
      args: [],
    );
  }

  /// `P.O. Box 743 - 2078 La Marsa, Tunis`
  String get address {
    return Intl.message(
      'P.O. Box 743 - 2078 La Marsa, Tunis',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `+216 99 916 110`
  String get phone {
    return Intl.message(
      '+216 99 916 110',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `taha.moussa@ept.ucar.tn`
  String get email {
    return Intl.message(
      'taha.moussa@ept.ucar.tn',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Useful Links`
  String get usefulLinks {
    return Intl.message(
      'Useful Links',
      name: 'usefulLinks',
      desc: '',
      args: [],
    );
  }

  /// `Institute of Humanities in Gafsa`
  String get humanitiesInstitute {
    return Intl.message(
      'Institute of Humanities in Gafsa',
      name: 'humanitiesInstitute',
      desc: '',
      args: [],
    );
  }

  /// `Ministry of Higher Education and Scientific Research`
  String get higherEducationMinistry {
    return Intl.message(
      'Ministry of Higher Education and Scientific Research',
      name: 'higherEducationMinistry',
      desc: '',
      args: [],
    );
  }

  /// `Ministry of Education`
  String get educationMinistry {
    return Intl.message(
      'Ministry of Education',
      name: 'educationMinistry',
      desc: '',
      args: [],
    );
  }

  /// `Developed By`
  String get developedBy {
    return Intl.message(
      'Developed By',
      name: 'developedBy',
      desc: '',
      args: [],
    );
  }

  /// `Moussa Taha`
  String get engineeringStudents {
    return Intl.message(
      'Moussa Taha',
      name: 'engineeringStudents',
      desc: '',
      args: [],
    );
  }

  /// `Our Pages`
  String get pages {
    return Intl.message(
      'Our Pages',
      name: 'pages',
      desc: '',
      args: [],
    );
  }

  /// `Our Links`
  String get links {
    return Intl.message(
      'Our Links',
      name: 'links',
      desc: '',
      args: [],
    );
  }

  /// `===========================================================================================`
  String get errormesages {
    return Intl.message(
      '===========================================================================================',
      name: 'errormesages',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get emailError {
    return Intl.message(
      'Please enter a valid email',
      name: 'emailError',
      desc: '',
      args: [],
    );
  }

  /// `Password cannot be empty`
  String get emptyPasswordError {
    return Intl.message(
      'Password cannot be empty',
      name: 'emptyPasswordError',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters long`
  String get shortPasswordError {
    return Intl.message(
      'Password must be at least 8 characters long',
      name: 'shortPasswordError',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one uppercase letter`
  String get uppercaseLetterError {
    return Intl.message(
      'Password must contain at least one uppercase letter',
      name: 'uppercaseLetterError',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one number`
  String get numberInPasswordError {
    return Intl.message(
      'Password must contain at least one number',
      name: 'numberInPasswordError',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwordsNotMatchError {
    return Intl.message(
      'Passwords do not match',
      name: 'passwordsNotMatchError',
      desc: '',
      args: [],
    );
  }

  /// `Name should be at least 2 characters`
  String get nameLengthError {
    return Intl.message(
      'Name should be at least 2 characters',
      name: 'nameLengthError',
      desc: '',
      args: [],
    );
  }

  /// `Please wait`
  String get pleaseWait {
    return Intl.message(
      'Please wait',
      name: 'pleaseWait',
      desc: '',
      args: [],
    );
  }

  /// `The email or password is incorrect, please check`
  String get errorMessageSignIn {
    return Intl.message(
      'The email or password is incorrect, please check',
      name: 'errorMessageSignIn',
      desc: '',
      args: [],
    );
  }

  /// `The Email Address is already in use by another account`
  String get errorMessageSignUp {
    return Intl.message(
      'The Email Address is already in use by another account',
      name: 'errorMessageSignUp',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'fr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
