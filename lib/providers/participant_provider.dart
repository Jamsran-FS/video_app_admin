import 'package:video_app_admin/index.dart';

class ParticipantProvider with ChangeNotifier {
  List<Participant> items = [];

  Future<void> getAll() async {
    await Future.delayed(const Duration(seconds: 2));
    items = [
      Participant(
        id: 'GA8GiAhVYWzkWqyxHT1U',
        fullName: 'Л.Атарсайхан',
        photo: 'https://iili.io/HfI6q8P.png',
        intro: 'Мон Огоу У Бяс Ил Галын хөтөч, Дэмч, Багш',
      ),
      Participant(
        id: 'ssvUNSv4Nz6zmPEgQLrP',
        fullName: 'Д.Алтантуяа',
        photo: 'https://iili.io/HCOOBrx.jpg',
        intro: 'Хуульч, Өмгөөлөгч, Тууль судлаач',
      ),
      Participant(
        id: 'GA8GiAhVYWzkWqyxHT1U',
        fullName: 'Л.Атарсайхан',
        photo: 'https://iili.io/HfI6q8P.png',
        intro: 'Мон Огоу У Бяс Ил Галын хөтөч, Дэмч, Багш',
      ),
      Participant(
        id: 'ssvUNSv4Nz6zmPEgQLrP',
        fullName: 'Д.Алтантуяа',
        photo: 'https://iili.io/HCOOBrx.jpg',
        intro: 'Хуульч, Өмгөөлөгч, Тууль судлаач',
      ),
      Participant(
        id: 'GA8GiAhVYWzkWqyxHT1U',
        fullName: 'Л.Атарсайхан',
        photo: 'https://iili.io/HfI6q8P.png',
        intro: 'Мон Огоу У Бяс Ил Галын хөтөч, Дэмч, Багш',
      ),
      Participant(
        id: 'ssvUNSv4Nz6zmPEgQLrP',
        fullName: 'Д.Алтантуяа',
        photo: 'https://iili.io/HCOOBrx.jpg',
        intro: 'Хуульч, Өмгөөлөгч, Тууль судлаач',
      ),
      Participant(
        id: 'GA8GiAhVYWzkWqyxHT1U',
        fullName: 'Л.Атарсайхан',
        photo: 'https://iili.io/HfI6q8P.png',
        intro: 'Мон Огоу У Бяс Ил Галын хөтөч, Дэмч, Багш',
      ),
      Participant(
        id: 'ssvUNSv4Nz6zmPEgQLrP',
        fullName: 'Д.Алтантуяа',
        photo: 'https://iili.io/HCOOBrx.jpg',
        intro: 'Хуульч, Өмгөөлөгч, Тууль судлаач',
      ),
      Participant(
        id: 'GA8GiAhVYWzkWqyxHT1U',
        fullName: 'Л.Атарсайхан',
        photo: 'https://iili.io/HfI6q8P.png',
        intro: 'Мон Огоу У Бяс Ил Галын хөтөч, Дэмч, Багш',
      ),
      Participant(
        id: 'ssvUNSv4Nz6zmPEgQLrP',
        fullName: 'Д.Алтантуяа',
        photo: 'https://iili.io/HCOOBrx.jpg',
        intro: 'Хуульч, Өмгөөлөгч, Тууль судлаач',
      ),
      Participant(
        id: 'GA8GiAhVYWzkWqyxHT1U',
        fullName: 'Л.Атарсайхан',
        photo: 'https://iili.io/HfI6q8P.png',
        intro: 'Мон Огоу У Бяс Ил Галын хөтөч, Дэмч, Багш',
      ),
      Participant(
        id: 'ssvUNSv4Nz6zmPEgQLrP',
        fullName: 'Д.Алтантуяа',
        photo: 'https://iili.io/HCOOBrx.jpg',
        intro: 'Хуульч, Өмгөөлөгч, Тууль судлаач',
      ),
      Participant(
        id: 'GA8GiAhVYWzkWqyxHT1U',
        fullName: 'Л.Атарсайхан',
        photo: 'https://iili.io/HfI6q8P.png',
        intro: 'Мон Огоу У Бяс Ил Галын хөтөч, Дэмч, Багш',
      ),
      Participant(
        id: 'ssvUNSv4Nz6zmPEgQLrP',
        fullName: 'Д.Алтантуяа',
        photo: 'https://iili.io/HCOOBrx.jpg',
        intro: 'Хуульч, Өмгөөлөгч, Тууль судлаач',
      ),
      Participant(
        id: 'GA8GiAhVYWzkWqyxHT1U',
        fullName: 'Л.Атарсайхан',
        photo: 'https://iili.io/HfI6q8P.png',
        intro: 'Мон Огоу У Бяс Ил Галын хөтөч, Дэмч, Багш',
      ),
      Participant(
        id: 'ssvUNSv4Nz6zmPEgQLrP',
        fullName: 'Д.Алтантуяа',
        photo: 'https://iili.io/HCOOBrx.jpg',
        intro: 'Хуульч, Өмгөөлөгч, Тууль судлаач',
      ),
      Participant(
        id: 'GA8GiAhVYWzkWqyxHT1U',
        fullName: 'Л.Атарсайхан',
        photo: 'https://iili.io/HfI6q8P.png',
        intro: 'Мон Огоу У Бяс Ил Галын хөтөч, Дэмч, Багш',
      ),
      Participant(
        id: 'ssvUNSv4Nz6zmPEgQLrP',
        fullName: 'Д.Алтантуяа',
        photo: 'https://iili.io/HCOOBrx.jpg',
        intro: 'Хуульч, Өмгөөлөгч, Тууль судлаач',
      ),Participant(
        id: 'GA8GiAhVYWzkWqyxHT1U',
        fullName: 'Л.Атарсайхан',
        photo: 'https://iili.io/HfI6q8P.png',
        intro: 'Мон Огоу У Бяс Ил Галын хөтөч, Дэмч, Багш',
      ),
      Participant(
        id: 'ssvUNSv4Nz6zmPEgQLrP',
        fullName: 'Д.Алтантуяа',
        photo: 'https://iili.io/HCOOBrx.jpg',
        intro: 'Хуульч, Өмгөөлөгч, Тууль судлаач',
      ),
    ];
    //items = await ParticipantRepo.getAll();
    notifyListeners();
  }
}
