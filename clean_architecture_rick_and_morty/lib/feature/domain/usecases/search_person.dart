import 'package:clean_architecture_rick_and_morty/core/error/failur.dart';
import 'package:clean_architecture_rick_and_morty/feature/domain/entitiles/person_entity.dart';
import 'package:clean_architecture_rick_and_morty/feature/domain/repositories/person_repository.dart';
import 'package:dartz/dartz.dart';

class SearchPerson {
  final PersonRepository personRepository;
  SearchPerson({required this.personRepository});

  Future<Either<Failure, List<PersonEntity>>> call(String query) async {
    return await personRepository.searchPerson(query);
  }
}
