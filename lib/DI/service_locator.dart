import 'package:get_it/get_it.dart';
import 'package:spotifyclone/data/datasource/album_datasource.dart';
import 'package:spotifyclone/data/datasource/artist_datasource.dart';
import 'package:spotifyclone/data/repository/artist_repository.dart';

var locator = GetIt.instance;

void initServiceLocator() {
  locator.registerSingleton<ArtistDatasource>(ArtistLocalDatasource());
  locator.registerSingleton<AlbumDatasource>(AlbumLocalDatasource());
  locator.registerSingleton<ArtistRepository>(ArtistLocalRepository());
}
