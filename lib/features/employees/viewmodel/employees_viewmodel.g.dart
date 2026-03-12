// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employees_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EmployeesViewModel)
const employeesViewModelProvider = EmployeesViewModelProvider._();

final class EmployeesViewModelProvider
    extends $NotifierProvider<EmployeesViewModel, AsyncValue<List<Employee>>> {
  const EmployeesViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'employeesViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$employeesViewModelHash();

  @$internal
  @override
  EmployeesViewModel create() => EmployeesViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<Employee>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<Employee>>>(value),
    );
  }
}

String _$employeesViewModelHash() =>
    r'4b7cabe2e2aadd31eeafa4f402e9bc40ec5bb0be';

abstract class _$EmployeesViewModel
    extends $Notifier<AsyncValue<List<Employee>>> {
  AsyncValue<List<Employee>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<AsyncValue<List<Employee>>, AsyncValue<List<Employee>>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<Employee>>,
                AsyncValue<List<Employee>>
              >,
              AsyncValue<List<Employee>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
