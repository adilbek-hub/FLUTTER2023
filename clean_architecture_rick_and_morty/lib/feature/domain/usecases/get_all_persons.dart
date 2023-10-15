import 'package:clean_architecture_rick_and_morty/core/error/failur.dart';
import 'package:clean_architecture_rick_and_morty/feature/domain/entitiles/person_entity.dart';
import 'package:clean_architecture_rick_and_morty/feature/domain/repositories/person_repository.dart';
import 'package:dartz/dartz.dart';

//у нас будет первый <usecase> который будет отвечать за отображения списка персонажа.
class GetAllPersons {
  final PersonRepository personRepository;
  GetAllPersons({required this.personRepository});

  Future<Either<Failure, List<PersonEntity>>> call(int page) async {
    return await personRepository.getAllPersons(page);
  }
}
