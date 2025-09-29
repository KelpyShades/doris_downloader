String? validateUrl(String url) {
  if (!url.startsWith('https://')) {
    return 'Please enter a valid URL';
  } else if (!url.contains('web.facebook.com') &&
      !url.contains('www.instagram.com') &&
      !url.contains('www.tiktok.com') &&
      !url.contains('www.reddit.com') &&
      !url.contains('pin.it')) {
    return 'Please enter a valid URL for supported platforms';
  }
  return null;
}
