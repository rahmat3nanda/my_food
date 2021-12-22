import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

@DataClassName("Area")
class Areas extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text()();
}

@DataClassName("Category")
class Categories extends Table {
  TextColumn get id => text()();

  TextColumn get category => text()();

  TextColumn get thumb => text()();

  TextColumn get description => text()();
}

@DataClassName("Ingredient")
class Ingredients extends Table {
  TextColumn get id => text()();

  TextColumn get ingredient => text()();

  TextColumn get description => text()();

  TextColumn get type => text()();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [Areas, Categories, Ingredients])
class Database extends _$Database {
  Database() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<Area>> get getAreas => select(areas).get();

  Future<List<Category>> get getCategory => select(categories).get();

  Future<List<Ingredient>> get getIngredient => select(ingredients).get();

  Future<int> insertArea(AreasCompanion entry) {
    return into(areas).insert(entry);
  }

  Future<int> insertCategory(CategoriesCompanion entry) {
    return into(categories).insert(entry);
  }

  Future<int> insertIngredient(IngredientsCompanion entry) {
    return into(ingredients).insert(entry);
  }

  Future insertAreas(List<AreasCompanion> entries) async {
    await batch((batch) {
      batch.insertAll(areas, entries);
    });
  }

  Future insertCategories(List<CategoriesCompanion> entries) async {
    await batch((batch) {
      batch.insertAll(categories, entries);
    });
  }

  Future insertIngredients(List<IngredientsCompanion> entries) async {
    await batch((batch) {
      batch.insertAll(ingredients, entries);
    });
  }
}
