import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';
import 'package:transparent_image/transparent_image.dart';

class AnnouncementsPage extends StatefulWidget {
  const AnnouncementsPage({super.key});

  @override
  _AnnouncementsPageState createState() => _AnnouncementsPageState();
}

class _AnnouncementsPageState extends State<AnnouncementsPage> {
  final List<Media> _selectedMedias = [];

  Future<void> handleFloatingActionButton() async {
    final List<Media>? result = await Navigator.push<List<Media>>(
      context,
      MaterialPageRoute(
          builder: (context) => GalleryPage(
                selectedMedias: _selectedMedias,
              )),
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
        title: const Text('Announcements'),
      ),
      body: ListView.builder(
          itemCount: _selectedMedias.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: _selectedMedias[index].widget,
            );
          }),
      floatingActionButton:
          FloatingActionButton(onPressed: handleFloatingActionButton),
    );
  }
}

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key, required this.selectedMedias});
  final List<Media> selectedMedias;

  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  final List<Media> _selectedMedias = [];
  AssetPathEntity? _currentAlbum;
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
          title: DropdownButton<AssetPathEntity>(
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
      )),
      body: MediaGridView(
        medias: _medias,
        selectedMedias: _selectedMedias,
        selectedMedia: _selectedMedia,
        scrollController: _scrollController,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context, _selectedMedias);
        },
        child: const Icon(Icons.check_rounded),
      ),
    );
  }
}

class Media {
  final AssetEntity assetEntity;
  final Widget widget;

  Media({required this.assetEntity, required this.widget});
}

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

class MediaGridView extends StatelessWidget {
  const MediaGridView(
      {super.key,
      required this.medias,
      required this.selectedMedias,
      required this.selectedMedia,
      required this.scrollController});
  final List<Media> medias;
  final List<Media> selectedMedias;
  final Function(Media) selectedMedia;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        controller: scrollController,
        physics: const BouncingScrollPhysics(),
        itemCount: medias.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisExtent: 200,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return MediaItem(
              media: medias[index],
              isSelected: selectedMedias.any((element) =>
                  element.assetEntity.id == medias[index].assetEntity.id),
              selectMedia: selectedMedia);
        });
  }
}

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
