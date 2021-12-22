// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Area extends DataClass implements Insertable<Area> {
  final int id;
  final String name;
  Area({required this.id, required this.name});
  factory Area.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Area(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  AreasCompanion toCompanion(bool nullToAbsent) {
    return AreasCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory Area.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Area(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  Area copyWith({int? id, String? name}) => Area(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('Area(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Area && other.id == this.id && other.name == this.name);
}

class AreasCompanion extends UpdateCompanion<Area> {
  final Value<int> id;
  final Value<String> name;
  const AreasCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  AreasCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<Area> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  AreasCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return AreasCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AreasCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $AreasTable extends Areas with TableInfo<$AreasTable, Area> {
  final GeneratedDatabase _db;
  final String? _alias;
  $AreasTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? 'areas';
  @override
  String get actualTableName => 'areas';
  @override
  VerificationContext validateIntegrity(Insertable<Area> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Area map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Area.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AreasTable createAlias(String alias) {
    return $AreasTable(_db, alias);
  }
}

class Category extends DataClass implements Insertable<Category> {
  final String id;
  final String category;
  final String thumb;
  final String description;
  Category(
      {required this.id,
      required this.category,
      required this.thumb,
      required this.description});
  factory Category.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Category(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      category: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category'])!,
      thumb: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}thumb'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['category'] = Variable<String>(category);
    map['thumb'] = Variable<String>(thumb);
    map['description'] = Variable<String>(description);
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      id: Value(id),
      category: Value(category),
      thumb: Value(thumb),
      description: Value(description),
    );
  }

  factory Category.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Category(
      id: serializer.fromJson<String>(json['id']),
      category: serializer.fromJson<String>(json['category']),
      thumb: serializer.fromJson<String>(json['thumb']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'category': serializer.toJson<String>(category),
      'thumb': serializer.toJson<String>(thumb),
      'description': serializer.toJson<String>(description),
    };
  }

  Category copyWith(
          {String? id, String? category, String? thumb, String? description}) =>
      Category(
        id: id ?? this.id,
        category: category ?? this.category,
        thumb: thumb ?? this.thumb,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('Category(')
          ..write('id: $id, ')
          ..write('category: $category, ')
          ..write('thumb: $thumb, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, category, thumb, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Category &&
          other.id == this.id &&
          other.category == this.category &&
          other.thumb == this.thumb &&
          other.description == this.description);
}

class CategoriesCompanion extends UpdateCompanion<Category> {
  final Value<String> id;
  final Value<String> category;
  final Value<String> thumb;
  final Value<String> description;
  const CategoriesCompanion({
    this.id = const Value.absent(),
    this.category = const Value.absent(),
    this.thumb = const Value.absent(),
    this.description = const Value.absent(),
  });
  CategoriesCompanion.insert({
    required String id,
    required String category,
    required String thumb,
    required String description,
  })  : id = Value(id),
        category = Value(category),
        thumb = Value(thumb),
        description = Value(description);
  static Insertable<Category> custom({
    Expression<String>? id,
    Expression<String>? category,
    Expression<String>? thumb,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (category != null) 'category': category,
      if (thumb != null) 'thumb': thumb,
      if (description != null) 'description': description,
    });
  }

  CategoriesCompanion copyWith(
      {Value<String>? id,
      Value<String>? category,
      Value<String>? thumb,
      Value<String>? description}) {
    return CategoriesCompanion(
      id: id ?? this.id,
      category: category ?? this.category,
      thumb: thumb ?? this.thumb,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (thumb.present) {
      map['thumb'] = Variable<String>(thumb.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('id: $id, ')
          ..write('category: $category, ')
          ..write('thumb: $thumb, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, Category> {
  final GeneratedDatabase _db;
  final String? _alias;
  $CategoriesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  @override
  late final GeneratedColumn<String?> category = GeneratedColumn<String?>(
      'category', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _thumbMeta = const VerificationMeta('thumb');
  @override
  late final GeneratedColumn<String?> thumb = GeneratedColumn<String?>(
      'thumb', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, category, thumb, description];
  @override
  String get aliasedName => _alias ?? 'categories';
  @override
  String get actualTableName => 'categories';
  @override
  VerificationContext validateIntegrity(Insertable<Category> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('thumb')) {
      context.handle(
          _thumbMeta, thumb.isAcceptableOrUnknown(data['thumb']!, _thumbMeta));
    } else if (isInserting) {
      context.missing(_thumbMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Category map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Category.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(_db, alias);
  }
}

class Ingredient extends DataClass implements Insertable<Ingredient> {
  final String id;
  final String ingredient;
  final String description;
  final String type;
  Ingredient(
      {required this.id,
      required this.ingredient,
      required this.description,
      required this.type});
  factory Ingredient.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Ingredient(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      ingredient: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ingredient'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['ingredient'] = Variable<String>(ingredient);
    map['description'] = Variable<String>(description);
    map['type'] = Variable<String>(type);
    return map;
  }

  IngredientsCompanion toCompanion(bool nullToAbsent) {
    return IngredientsCompanion(
      id: Value(id),
      ingredient: Value(ingredient),
      description: Value(description),
      type: Value(type),
    );
  }

  factory Ingredient.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Ingredient(
      id: serializer.fromJson<String>(json['id']),
      ingredient: serializer.fromJson<String>(json['ingredient']),
      description: serializer.fromJson<String>(json['description']),
      type: serializer.fromJson<String>(json['type']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'ingredient': serializer.toJson<String>(ingredient),
      'description': serializer.toJson<String>(description),
      'type': serializer.toJson<String>(type),
    };
  }

  Ingredient copyWith(
          {String? id,
          String? ingredient,
          String? description,
          String? type}) =>
      Ingredient(
        id: id ?? this.id,
        ingredient: ingredient ?? this.ingredient,
        description: description ?? this.description,
        type: type ?? this.type,
      );
  @override
  String toString() {
    return (StringBuffer('Ingredient(')
          ..write('id: $id, ')
          ..write('ingredient: $ingredient, ')
          ..write('description: $description, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, ingredient, description, type);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Ingredient &&
          other.id == this.id &&
          other.ingredient == this.ingredient &&
          other.description == this.description &&
          other.type == this.type);
}

class IngredientsCompanion extends UpdateCompanion<Ingredient> {
  final Value<String> id;
  final Value<String> ingredient;
  final Value<String> description;
  final Value<String> type;
  const IngredientsCompanion({
    this.id = const Value.absent(),
    this.ingredient = const Value.absent(),
    this.description = const Value.absent(),
    this.type = const Value.absent(),
  });
  IngredientsCompanion.insert({
    required String id,
    required String ingredient,
    required String description,
    required String type,
  })  : id = Value(id),
        ingredient = Value(ingredient),
        description = Value(description),
        type = Value(type);
  static Insertable<Ingredient> custom({
    Expression<String>? id,
    Expression<String>? ingredient,
    Expression<String>? description,
    Expression<String>? type,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (ingredient != null) 'ingredient': ingredient,
      if (description != null) 'description': description,
      if (type != null) 'type': type,
    });
  }

  IngredientsCompanion copyWith(
      {Value<String>? id,
      Value<String>? ingredient,
      Value<String>? description,
      Value<String>? type}) {
    return IngredientsCompanion(
      id: id ?? this.id,
      ingredient: ingredient ?? this.ingredient,
      description: description ?? this.description,
      type: type ?? this.type,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (ingredient.present) {
      map['ingredient'] = Variable<String>(ingredient.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('IngredientsCompanion(')
          ..write('id: $id, ')
          ..write('ingredient: $ingredient, ')
          ..write('description: $description, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }
}

class $IngredientsTable extends Ingredients
    with TableInfo<$IngredientsTable, Ingredient> {
  final GeneratedDatabase _db;
  final String? _alias;
  $IngredientsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _ingredientMeta = const VerificationMeta('ingredient');
  @override
  late final GeneratedColumn<String?> ingredient = GeneratedColumn<String?>(
      'ingredient', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String?> type = GeneratedColumn<String?>(
      'type', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, ingredient, description, type];
  @override
  String get aliasedName => _alias ?? 'ingredients';
  @override
  String get actualTableName => 'ingredients';
  @override
  VerificationContext validateIntegrity(Insertable<Ingredient> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('ingredient')) {
      context.handle(
          _ingredientMeta,
          ingredient.isAcceptableOrUnknown(
              data['ingredient']!, _ingredientMeta));
    } else if (isInserting) {
      context.missing(_ingredientMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Ingredient map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Ingredient.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $IngredientsTable createAlias(String alias) {
    return $IngredientsTable(_db, alias);
  }
}

class Favorite extends DataClass implements Insertable<Favorite> {
  final int id;
  final String idMeal;
  final String name;
  final String image;
  Favorite(
      {required this.id,
      required this.idMeal,
      required this.name,
      required this.image});
  factory Favorite.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Favorite(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      idMeal: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_meal'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      image: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['id_meal'] = Variable<String>(idMeal);
    map['name'] = Variable<String>(name);
    map['image'] = Variable<String>(image);
    return map;
  }

  FavoritesCompanion toCompanion(bool nullToAbsent) {
    return FavoritesCompanion(
      id: Value(id),
      idMeal: Value(idMeal),
      name: Value(name),
      image: Value(image),
    );
  }

  factory Favorite.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Favorite(
      id: serializer.fromJson<int>(json['id']),
      idMeal: serializer.fromJson<String>(json['idMeal']),
      name: serializer.fromJson<String>(json['name']),
      image: serializer.fromJson<String>(json['image']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idMeal': serializer.toJson<String>(idMeal),
      'name': serializer.toJson<String>(name),
      'image': serializer.toJson<String>(image),
    };
  }

  Favorite copyWith({int? id, String? idMeal, String? name, String? image}) =>
      Favorite(
        id: id ?? this.id,
        idMeal: idMeal ?? this.idMeal,
        name: name ?? this.name,
        image: image ?? this.image,
      );
  @override
  String toString() {
    return (StringBuffer('Favorite(')
          ..write('id: $id, ')
          ..write('idMeal: $idMeal, ')
          ..write('name: $name, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, idMeal, name, image);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Favorite &&
          other.id == this.id &&
          other.idMeal == this.idMeal &&
          other.name == this.name &&
          other.image == this.image);
}

class FavoritesCompanion extends UpdateCompanion<Favorite> {
  final Value<int> id;
  final Value<String> idMeal;
  final Value<String> name;
  final Value<String> image;
  const FavoritesCompanion({
    this.id = const Value.absent(),
    this.idMeal = const Value.absent(),
    this.name = const Value.absent(),
    this.image = const Value.absent(),
  });
  FavoritesCompanion.insert({
    this.id = const Value.absent(),
    required String idMeal,
    required String name,
    required String image,
  })  : idMeal = Value(idMeal),
        name = Value(name),
        image = Value(image);
  static Insertable<Favorite> custom({
    Expression<int>? id,
    Expression<String>? idMeal,
    Expression<String>? name,
    Expression<String>? image,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idMeal != null) 'id_meal': idMeal,
      if (name != null) 'name': name,
      if (image != null) 'image': image,
    });
  }

  FavoritesCompanion copyWith(
      {Value<int>? id,
      Value<String>? idMeal,
      Value<String>? name,
      Value<String>? image}) {
    return FavoritesCompanion(
      id: id ?? this.id,
      idMeal: idMeal ?? this.idMeal,
      name: name ?? this.name,
      image: image ?? this.image,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idMeal.present) {
      map['id_meal'] = Variable<String>(idMeal.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoritesCompanion(')
          ..write('id: $id, ')
          ..write('idMeal: $idMeal, ')
          ..write('name: $name, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }
}

class $FavoritesTable extends Favorites
    with TableInfo<$FavoritesTable, Favorite> {
  final GeneratedDatabase _db;
  final String? _alias;
  $FavoritesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _idMealMeta = const VerificationMeta('idMeal');
  @override
  late final GeneratedColumn<String?> idMeal = GeneratedColumn<String?>(
      'id_meal', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String?> image = GeneratedColumn<String?>(
      'image', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, idMeal, name, image];
  @override
  String get aliasedName => _alias ?? 'favorites';
  @override
  String get actualTableName => 'favorites';
  @override
  VerificationContext validateIntegrity(Insertable<Favorite> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('id_meal')) {
      context.handle(_idMealMeta,
          idMeal.isAcceptableOrUnknown(data['id_meal']!, _idMealMeta));
    } else if (isInserting) {
      context.missing(_idMealMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Favorite map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Favorite.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FavoritesTable createAlias(String alias) {
    return $FavoritesTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $AreasTable areas = $AreasTable(this);
  late final $CategoriesTable categories = $CategoriesTable(this);
  late final $IngredientsTable ingredients = $IngredientsTable(this);
  late final $FavoritesTable favorites = $FavoritesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [areas, categories, ingredients, favorites];
}
