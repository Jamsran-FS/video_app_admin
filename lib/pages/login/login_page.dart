import 'package:video_app_admin/index.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _loading = false;

  final String emailHint = 'Хэрэглэгчийн нэр';
  final String passHint = 'Нууц үг';
  final String loginBtnText = 'Нэвтрэх';

  void _login() async {
    setState(() {
      _loading = true;
    });
    String username = _usernameController.text;
    String password = _passwordController.text;

    await Provider.of<AuthProvider>(context, listen: false)
        .login(username, password)
        .then((isAuth) {
      if (!isAuth) {
        const ErrorDialog(
          header: 'Нэвтрэх',
          description: 'Хэрэглэгчийн нэр эсвэл нууц үг буруу байна!',
        ).show(context);
      }
    });

    setState(() {
      _loading = false;
    });
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 500,
          height: 800,
          color: Colors.grey,
          padding: const EdgeInsets.all(24),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                LoginInput(
                  controller: _usernameController,
                  validation: (value) {
                    if (value == null || value.isEmpty) {
                      return emailHint;
                    } return null;
                  },
                  hintText: emailHint,
                  prefixIcon: Icons.email,
                ),
                const SizedBox( height: 14),
                LoginInput(
                  controller: _passwordController,
                  validation: (value) {
                    if (value == null || value.isEmpty) {
                      return passHint;
                    } return null;
                  },
                  hintText: passHint,
                  inputType: InputTypes.password,
                  prefixIcon: Icons.key,
                  textInputAction: TextInputAction.go,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    if (formKey.currentState!.validate() && !_loading) {
                      _login();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: _loading
                      ? const SpinKitCircle(size: 32, color: Colors.white)
                      : Text(loginBtnText, style: Styles.normalLightText),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
