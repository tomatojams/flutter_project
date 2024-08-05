import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trade_crossing_ios/main.dart';

class RiverpodObserver extends ProviderObserver {
  @override
  void didAddProvider(ProviderBase<Object?> provider, Object? value, ProviderContainer container) {
    super.didAddProvider(provider, value, container);

    talker.info('[CREATE] - ${provider.name ?? provider.runtimeType}\n$value');
  }

  @override
  void didUpdateProvider(
      ProviderBase<Object?> provider, Object? previousValue, Object? newValue, ProviderContainer container) {
    super.didUpdateProvider(provider, previousValue, newValue, container);

    talker.info('[UPDATE] - ${provider.name ?? provider.runtimeType} FROM\n$previousValue\nto\n$newValue');
  }

  @override
  void didDisposeProvider(ProviderBase<Object?> provider, ProviderContainer container) {
    talker.info('[DISPOSE] - ${provider.name ?? provider.runtimeType}');
    super.didDisposeProvider(provider, container);
  }
}
