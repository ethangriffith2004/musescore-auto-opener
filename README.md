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

I am extremely passionate about music. In particular, I enjoy writing scores to transcribe, arrange, and compose. However, I personally find that **transcribing is best done in MuseScore 3**, and **arranging and composing are best done in MuseScore 4 (MuseScore Studio)**.

> MuseScore 4 and MuseScore Studio are the same app; I will refer to it as MuseScore 4 throughout.

The file extension for all MuseScore scores, regardless of version, is `.mcsz`. This meant that every time I opened a score, I would be required to manually specify which version of the app to open it in each time. This quickly became tedious, so I began to wonder if there was any way I could automate it.

## Project Overview

In this project, I wrote an application that opens a score file in a specific version of the app depending on a "flag" added to the filename.

If the filename contains `-ms3` or `MS3-`, it opens the file in **MuseScore 3**. Otherwise, it defaults to opening the file in **MuseScore 4**. This is done quickly and automatically whenever score files are opened, eliminating the need to manually choose which version of MuseScore to open each score file with.

## Technologies Used
- AppleScript
- macOS Script Editor

## Results

This script has **made my workflow noticeably smoother**. It integrates seamlessly into macOS, saves time, eliminates repetitive clicks, and ensures the right app opens every time which reduces the risk of file corruption.

## Takeaways

This project:
- **Introduced me to AppleScript** and how it interacts with applications and files on macOS.
- Reinforced the **importance of workflow efficiency** and automating repetitive tasks.
- Demonstrated how simple scripts like this can **solve real problems** effectively.

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
1. Download and extract the file: [`MuseScore Auto-Opener.app.zip`](MuseScore%20Auto-Opener.app.zip).
2. Set `MuseScore Auto-Opener.app` as the default program for `.mcsz` files in Finder. Right-click on any `.mcsz` file, choose "Get Info", and under "Open with:", select `MuseScore Auto-Opener.app`. Then click "Change All".

### File Integrity

To verify the integrity of the downloaded `.zip` file, compare its SHA-256 checksum:
```
b0914f5025a658b18c67fb014667ccb1b335b654c8e5d0f193559002f68c7fa6
```
You can check it by running the following command in Terminal:
```
shasum -a 256 /path/to/"MuseScore Auto-Opener.app.zip"
```
If the result matches the hash above, the file has not been tampered with or corrupted.

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
```

## Contributing

- Fork the repo and submit a pull request with any improvements!
- Suggestions or bug reports welcome via email or GitHub issues.

## License

This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and distribute this code, provided you include proper credit and retain the license notice.

> © 2025 Ethan Griffith
