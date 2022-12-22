import 'package:hive/hive.dart';

part 'creator_model.g.dart';

@HiveType(typeId: 0)
class CreatorData extends HiveObject {
  @HiveField(0)
  late String creatorName;

  @HiveField(1)
  late String imageUrl;

  @HiveField(2)
  late String profession;

  @HiveField(3)
  late String id;
}
