import 'package:youtube_api/src/enum/result_type.dart';
import 'package:youtube_api/src/model/youtube_api_result.dart';
import 'package:youtube_api/src/playlist.dart';

class YoutubePlaylist extends ApiResult {
  YoutubePlaylist(data, {bool isSingleResult = false})
      : super(data, isSingleResult: isSingleResult) {
    final snippet_ = data["snippet"];
    if (snippet_ != null) snippet = PlaylistSnippet.fromJsonData(snippet_);
  }
  covariant late final PlaylistSnippet? snippet;
  @override
  ResultType get type => ResultType.playlist;
}
