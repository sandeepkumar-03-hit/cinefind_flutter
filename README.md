# CineFind

<p align="center">
  <strong>Discover your next favourite movie.</strong><br>
  Search a curated movie collection, explore genres, and keep a personal favourites list.
</p>

<p align="center">
  <a href="https://github.com/sandeepkumar-03-hit/cinefind_flutter/releases/download/v1.0.0/app-release.apk"><strong>⬇ Download CineFind for Android</strong></a>
  &nbsp; · &nbsp;
  <a href="https://github.com/sandeepkumar-03-hit/cinefind_flutter/releases">All releases</a>
</p>

## About

CineFind is a dark-themed Flutter movie discovery app. Browse a curated catalogue of popular films, find titles by name or year, filter by genre, and save favourites to your watchlist. The catalogue is bundled with the app, so the core experience works offline without an API key or account.

## Features

- Search by movie title, genre, or release year
- Filter by Action, Comedy, Drama, Horror, Romance, Sci-Fi, Thriller, Mystery, and Animation
- Browse a responsive two-column movie grid
- View each movie's overview, year, genre, and rating
- Add or remove favourites and filter the catalogue to your watchlist
- Explore offline with a locally bundled catalogue

## Install the Android app

1. Download the APK using the button at the top of this page, or visit [Releases](https://github.com/sandeepkumar-03-hit/cinefind_flutter/releases).
2. Open the downloaded `app-release.apk` on your Android device.
3. If Android asks, allow installation from your browser or file manager, then install CineFind.

## Run from source

Requirements: Flutter SDK and Android Studio (or an Android device/emulator).

```bash
git clone https://github.com/sandeepkumar-03-hit/cinefind_flutter.git
cd cinefind_flutter
flutter pub get
flutter run
```

## Build the APK

```bash
flutter build apk --release
```

The release APK is created at `build/app/outputs/flutter-apk/app-release.apk`.

## Project notes

CineFind uses a curated local movie catalogue and emoji-based poster artwork. It does not currently connect to a live movie database or use copyrighted movie poster images.
