import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'module_event.dart';
part 'module_state.dart';
part 'module_bloc.freezed.dart';

@injectable
class ModuleBloc extends Bloc<ModuleEvent, ModuleState> {
  ModuleBloc() : super(const _Initial()) {
    on<ModuleEvent>(_onEvent);
  }

  Future<void> _onEvent(ModuleEvent event, Emitter<ModuleState> emit) async {}
}
