import 'package:hive/hive.dart';


part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {

  @HiveField(0)
  final String title;

  @HiveField(1)
  final String subTitle;

  @HiveField(2)
  final String date;

  @HiveField(3)
  final int color;

  NoteModel(
      {required this.title,
      required this.subTitle,
      required this.date,
      required this.color});
}


/*

  1- creating model

  2- adding package hive and hive_flutter

  3- adding hive_generator and build_runner in dev_dependencies

  4- coding

  5- make the model extend hiveObject

  6- give the model typeId    --- this is 0 object   the first one

  7- give hiveField to every variable u have

  8- make the part (like the import ) to make him know which file he will generate

  9- go to terminal and write flutter packages pub run build_runner build
      to generate the type adapter

  10-init Hive in main and openBox to save the data in  make it final static

 */