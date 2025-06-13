import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixelfield/utils/app_utils.dart';
import 'package:pixelfield/widgets/app_widgets.dart';

class SignUpPageWidget extends StatefulWidget {
  const SignUpPageWidget({super.key});

  static String routeName = 'SignUpPage';
  static String routePath = '/signUpPage';

  @override
  State<SignUpPageWidget> createState() => _SignUpPageWidgetState();
}

class _SignUpPageWidgetState extends State<SignUpPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();
  TextEditingController? signupEmailTextController;
  FocusNode? signupEmailFocusNode;
  TextEditingController? signupPasswordTextController;
  FocusNode? signupPasswordFocusNode;
  TextEditingController? signupConfirmPasswordTextController;
  FocusNode? signupConfirmPasswordFocusNode;

  @override
  void initState() {
    super.initState();
    signupEmailTextController ??= TextEditingController();
    signupEmailFocusNode ??= FocusNode();
    signupPasswordTextController ??= TextEditingController();
    signupPasswordFocusNode ??= FocusNode();
    signupConfirmPasswordTextController ??= TextEditingController();
    signupConfirmPasswordFocusNode ??= FocusNode();
  }

  void dispose() {
    signupEmailTextController?.dispose();
    signupEmailFocusNode?.dispose();
    signupPasswordTextController?.dispose();
    signupPasswordFocusNode?.dispose();
    signupConfirmPasswordTextController?.dispose();
    signupConfirmPasswordFocusNode?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: theme.scaffoldBackgroundColor,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height,
                      decoration: const BoxDecoration(
                        color: Color(0xFF0E1C21),
                      ),
                      child: SafeArea(
                        child: Container(
                          decoration: const BoxDecoration(),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 20.0, 10.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () {
                                        context.safePop();
                                      },
                                      child: Icon(
                                        Icons.arrow_back,
                                        color: theme.colorScheme.onSurface,
                                        size: 32.0,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 50),
                                Text(
                                  'Sign Up',
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    fontFamily:
                                        GoogleFonts.ebGaramond().fontFamily,
                                    color: theme.colorScheme.onSurface,
                                    fontSize: 32.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 50),
                                Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Container(
                                    height: 260.0,
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 70.0,
                                          decoration: const BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional
                                                    .centerStart,
                                                child: Text(
                                                  'Email',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .copyWith(
                                                        fontFamily:
                                                            GoogleFonts.lato()
                                                                .fontFamily,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onSurface,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    AlignmentDirectional.center,
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: AppTextFormField(
                                                    controller: 
                                                        signupEmailTextController,
                                                    focusNode: 
                                                        signupEmailFocusNode,
                                                    hintText: 'email@email.com',
                                                    keyboardType: TextInputType
                                                        .emailAddress,
                                                    validator: (value) {
                                                      if (value == null ||
                                                          value.isEmpty) {
                                                        return 'Please enter your email';
                                                      }
                                                      if (!RegExp(
                                                              r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                                          .hasMatch(value)) {
                                                        return 'Please enter a valid email';
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                        Container(
                                          width: double.infinity,
                                          height: 70.0,
                                          decoration: const BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional
                                                    .centerStart,
                                                child: Text(
                                                  'Password',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .copyWith(
                                                        fontFamily:
                                                            GoogleFonts.lato()
                                                                .fontFamily,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onSurface,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    AlignmentDirectional.center,
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: AppTextFormField(
                                                    controller: 
                                                        signupPasswordTextController,
                                                    focusNode: 
                                                        signupPasswordFocusNode,
                                                    hintText:
                                                        'Enter your password',
                                                    obscureText: true,
                                                    validator: (value) {
                                                      if (value == null ||
                                                          value.isEmpty) {
                                                        return 'Please enter your password';
                                                      }
                                                      if (value.length < 6) {
                                                        return 'Password must be at least 6 characters';
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                        Container(
                                          width: double.infinity,
                                          height: 70.0,
                                          decoration: const BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional
                                                    .centerStart,
                                                child: Text(
                                                  'Confirm Password',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .copyWith(
                                                        fontFamily:
                                                            GoogleFonts.lato()
                                                                .fontFamily,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onSurface,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    AlignmentDirectional.center,
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: AppTextFormField(
                                                    controller: 
                                                        signupConfirmPasswordTextController,
                                                    focusNode: 
                                                        signupConfirmPasswordFocusNode,
                                                    hintText:
                                                        'Confirm your password',
                                                    obscureText: true,
                                                    validator: (value) {
                                                      if (value == null ||
                                                          value.isEmpty) {
                                                        return 'Please confirm your password';
                                                      }
                                                      if (value !=
                                                          
                                                              signupPasswordTextController
                                                              ?.text) {
                                                        return 'Passwords do not match';
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Align(
                                  alignment: AlignmentDirectional.center,
                                  child: AppButton(
                                    text: 'Sign Up',
                                    onPressed: () {
                                      if (formKey.currentState
                                              ?.validate() ??
                                          false) {
                                        // TODO: Implement sign up logic
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
