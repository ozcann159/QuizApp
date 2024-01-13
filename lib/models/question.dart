class QuestionModal {
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  QuestionModal(
      {required this.question,
      required this.options,
      required this.correctAnswerIndex});
}

List<QuestionModal> questions = [
  QuestionModal(
      question: 'Flutter nedir?',
      options: [
        'Bir programlama dili',
        'Bir yazılım geliştirme framework\'ü',
        'Bir veritabanı yönetim sistemi',
        'Bir işletim sistemi'
      ],
      correctAnswerIndex: 0),
  QuestionModal(
    question: 'Flutter hangi programlama dili üzerine inşa edilmiştir?',
    options: ['Java', 'Dart', 'Python', 'C#'],
    correctAnswerIndex: 1,
  ),
  QuestionModal(
      question: 'Flutterda widget nedir?',
      options: [
        'Yatay bir çizgi',
        'Kullanıcı arayüz elemanı',
        'Matematiksel bir işlev',
        'Çizgi grafik,'
      ],
      correctAnswerIndex: 1),
  QuestionModal(
      question: 'Flutterda hot reload özelliği ne işe yarar?',
      options: [
        'Uygulamayı soğuk başlatır',
        'Kodu anında derler günceller',
        'Uygulama ekranını yeniden başlatır',
        'Hata ayıklama modunu başlatır',
      ],
      correctAnswerIndex: 1),
  QuestionModal(
      question:
          'Flutter da hangi sınıf, uygulama içinde sayfalar arası geçişleri sağlar?',
      options: [
        'NavigationService',
        'PageController',
        'RouteManager',
        'Navigator',
      ],
      correctAnswerIndex: 3),
  QuestionModal(
      question: 'Flutter\'da state yönetimi nasıl yapılır? ',
      options: [
        'Provider kullanarak ',
        'Redux ile',
        'SetState metodu ile',
        'SharedPreferences kullanarak ',
      ],
      correctAnswerIndex: 2),
  QuestionModal(
      question: 'Flutter da "BuildContext" nedir ve neden önemlidir?',
      options: [
        ' Widgetların birbiriyle iletişimi.',
        ' Widgetların hiyerarşisini temsil eder.',
        ' Widgetların konumlarını belirler.',
        ' Widgetların tema bilglerini gösterir',
      ],
      correctAnswerIndex: 2),
  QuestionModal(
      question:
          'Flutterda lib klasörü altında bulunan kod dosyasının uzantısı aşağıdakilerden hangisidir?',
      options: [
        '.yaml',
        '.flutter',
        '.dart',
        '.bin',
      ],
      correctAnswerIndex: 2),
  /**
  QuestionModal(
      question:
          'Soru 9: Flutterda "ListView.builder" nedir ve neden kullanılır?',
      options: [
        'Liste elemanlarını düzenlemek için kullanılır.',
        'Dinamik olarak büyük listeler oluşturur.',
        'Widgetların genişlik ve yükseklik özelliklerini ayarlar.',
        'Görsel efektler eklemek için kullanılır.',
      ],
      correctAnswerIndex: 1),
   QuestionModal(
      question: 'Soru 10: Flutterda "Pubspec.yaml" dosyası ne işe yarar?',
      options: [
        'Uygulamanın temel konfigürasyon bilgilerini içerir.',
        'Kullanılan paketleri ve uygulama bağımlılıklarını tanımlar.',
        'Uygulama simgelerini ve başlık bilgilerini içerir.',
        'Kullanıcıya geri bildirim veren bir ekran gösterir.'
      ],
      correctAnswerIndex: 1),*/
];
