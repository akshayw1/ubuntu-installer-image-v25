import 'package:args/args.dart';
import 'package:gsettings/gsettings.dart';
import 'package:timezone_map/timezone_map.dart';
import 'package:ubuntu_init/app/init_step.dart';
import 'package:ubuntu_init/services/provd_accessibility_service.dart';
import 'package:ubuntu_init/services/provd_gdm_service.dart';
import 'package:ubuntu_init/services/provd_identity_service.dart';
import 'package:ubuntu_init/services/provd_keyboard_service.dart';
import 'package:ubuntu_init/services/provd_locale_service.dart';
import 'package:ubuntu_init/services/provd_privacy_service.dart';
import 'package:ubuntu_init/services/provd_pro_service.dart';
import 'package:ubuntu_init/services/provd_telemetry_service.dart';
import 'package:ubuntu_init/services/provd_timezone_service.dart';
import 'package:ubuntu_init/services/realmd_active_directory_service.dart';
import 'package:ubuntu_init/services/xdg_session_service.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

export 'package:args/args.dart' show ArgResults;
export 'package:timezone_map/timezone_map.dart' show GeoService;

export 'services/provd_accessibility_service.dart';
export 'services/provd_gdm_service.dart';
export 'services/provd_identity_service.dart';
export 'services/provd_keyboard_service.dart';
export 'services/provd_locale_service.dart';
export 'services/provd_privacy_service.dart';
export 'services/provd_pro_service.dart';
export 'services/provd_telemetry_service.dart';
export 'services/provd_timezone_service.dart';
export 'services/realmd_active_directory_service.dart';
export 'services/xdg_session_service.dart';

Future<void> registerInitServices(List<String> args) async {
  var options = tryGetService<ArgResults>();
  if (options == null) {
    options = parseCommandLine(
      args,
      onPopulateOptions: (parser) {
        parser.addFlag(
          'welcome',
          help: 'Show welcome wizard',
        );
      },
    );
    registerServiceInstance<ArgResults>(options!);
  }

  tryRegisterService<ActiveDirectoryService>(RealmdActiveDirectoryService.new);
  tryRegisterService<AccessibilityService>(ProvdAccessibilityService.new);
  tryRegisterService<ConfigService>(ConfigService.new);
  tryRegisterService<GdmService>(ProvdGdmService.new);
  tryRegisterServiceFactory<GSettings, String>(GSettings.new);
  tryRegisterService<IdentityService>(ProvdIdentityService.new);
  tryRegisterService<KeyboardService>(ProvdKeyboardService.new);
  tryRegisterService<LocaleService>(ProvdLocaleService.new);
  tryRegisterService<NetworkService>(NetworkService.new);
  tryRegisterService<PageConfigService>(
    () => PageConfigService(
      config: tryGetService<ConfigService>(),
      includeTryOrInstall: true,
      allowedToHide: InitStep.allowedToHideKeys,
    ),
  );
  tryRegisterService<PrivacyService>(ProvdPrivacyService.new);
  tryRegisterService<ProService>(ProvdProService.new);
  tryRegisterService<ProvdTelemetryService>(ProvdTelemetryService.new);
  tryRegisterService<ProductService>(ProductService.new);
  tryRegisterService<SessionService>(XdgSessionService.new);
  tryRegisterService<ThemeVariantService>(
    () => ThemeVariantService(config: tryGetService<ConfigService>()),
  );
  tryRegisterService<TimezoneService>(ProvdTimezoneService.new);
  tryRegisterService<UdevService>(UdevService.new);
  tryRegisterService(UrlLauncher.new);

  var geo = tryGetService<GeoService>();
  if (geo == null) {
    final geodata = Geodata.asset();
    final geoname = Geoname.ubuntu(geodata: geodata);
    geo = GeoService(sources: [geodata, geoname]);
    registerServiceInstance(geo);
  }
  return geo.init();
}
