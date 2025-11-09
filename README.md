# MuseScore Auto-Opener

A lightweight AppleScript utility that automatically opens `.mcsz` files in the correct version of MuseScore based on filename flags. Personal project.

## Table of Contents
- [Background](#background)
- [Project Overview](#project-overview)
- [Technologies Used](#technologies-used)
- [Results](#results)
- [Takeaways](#takeaways)
- [Improvements & Extensions](#improvements--extensions)
- [Download & Setup](#download--setup)
- [Contributing](#contributing)
- [License](#license)

## Background

I am passionate about music. In particular, I enjoy writing scores to transcribe, arrange, and compose. However, I personally find that transcribing is best done in MuseScore 3, and arranging and composing are best done in MuseScore 4 (MuseScore Studio).

> [!NOTE]
> As of writing, MuseScore 4 and MuseScore Studio refer to the same app. From now, I will refer to it as MuseScore 4.

The file extension for all MuseScore scores, regardless of app version, is `.mcsz`. This meant that every time I opened a score, I would be required to manually specify which version of the app to open it in each time. This became annoying, so I began to wonder if there was a way I could automate it.

## Project Overview

In this project, I wrote an application that opens a score file in a specific version of the app depending on a "flag" added to the filename.

If the filename contains `-ms3` or `MS3-`, it opens the file in MuseScore 3. Otherwise, it defaults to opening the file in MuseScore 4. This is done quickly and automatically whenever score files are opened, removing the need to manually choose which version to use for each file.

## Technologies Used
- AppleScript

## Results

This script has made my workflow noticeably smoother. It integrates seamlessly into macOS, saves time, and ensures the correct app opens, which prevents possible file corruption.

## Takeaways

This project:
- Introduced me to AppleScript and how it interacts with applications and files on macOS.
- Reinforced the importance of workflow efficiency and automating repetitive tasks.

## Improvements & Extensions

- Create an equivalent tool for Windows or Linux users.
- Add error handling if the specified version of MuseScore is not installed.
- Expand to other apps and filetypes.

## Download & Setup

### Prerequisites
- macOS
- [MuseScore 3](https://musescore.org/en/download)
- [MuseScore 4](https://musescore.org/en/download)

### How to Run
1. Download the `.zip` archive: [`MuseScore Auto-Opener.app.zip`](MuseScore%20Auto-Opener.app.zip).
2. Extract the archive and move the `.app` to your Applications folder (optional but recommended).
3. Set `MuseScore Auto-Opener.app` as the default program for `.mcsz` files in Finder.
    - Right-click on any `.mcsz` file and choose "Get Info".
    - Under "Open with:", select `MuseScore Auto-Opener.app`.
    - Click "Change All".
4. The app will take over automatically whenever a `.mcsz` file is opened.

### File Integrity

To verify the integrity of the download, compare the SHA-256 checksum:
```
b0914f5025a658b18c67fb014667ccb1b335b654c8e5d0f193559002f68c7fa6
```
Run this command in Terminal:
```
shasum -a 256 /path/to/"MuseScore Auto-Opener.app.zip"
```
If the output matches the hash above, the file is valid.

### Examples

To have a file automatically open in MuseScore 3, rename it to contain `-ms3` or `MS3-`:
```
MyScore-ms3.mcsz
MS3-MyScore.mcsz
```

To have a file automatically open in MuseScore 4, omit those flags:
```
MyScore.mcsz
MyScore-ms4.mcsz
...
```

## Contributing

- Fork the repo and submit a pull request with any improvements.
- Suggestions or bug reports welcome via email or GitHub issues.

## License

This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and distribute this code, provided you include proper credit and retain the license notice.

> © 2025 Ethan Griffith
