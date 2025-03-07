String timeAgo(String isoDate) {
  DateTime createdDate = DateTime.parse(isoDate);
  DateTime now = DateTime.now();
  Duration difference = now.difference(createdDate);

  if (difference.inDays >= 30) {
    int monthsAgo = (difference.inDays / 30).floor();
    return "$monthsAgo month${monthsAgo > 1 ? 's' : ''} ago";
  } else if (difference.inDays > 0) {
    return "${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago";
  } else if (difference.inHours > 0) {
    return "${difference.inHours} hour${difference.inHours > 1
        ? 's'
        : ''} ago";
  } else if (difference.inMinutes > 0) {
    return "${difference.inMinutes} minute${difference.inMinutes > 1
        ? 's'
        : ''} ago";
  } else {
    return "Just now";
  }
}
