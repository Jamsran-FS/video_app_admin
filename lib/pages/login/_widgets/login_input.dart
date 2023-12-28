import 'package:video_app_admin/index.dart';

class LoginInput extends StatefulWidget {
  final TextEditingController controller;
  final String? Function(String?)? validation;
  final String? hintText;
  final IconData? prefixIcon;
  final int? maxlength;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final InputTypes? inputType;
  final bool readOnly;
  const LoginInput({
    super.key,
    required this.controller,
    this.validation,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.maxlength = 250,
    this.prefixIcon,
    this.textInputAction,
    this.inputType = InputTypes.text,
    this.readOnly = false
  });

  @override
  State<LoginInput> createState() => _LoginInputState();
}

class _LoginInputState extends State<LoginInput> {
  bool showPasswordBtn = false;
  bool passwordVisible = false;

  var border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: Colors.grey.shade300),
  );
  var focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: Colors.blue),
  );

  @override
  void initState() {
    widget.controller.addListener(() {
      if (widget.controller.text.isEmpty) {
        setState(() {
          showPasswordBtn = false;
        });
      } else {
        setState(() {
          showPasswordBtn = true;
        });
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      enableSuggestions: true,
      readOnly: widget.readOnly,
      validator: widget.validation,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      textCapitalization: TextCapitalization.none,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: widget.inputType == InputTypes.password && !passwordVisible,
      inputFormatters: [
        LengthLimitingTextInputFormatter(widget.maxlength),
      ],
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: Styles.normalGreyText,
        prefixIconConstraints: const BoxConstraints(minWidth: 50),
        contentPadding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
        enabledBorder: border,
        focusedBorder: focusedBorder,
        errorBorder: border,
        focusedErrorBorder: focusedBorder,
        prefixIcon: Icon(size: 24, widget.prefixIcon, color: Colors.blue),
        suffixIcon: widget.inputType == InputTypes.password && showPasswordBtn
            ? Padding(
          padding: const EdgeInsets.only(right: 4),
          child: IconButton(
            onPressed: () {
              setState(() {
                passwordVisible = !passwordVisible;
              });
            },
            icon: Icon(
              size: 22,
              color: Colors.blue,
              passwordVisible
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
            ),
          ),
        ) : null,
      ),
    );
  }
}
