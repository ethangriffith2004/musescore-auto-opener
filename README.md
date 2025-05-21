# MuseScore Auto-Opener

A short personal project of mine. A lightweight AppleScript utility to open a [MuseScore](https://en.wikipedia.org/wiki/MuseScore) file in the correct version of the app (3 or 4) depending on its name.

## Table of Contents
- [Background](#background)
- [Project Overview](#project-overview)
- [Technologies Used](#technologies-used)
- [Results](#results)
- [Takeaways](#takeaways)
- [Improvements & Extensions](#improvements--extensions)
- [How to Run](#how-to-run)
- [Contributing](#contributing)
- [License](#license)

## Background

I am extremely passionate about music. In particular, I enjoy writing scores to transcribe, arrange, and compose. However, I personally find that **transcribing is best done in MuseScore 3**, and **arranging and composing are best done in MuseScore 4 (MuseScore Studio)**.

The file extension for all MuseScore scores, regardless of version, is `.mcsz`, which meant that every time I opened a score, I would be required to manually specify which version of the app to open it in each time. This quickly became tedious, so I began to wonder if there was any way I could automate it.

## Project Overview

In this project, I wrote an application that opens a score file in a specific version of the app depending on a "flag" added to the filename.

If the filename contains `-ms3` or `MS3-`, it opens the file in **MuseScore 3**. Otherwise, it defaults to opening the file in **MuseScore 4**. This is done quickly and automatically whenever score files are opened, eliminating the need to manually choose which version of MuseScore to open each score file with.

## Technologies Used
- AppleScript
- macOS Script Editor

## Results

This script has **made my workflow noticeably smoother**. It integrates seamlessly into macOS, saves time, eliminates repetitive clicks, and ensures the right app opens every time which avoids file corruption.

## Takeaways

This project:
- **Introduced me to AppleScript** and how it interacts with macOS applications.
- Reinforced the **importance of workflow efficiency** and automating repetitive tasks.
- Demonstrated how simple scripts like this can **solve real problems** effectively.

## Improvements & Extensions

- Create a companion script or tool for Windows or Linux users.
- Add error handling if the specified MuseScore app is not installed.

## How to Run

### Prerequisites
- macOS
- [MuseScore 3](https://musescore.org/en/download)
- [MuseScore 4](https://musescore.org/en/download)

### Steps
1. Download the application: `Musescore Auto Opener.app`.
2. Set the app as the default program for `.mcsz` files in Finder.

### Examples

To have a file automatically open in MuseScore 3, rename it to contain `-ms3` or `MS3-`:
```
MyScore-ms3.mcsz
MS3-MyScore.mcsz
```

To have a file automatically open in MuseScore 4, name the file so it does not include any of these indicators:
```
MyScore.mcsz
MyScore-ms4.mcsz
```

## Contributing

- Feel free to fork the repo and suggest improvements!
- Open to feedback and questions via email or GitHub issues.

## License

This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and distribute this code, provided you include proper credit and retain the license notice.

> © 2025 Ethan Griffith
