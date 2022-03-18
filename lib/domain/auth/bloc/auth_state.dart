part of 'auth_bloc.dart';

@immutable
abstract class AuthState extends Equatable {
  final bool loading;

  const AuthState({required this.loading});
  @override
  List<Object> get props => [loading];
}

class LoggedIn extends AuthState {
  const LoggedIn({required bool loading}) : super(loading: loading);
}

class LoggedOut extends AuthState {
  const LoggedOut({required bool loading}) : super(loading: loading);
}
