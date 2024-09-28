import 'package:auth/logic/models/token_convert.dart';
import 'package:auth/logic/repositories/module_repository.dart';
import 'package:core/models/token_model.dart';
import 'package:core/utils/storage/secure_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'module_event.dart';
part 'module_state.dart';
part 'module_bloc.freezed.dart';

@injectable
class ModuleBloc extends Bloc<ModuleEvent, ModuleState> {
  final ModuleRepository repository;

  ModuleBloc(this.repository) : super(const _Initial()) {
    on<ModuleEvent>(_onEvent);
  }

  Future<void> _onEvent(ModuleEvent event, Emitter<ModuleState> emit) {
    return event.map(
      signIn: (value) async {
        try {
          emit(const ModuleState.loadingGoogleSignIn());
          var res = await repository.signIn();
          emit(ModuleState.successGoogleSignIn(res));
        } catch (err) {
          emit(ModuleState.errorGoogleSignIn(err));
        }
      },
      convertToken: (_ConvertToken value) async {
        try {
          emit(const ModuleState.loadingConvertToken());
          var res = await repository.convertToken(value.payload);
          SecureStorage.storeKeys(accessToken: res.accessToken);
          emit(ModuleState.successConvertToken(res));
        } catch (err) {
          emit(ModuleState.errorConvertToken(err));
        }
      },
    );
  }
}
