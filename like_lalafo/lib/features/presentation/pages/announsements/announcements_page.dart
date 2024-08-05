import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:like_lalafo/core/theme/color_constants.dart';
import 'package:like_lalafo/core/theme/get_theme_mode_color.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';
import 'package:like_lalafo/features/presentation/pages/announsements/widget/media_grid_view.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';
import 'package:transparent_image/transparent_image.dart';

@RoutePage()
class AnnouncementsPage extends StatefulWidget {
  const AnnouncementsPage({super.key});

  @override
  _AnnouncementsPageState createState() => _AnnouncementsPageState();
}

class _AnnouncementsPageState extends State<AnnouncementsPage> {
  final List<Media> _selectedMedias = [];
  AssetPathEntity? _currentAlbum;
  final ImagePicker _picker = ImagePicker();
  final List<Media> _medias = [];
  int _lastPage = 0;
  int _currentPage = 0;
  final ScrollController _scrollController = ScrollController();

  void _loadAlbums() async {
    List<AssetPathEntity> albums = await PhotoManager.getAssetPathList();
    if (albums.isNotEmpty) {
      setState(() {
        _currentAlbum = albums.first;
      });
    }
    _loadMedias();
  }

  void _loadMedias() async {
    _lastPage = _currentPage;
    if (_currentAlbum != null) {
      List<AssetEntity> assets =
          await _currentAlbum!.getAssetListPaged(page: _currentPage, size: 60);
      List<Media> medias = await Future.wait(assets.map((asset) async {
        Uint8List? thumbnailData =
            await asset.thumbnailDataWithSize(const ThumbnailSize(200, 200));
        return Media(
          assetEntity: asset,
          widget:
              thumbnailData != null ? Image.memory(thumbnailData) : Container(),
        );
      }));
      setState(() {
        _medias.addAll(medias);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _loadAlbums();
    _scrollController.addListener(_loadMoreMedias);
  }

  void _loadMoreMedias() {
    if (_scrollController.position.pixels /
            _scrollController.position.maxScrollExtent >
        0.33) {
      if (_currentPage != _lastPage) {
        _currentPage++;
        _loadMedias();
      }
    }
  }

  Future<void> _pickImageFromCamera() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      final Media media = await Media.fromXFile(pickedFile);
      setState(() {
        _selectedMedias.add(media);
      });
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_loadMoreMedias);
    _scrollController.dispose();
    super.dispose();
  }

  void _selectedMedia(Media media) {
    bool isSelected = _selectedMedias
        .any((element) => element.assetEntity.id == media.assetEntity.id);
    setState(() {
      if (isSelected) {
        _selectedMedias.removeWhere(
            (element) => element.assetEntity.id == media.assetEntity.id);
      } else {
        _selectedMedias.add(media);
      }
    });
  }

  Future<void> handleGalleryButton() async {
    final List<Media>? result = await Navigator.push<List<Media>>(
      context,
      MaterialPageRoute(
        builder: (context) => GalleryPage(selectedMedias: _selectedMedias),
      ),
    );
    if (result != null) {
      _updateSelectedMedias(result);
    }
  }

  void _updateSelectedMedias(List<Media> result) {
    setState(() {
      _selectedMedias.clear();
      _selectedMedias.addAll(result);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close)),
          title: AppText(
            title: 'Объявления',
            textType: TextType.body,
            color: getThemeModeColor.brighnessTheme(context),
          ),
          actions: const [
            AppText(
              title: 'Добавить',
              textType: TextType.body,
              color: ColorConstants.green,
            ),
            SizedBox(width: 10),
          ],
        ),
        body: Column(children: [
          LayoutBuilder(
            builder: (context, constraints) {
              double containerWidth = (constraints.maxWidth - 6 * 2) / 4;
              return Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.start,
                spacing: 3.0,
                runAlignment: WrapAlignment.start,
                runSpacing: 5.0,
                children: <Widget>[
                  // First two containers (Camera and Gallery buttons)
                  Container(
                    width: containerWidth,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                      ),
                      onPressed: _pickImageFromCamera,
                    ),
                  ),
                  Container(
                    width: containerWidth,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.copy_sharp,
                        color: Colors.grey,
                      ),
                      onPressed: handleGalleryButton,
                    ),
                  ),

                  ..._medias.take(6).map((media) {
                    return SizedBox(
                      width: containerWidth,
                      height: 100,
                      child: InkWell(
                        onTap: () => _selectedMedia(media),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: media.widget,
                              ),
                            ),
                            if (_selectedMedias.contains(media))
                              Positioned.fill(
                                child: Container(
                                  color: Colors.black.withOpacity(0.1),
                                  child: const Center(
                                    child: Icon(
                                      Icons.check_circle_rounded,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  }),
                ],
              );
            },
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: AppText(
              title: 'Описание объявления',
              textType: TextType.subtitle,
              fontWeight: FontWeight.w800,
              color: getThemeModeColor.brighnessTheme(context),
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6, // Only show 6 items here
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                if (index < _selectedMedias.length) {
                  final Media media = _selectedMedias[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      width: 50,
                      height: 50,
                      color: Colors.grey,
                      child: media.widget,
                    ),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      width: 50,
                      height: 50,
                      color: Colors.grey,
                    ),
                  );
                }
              },
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // "Item 0" чоң контейнер
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.blue,
                  margin: const EdgeInsets.all(8.0),
                  child: const Center(
                    child: Text(
                      'Item 0',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
                Column(
                  children: [
                    // Биринчи катар
                    Row(
                      children: List.generate(7, (index) {
                        return Container(
                          width: 100,
                          height: 100,
                          color: Colors.blue[(index % 9 + 1) * 100],
                          margin: const EdgeInsets.all(8.0),
                          child: Center(child: Text('Item ${index + 1}')),
                        );
                      }),
                    ),
                    // Экинчи катар
                    Row(
                      children: List.generate(7, (index) {
                        return Container(
                          width: 100,
                          height: 100,
                          color: Colors.green[(index % 9 + 1) * 100],
                          margin: const EdgeInsets.all(8.0),
                          child: Center(child: Text('Item ${index + 8}')),
                        );
                      }),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]));
  }
}

/*
5.UI түзүү:

Медиа галереяны жана тандалган медиаларды көрсөтүү үчүн тийиштүү UI элементтерин түзүү керек.
 */
class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key, required this.selectedMedias});
  final List<Media> selectedMedias;

  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  ///_selectedMedias: Колдонуучу тандаган медиаларды сактайт.
  final List<Media> _selectedMedias = [];

  ///_currentAlbum: Азыркы ачылган альбомду сактайт.
  AssetPathEntity? _currentAlbum;

  ///_albums: Бардык альбомдорду сактайт.
  List<AssetPathEntity> _albums = [];
  void _loadAlbums() async {
    List<AssetPathEntity> albums = await fetchAlbums();
    if (albums.isNotEmpty) {
      setState(() {
        _currentAlbum = albums.first;
        _albums = albums;
      });
    }
    _loadMedias();
  }

  final List<Media> _medias = [];
  int _lastPage = 0;
  final int _currentPage = 0;

  void _loadMedias() async {
    _lastPage = _currentPage;
    if (_currentAlbum != null) {
      List<Media> medias =
          await fetchMedias(album: _currentAlbum!, page: _currentPage);
      setState(() {
        _medias.addAll(medias);
      });
    }
  }

  @override
  void initState() {
    _selectedMedias.addAll(widget.selectedMedias);
    _loadAlbums();
    _scrollController.addListener(_loadMoreMedias);
    super.initState();
  }

  final ScrollController _scrollController = ScrollController();
  void _loadMoreMedias() {
    if (_scrollController.position.pixels /
            _scrollController.position.maxScrollExtent >
        0.33) {
      if (_currentPage != _lastPage) {
        _loadMedias();
      }
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_loadMoreMedias);
    _scrollController.dispose();
    super.dispose();
  }

/*

4.Колдонуучу тандоолорун иштеп чыгуу:

Колдонуучу медиаларды тандаган сайын тандалгандарды жаңыртып туруу керек.
 */
  void _selectedMedia(Media media) {
    bool isSelected = _selectedMedias
        .any((element) => element.assetEntity.id == media.assetEntity.id);
    setState(() {
      if (isSelected) {
        _selectedMedias.removeWhere(
            (element) => element.assetEntity.id == media.assetEntity.id);
      } else {
        _selectedMedias.add(media);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          DropdownButton<AssetPathEntity>(
            borderRadius: BorderRadius.circular(16),
            value: _currentAlbum,
            items: _albums
                .map(
                  (e) => DropdownMenuItem<AssetPathEntity>(
                      value: e, child: Text(e.name.isEmpty ? "0" : e.name)),
                )
                .toList(),
            onChanged: (value) {
              setState(() {
                _currentAlbum = value;
                _lastPage = 0;
                _lastPage = 0;
                _medias.clear();
              });
              _loadMedias();
              _scrollController.jumpTo(0.0);
            },
          ),
          GestureDetector(
            onTap: () => Navigator.pop(context, _selectedMedias),
            child: const AppText(
              title: 'Добавить',
              textType: TextType.subtitle,
              color: ColorConstants.green,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: MediaGridView(
        medias: _medias,
        selectedMedias: _selectedMedias,
        selectedMedia: _selectedMedia,
        scrollController: _scrollController,
      ),
    );
  }
}

class Media {
  final AssetEntity assetEntity;
  final Widget widget;

  Media({required this.assetEntity, required this.widget});
  static Future<Media> fromXFile(XFile xFile) async {
    AssetEntity? assetEntity =
        await PhotoManager.editor.saveImageWithPath(xFile.path, title: '');
    return Media(
      assetEntity: assetEntity!,
      widget: Image.file(File(xFile.path)),
    );
  }
}

/*
 1. Телефондун сүрөттөрү жана видеолору менен иштөөдө биринчи аткарылуучу кадамдар төмөндөгүдөй:

Уруксаттарды суроо:
Телефон сүрөттөрүнө жана видеолоруна жетүү үчүн колдонуучудан уруксат алуу керек.
Тиешелүү уруксаттарды permission_handler пакетин колдонуп суроо керек.
 */
Future<void> grandPermission() async {
  try {
    final bool videosGranted = await Permission.videos.isGranted;
    final bool photosGranted = await Permission.photos.isGranted;
    if (!videosGranted || !photosGranted) {
      final Map<Permission, PermissionStatus> statues = await [
        Permission.videos,
        Permission.photos,
      ].request();

      if (statues[Permission.videos] == PermissionStatus.permanentlyDenied ||
          statues[Permission.photos] == PermissionStatus.permanentlyDenied) {
        await openAppSettings();
      }
    }
  } catch (e) {
    print(" Permission  Катасы $e");
  }
}

/* 2. Альбомдорду алуу:

Колдонуучунун түзмөгүндөгү альбомдорду алуу үчүн photo_manager пакетин колдонуу керек.
*/
Future<List<AssetPathEntity>> fetchAlbums() async {
  try {
    await grandPermission();
    List<AssetPathEntity> albums = await PhotoManager.getAssetPathList();
    return albums;
  } catch (e) {
    print(" Error Fetch Albums: $e");
    return [];
  }
}

/*
3. Медиаларды алуу:

Белгилүү бир альбомдогу медиаларды алуу үчүн дагы photo_manager пакетин колдонуу керек.
 */
Future<List<Media>> fetchMedias(
    {required AssetPathEntity album, required int page}) async {
  List<Media> medias = [];
  try {
    final List<AssetEntity> entities = await album.getAssetListPaged(
      page: page,
      size: 30,
    );
    for (var entity in entities) {
      Media media = Media(
        assetEntity: entity,
        widget: FadeInImage(
          placeholder: MemoryImage(kTransparentImage),
          image: AssetEntityImageProvider(
            entity,
            thumbnailSize: const ThumbnailSize.square(500),
            isOriginal: false,
          ),
          fit: BoxFit.cover,
        ),
      );
      medias.add(media);
    }
  } catch (e) {
    print(" Error Fetch Media: $e");
  }
  return medias;
}

/*
 6. Медиа торчосу:

Галереяда медиаларды торчо (grid view) түрүндө көрсөтүү үчүн MediaGridView классын колдонуу керек.
 */

/*
7. Медиа элементтери:

Ар бир медианы торчодо (grid view) көрсөтүү үчүн MediaItem классын колдонуу керек.
 */
class MediaItem extends StatelessWidget {
  const MediaItem(
      {super.key,
      required this.media,
      required this.isSelected,
      required this.selectMedia});
  final Media media;
  final bool isSelected;
  final Function selectMedia;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMedia(media),
      child: Stack(
        children: [
          _buildMediaWidget(),
          Positioned.fill(
            child: Container(
                width: 100,
                height: 100,
                color: Colors.black.withOpacity(0.15),
                child: media.assetEntity.type == AssetType.video
                    ? const Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Icon(Icons.play_arrow_outlined,
                              color: Colors.white),
                        ),
                      )
                    : null),
          ),
          if (isSelected) _buildIsSelectedOverlay()
        ],
      ),
    );
  }

  Widget _buildMediaWidget() {
    return Positioned.fill(
      child: Padding(
        padding: EdgeInsets.all(isSelected ? 10 : 0.0),
        child: media.widget,
      ),
    );
  }

  Widget _buildIsSelectedOverlay() {
    return Positioned.fill(
      child: Container(
        color: Colors.black.withOpacity(0.1),
        child: const Center(
          child: Icon(
            Icons.check_circle_rounded,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}

/*
8. Колдонмо уруксаттарын манифестке кошуу:

Android манифест файлына керектүү уруксаттарды кошуу керек.

<uses-permission android:name="android.permission.READ_MEDIA_IMAGES"/>
<uses-permission android:name="android.permission.READ_MEDIA_VIDEO"/>
<uses-permission android:name="android.permission.READ_MEDIA_AUDIO"/>
<uses-permission android:name="android.permission.CAMERA"/>
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>


IOS уруксаттарды кошуу керек.

	<key>NSCameraUsageDescription</key>
<string>We need your permission to use the camera</string>
<key>NSPhotoLibraryUsageDescription</key>
<string>We need your permission to access the photo library</string>
<key>NSPhotoLibraryAddUsageDescription</key>
<string>We need your permission to save photos to your library</string>
 */