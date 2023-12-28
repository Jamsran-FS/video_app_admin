import 'package:video_app_admin/index.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCpOvT6t8Nq1qcL2xYbNJSHf3s6_0WnVqw",
      appId: "1:393235522421:web:1e4eb434053231347ba93c",
      messagingSenderId: "393235522421",
      projectId: "brain-hacker-de2c5",
    ),
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => ParticipantProvider()),
        ChangeNotifierProvider(create: (_) => VideoPostProvider()),
        ChangeNotifierProvider(create: (_) => TextPostProvider()),
        ChangeNotifierProvider(create: (_) => ImagePostProvider()),
      ],
      child: const App(),
    ),
  );
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    _loadStorage();
    super.initState();
  }

  void _loadStorage() async {
    try {
      Logger.i("User data loading from local storage...");
      await LocalStorage.read("username").then((data) {
        var authProvider = Provider.of<AuthProvider>(context, listen: false);
        if (data == null) {
          authProvider.updateLoginInfo(isAuth: false, username: null);
        } else {
          authProvider.updateLoginInfo(isAuth: true, username: data);
        }
      });
    } catch (exception) {
      Logger.e("Occurred on user data loading: $exception");
    }
  }

  @override
  Widget build(BuildContext context) {
    bool hasError = MediaQuery.of(context).size.width < 1024;
    var authProvider = Provider.of<AuthProvider>(context);
    return MaterialApp.router(
      title: 'Тархины хакер админ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Styles.appbar,
        scaffoldBackgroundColor: Styles.scaffold,
        fontFamily: 'Nunito',
        appBarTheme: const AppBarTheme(
          backgroundColor: Styles.appbar,
          foregroundColor: Styles.light,
        ),
        useMaterial3: true,
      ),
      routerConfig: AppRouter(
        hasError: hasError,
        isAuth: authProvider.isAuth,
      ).getRoutes(),
    );
  }
}
