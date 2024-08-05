// ignore_for_file: public_member_api_docs, sort_constructors_first
sealed class BaseState<T> {
  const BaseState();

  R when<R>({
    R Function()? onInit,
    R Function()? onLoading,
    R Function(SuccessState<T> data)? onSuccess,
    R Function(ErrorState<T> error)? onError,
  }) =>
      switch (this) {
        InitState() => onInit!(),
        LoadingState() => onLoading!(),
        SuccessState<T> success => onSuccess!(success),
        ErrorState<T> error => onError!(error),
      };

  factory BaseState.init() => const InitState();
  factory BaseState.loading() => const LoadingState();
  factory BaseState.success(T data) => SuccessState(data);
  factory BaseState.error(int statusCode, String message) => ErrorState(statusCode, message);

  bool get isLoading => this is LoadingState;
  SuccessState<T> get asData => this as SuccessState<T>;
  ErrorState get asError => this as ErrorState;
}

class InitState<T> extends BaseState<T> {
  const InitState();
}

class LoadingState<T> extends BaseState<T> {
  const LoadingState();
}

class SuccessState<T> extends BaseState<T> {
  SuccessState(this.data);

  final T data;

  @override
  String toString() {
    return 'SuccessState{data: $data}';
  }
}

class ErrorState<T> extends BaseState<T> {
  ErrorState(this.statusCode, this.message);

  final int statusCode;
  final String message;

  @override
  String toString() => 'ErrorState{statusCode: $statusCode, message: $message}';
}
