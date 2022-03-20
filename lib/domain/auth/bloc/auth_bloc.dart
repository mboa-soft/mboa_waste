import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:mboa_waste/domain/auth/auth_provider.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthProvider provider;
  AuthBloc({required this.provider}) : super(const LoggedOut(loading: false)) {
    on<LoginEvent>((event, emit) async {
      emit(const LoggedOut(loading: true));
      await provider.login();
      emit(const LoggedIn(loading: false));
      EasyLoading.showToast('Login Successful',
          maskType: EasyLoadingMaskType.black,
          toastPosition: EasyLoadingToastPosition.bottom);
    });

    on<LogoutEvent>((event, emit) async {
      emit(const LoggedIn(loading: true));
      await provider.logout();
      emit(const LoggedOut(loading: false));
    });
  }
}
