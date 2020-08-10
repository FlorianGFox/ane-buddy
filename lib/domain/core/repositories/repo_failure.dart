import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo_failure.freezed.dart';

@freezed
abstract class RepoFailure with _$RepoFailure {
  const factory RepoFailure.unknown() = _Unknown;
  const factory RepoFailure.notFound() = _NotFound;
  const factory RepoFailure.conversion() = _Conversion;
}
