class Functions {
  static String generateDuration(int sec) {
    int hours = (sec / 3600).floor();
    int minutes = ((sec - (hours * 3600)) / 60).floor();
    int seconds = sec - (hours * 3600) - (minutes * 60);

    String minuteStr = minutes.toString();
    String secondStr = seconds.toString();

    if (minutes < 10) minuteStr = '0$minuteStr';
    if (seconds < 10) secondStr = '0$secondStr';
    if (hours > 0) return '$hours:$minuteStr:$secondStr';
    return '$minuteStr:$secondStr';
  }
}
