import 'package:doc_doc/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doc_doc/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:doc_doc/features/sign_up/logic/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  TextEditingController phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  Future<void> emitSignupStates() async {
    emit(const SignUpState.signupLoading());

    final response = await _signUpRepo.signUp(
      SignUpRequestBody(
        gender: 0,
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        phone: phoneController.text,
      ),
    );
    response.when(
        success: (signUpResponse) =>
            emit(SignUpState.signupSuccess(signUpResponse)),
        failure: (error) => emit(
            SignUpState.signupError(error: error.apiErrorModel.message ?? '')));
  }


}
