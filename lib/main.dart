import 'package:video_app_admin/index.dart';

Future<void> main() async {
  //await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ParticipantProvider()),
      ],
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Тарины хакер админ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Styles.appbar,
        scaffoldBackgroundColor: Styles.scaffold,
        fontFamily: 'Nunito',
        appBarTheme: AppBarTheme(
          backgroundColor: Styles.appbar,
          foregroundColor: Styles.light,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(title: ''),
    );
  }
}
