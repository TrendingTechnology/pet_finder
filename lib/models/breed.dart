import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:pet_finder/import.dart';

part 'breed.g.dart';

@CopyWith()
@JsonSerializable()
class BreedModel extends Equatable {
  BreedModel({
    this.id,
    this.name,
    this.category, // TODO: надо ли держать в модели?
  });

  final String id;
  final String name;
  final CategoryModel category;

  @override
  List<Object> get props => [id, name, category];

  factory BreedModel.fromJson(Map<String, dynamic> json) =>
      _$BreedModelFromJson(json);

  Map<String, dynamic> toJson() => _$BreedModelToJson(this);
}