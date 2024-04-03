import 'package:hive/hive.dart';
part 'notesmodel.g.dart';
@HiveType(typeId: 0)
class notesmodel extends HiveObject{
  @HiveField(0)
  final String title;
   @HiveField(1)
  final String description;
   @HiveField(2)
  final String date;
   @HiveField(3)
  final int color;
  notesmodel(this.color, 
      {required this.title, required this.description, required this.date});
}
