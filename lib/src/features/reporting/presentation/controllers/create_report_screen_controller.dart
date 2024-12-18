import '../../../authentication/domain/building.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/reports_repository.dart';
import '../../domain/report.dart';
import '../../../authentication/data/auth_repository.dart';
import 'reports_list_controller.dart';

part 'create_report_screen_controller.g.dart';

@riverpod
class CreateReportScreenController extends _$CreateReportScreenController {
  @override
  FutureOr<void> build() {
    // Metodo build può essere vuoto, non è necessario per questo caso
  }

  // Metodo per creare un nuovo report
  Future<void> createReport({
    required String category,
    required Building building,
    required String buildingAreaId,
    required PriorityLevel priority,
    required String description,
    required List<String> photos,
    String? resolveBy,
  }) async {
    // Mostra lo stato di caricamento per lo screen
    state = const AsyncLoading();

    // Usa AsyncValue.guard per gestire la chiamata al backend in modo sicuro
    state = await AsyncValue.guard(() async {
      final userProfile = ref.read(authRepositoryProvider).currentUser!;

      // Effettua la chiamata al backend per creare il nuovo report
      final newReport = await ref.read(reportsRepositoryProvider).addReport(
            category: category,
            currentUser: userProfile,
            building: building,
            buildingAreaId: buildingAreaId,
            priority: priority,
            description: description,
            photos: photos,
            resolveBy: resolveBy,
          );

      // Aggiorna il controller della lista dei report con il nuovo report
      ref.read(reportsListControllerProvider.notifier).addReportToList(newReport);

      // Una volta completata l'operazione, rimuovi lo stato di caricamento
      return;
    });
  }
}
