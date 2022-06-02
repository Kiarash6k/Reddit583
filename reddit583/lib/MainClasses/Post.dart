class Post {
  String _title;
  String _text;
  bool _isLike;
  bool _isDislike;
  int _votes;
  bool _isMarked;
  Post(this._title, this._text, this._isLike, this._isDislike, this._votes, this._isMarked);
  String getTitle() => _title;
  String getText() => _text;
  bool isPostLiked() => _isLike;
  bool isPostDislike() => _isDislike;
  int getVotes() => _votes;
  bool isPostMarked() => _isMarked;
  void setTitle(String title) => _title = title;
  void setText(String text) => _text = text;
  void setLiked(bool isLike)  {
    _isLike = isLike;
    if(_isLike) {
      if(_isDislike) {
        _votes += 2;
        _isDislike = false;
      } else {
        _votes++;
      }
    } else {
      _votes--;
    }
  }
  void setDislike(bool isDislike) {
    _isDislike = isDislike;
    if(_isDislike) {
      if(_isLike) {
        _votes -= 2;
        _isLike = false;
      } else {
        _votes--;
      }
    } else {
      _votes++;
    }
  }
  void setVotes(int votes) => _votes = votes;
  void setMarked(bool isMarked) => _isMarked = isMarked;
}