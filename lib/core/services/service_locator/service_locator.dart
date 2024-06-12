// All Imports
import 'service_locator_imports.dart';

// Files
// import '/features/features.dart';

// Global Variable
// Initialize GetIt
final sl = GetIt.I;

void initClient() {
  // Dio client = Dio(ApiConstance.getBaseOption());
  // if (!kReleaseMode) {
  //   client.interceptors.add(CurlLoggerDioInterceptor(printOnSuccess: true));
  // }
  // sl.registerLazySingleton(() => client);
}

class ServiceLocator {
  Future<void> init() async {
    initClient();

    // *********************
    ///   Blocs , Factories
    // *********************
    sl.registerLazySingleton<ThemeManager>(() => ThemeManager());
    sl.registerLazySingleton<HomeManager>(() => HomeManager());

    // *********************
    /// Responsive Manager
    // *********************
    sl.registerLazySingleton(() => ResponsiveManager());
  }
}
