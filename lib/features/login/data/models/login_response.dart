import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';
@JsonSerializable()
class LoginResponse {
  @JsonKey(name: 'data')
  final UserData userData;
  final String message;
  bool? status;
  int? code;

  LoginResponse(
      {required this.userData, required this.message, this.status, this.code});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  @JsonKey(name: 'username')
  final String ?userName;
  final String? token;

  UserData({this.userName, this.token});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
