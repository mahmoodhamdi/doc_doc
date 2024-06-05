import 'package:json_annotation/json_annotation.dart';
part 'sign_up_request_body.g.dart';
@JsonSerializable()
class SignUpRequestBody {
  final String name;
  final String email;
  final String password;
  final String phone;

  final int gender;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  SignUpRequestBody({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.gender,
    required this.passwordConfirmation,
  });
  factory SignUpRequestBody.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
  
}
