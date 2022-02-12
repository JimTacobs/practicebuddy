import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../state_models.dart';
import '../state_notifiers.dart';

final StateNotifierProvider<AddPieceNotifier, AddPiece> addPieceProvider =
    StateNotifierProvider((ref) => AddPieceNotifier());
