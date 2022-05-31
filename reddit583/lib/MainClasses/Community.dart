import 'Post.dart';

class Community {
  List<Post> posts;
  String _communityName;
  String _networkURL;
  Community(String communityName, networkURL) {
    _communityName = communityName;
    _networkURL = networkURL;
  }
  void setcommunityName(String communityName) {
    _communityName = communityName;
  }
  void setNetworkURL(String networkURL) {
    _networkURL = networkURL;
  }
  String getCommunityName() {
    return _communityName;
  }
  String getNetworkURL() {
    return _networkURL;
  }
  List<Post> getPosts() {
    return posts;
  }
}