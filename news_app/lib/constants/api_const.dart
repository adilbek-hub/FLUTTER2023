class ApiConst {
  static const apiKey = '2d01e9e3d28d4189b48461be856e9655';
  static String topNews([String? domain]) =>
      'https://newsapi.org/v2/top-headlines?country=${domain ?? 'us'}&apiKey=$apiKey';
  static const newsImage =
      'https://pbs.twimg.com/profile_images/1108430392267280389/ufmFwzIn_400x400.png';
}
