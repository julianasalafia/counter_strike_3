abstract class DependencyInjection {
  T get<T>([Type type]);

  void registerSingleton<T>(T instance, [Type type]);
}
