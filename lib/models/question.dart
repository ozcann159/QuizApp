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
      question: 'Soru 1: Flutter nedir?',
      options: [
        'Bir programlama dili',
        'Bir yazılım geliştirme framework\'ü',
        'Bir veritabanı yönetim sistemi',
        'Bir işletim sistemi'
      ],
      correctAnswerIndex: 1),
  QuestionModal(
    question: 'Soru 2: Flutter hangi programlama dili üzerine inşa edilmiştir?',
    options: ['Java', 'Dart', 'Python', 'C#'],
    correctAnswerIndex: 2,
  ),
  QuestionModal(
      question: 'Soru 3: Flutterda widget nedir?',
      options: [
        'a) Yatay bir çizgi',
        'b) Kullanıcı arayüz elemanı',
        'c) Matematiksel bir işlev',
        'd) Çizgi grafik,'
      ],
      correctAnswerIndex: 3),
  QuestionModal(
      question: 'Soru 4: Flutterda hot reload özelliği ne işe yarar?',
      options: [
        'a) Uygulamayı soğuk başlatır',
        'b) Kodu anında derler ve uygulamayı günceller',
        'c) Uygulama ekranını yeniden başlatır',
        'd) Hata ayıklama modunu başlatır',
      ],
      correctAnswerIndex: 4),
  QuestionModal(
      question:
          'Soru 5: Flutter da hangi sınıf, uygulama içinde sayfalar arası geçişleri sağlar?',
      options: [
        'a) NavigationService',
        'b) PageController',
        'c) RouteManager',
        'd) Navigator',
        ''
      ],
      correctAnswerIndex: 5),
  QuestionModal(
      question:
          'Soru 6: Flutter da "Stateless" widget ile "Stateful" widget arasındaki temel fark nedir?',
      options: [
        'a) Stateless widget, durumu yönetir; Stateful widget, durumsuzdur.',
        'b) Stateless widget, kullanıcı etkileşimine yanıt veremez; Stateful widget, kullanıcı etkileşimine yanıt verebilir.',
        'c) Stateless widget, içerdiği metinlerle daha fazla özelleştirilebilir; Stateful widget, genellikle statik bilgiler içerir.',
        'd) Stateless widget, animasyonları kontrol edebilir; Stateful widget, animasyonlara izin vermez.',
      ],
      correctAnswerIndex: 6),
  QuestionModal(
      question: 'Soru 7: Flutter da "BuildContext" nedir ve neden önemlidir?',
      options: [
        'a) Widgetların birbirleriyle iletişim kurmasını sağlayan bir araçtır.',
        'b) Widgetların hiyerarşisini temsil eden bir nesnedir.',
        'c) Widgetların konumlarını belirlemek için kullanılır.',
        'd) Widgetların stil ve tema bilgilerine erişmesini sağlar.',
      ],
      correctAnswerIndex: 7),
  QuestionModal(
      question: 'Soru 8: Flutterda "async" ve "await" ne işe yarar?',
      options: [
        'a) Widgetların asenkron bir şekilde çalışmasını sağlar.',
        'b) Veritabanı işlemlerini kolaylaştırır.',
        'c) Asenkron işlemlerin daha okunabilir ve düzenli olmasını sağlar.',
        'd) Widgetların senkron bir şekilde çalışmasını sağlar.',
      ],
      correctAnswerIndex: 8),
  QuestionModal(
      question:
          'Soru 9: Flutterda "ListView.builder" nedir ve neden kullanılır?',
      options: [
        'a) Liste elemanlarını düzenlemek için kullanılır.',
        'b) Dinamik olarak büyük listeler oluşturmak için kullanılır.',
        'c) Widgetların genişlik ve yükseklik özelliklerini ayarlamak için kullanılır.',
        'd) Görsel efektler eklemek için kullanılır.',
      ],
      correctAnswerIndex: 9),
  QuestionModal(
      question: 'Soru 10: Flutterda "Pubspec.yaml" dosyası ne işe yarar?',
      options: ['a) Uygulamanın temel konfigürasyon bilgilerini içerir.', 
      'b) Kullanılan paketleri ve uygulama bağımlılıklarını tanımlar.', 
      'c) Uygulama simgelerini ve başlık bilgilerini içerir.', 
      'd) Kullanıcıya geri bildirim veren bir ekran gösterir.'],
      correctAnswerIndex: 10),
];
