import 'package:hive/hive.dart';
part 'notesmodel.g.dart';
@HiveType(typeId: 0)
class notesmodel extends HiveObject{
  @HiveField(0)
   String title;
   @HiveField(1)
   String description;
   @HiveField(2)
  final String date;
   @HiveField(3)
   int color;
  notesmodel( 
      {required this.title, required this.description, required this.date,required this.color,});
}
