import 'package:clean_architecture_tdd_course/core/platform/network_info.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/data/datasources/number_trivia_local_datasource.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/data/datasources/number_trivia_remote_datasource.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/data/repositories/number_trivia_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockRemoteDataSource extends Mock
    implements NumberTriviaRemoteDatasource {}

class MockLocalDataSource extends Mock implements NumberTriviaLocalDatasource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

main() {
  NumberTriviaRepositoryImpl numberTriviaRepositoryImpl;
  MockRemoteDataSource mockRemoteDataSource;
  MockLocalDataSource mockLocalDataSource;
  MockNetworkInfo mockNetworkInfo;

  setUp() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    numberTriviaRepositoryImpl = NumberTriviaRepositoryImpl(
        remoteDatasource: mockRemoteDataSource,
        localDatasource: mockLocalDataSource,
        networkInfo: mockNetworkInfo);
  }
}
