---
layout: page
title: System Settings
last_modified_date: "2022-10-11"
parent: Transfer Processes
nav_order: 1
---

<!-- ## Analogue to Digital Converter -->

# Wavelab Capture Settings

The primary Digitial Audio Workstation (DAW) used for audio capture and editing is [Steinberg's Wavelab Pro](https://www.steinberg.net/wavelab/).  

The following file capture and edit settings should be applied when first setting up Wavelab and routinely verfied.

## 1. Audio Capture

Open the Recording Dialog from the Main Audio Editor by clicking the **Record** button in the Transport control, click the blue audio format text to open the Audio File Format window and set the file capture settings:

| Type | Wave (Microsoft) |
| File Extension | wav |
| Audio Format | PCM (uncompressed) |
| Channels | Multi Stereo |
| Sample Rate | 96 000 Hz |
| Bit Depth | 24 |
| Meta-Data | -> Inherit from Source File |

Click **Okay** to save the settings.

## 2. Metadata

Files are set to embed the following metadata in the RIFF chunk of the WAVE file header:

* Name of engineer
* Capture software
* Date of transfer

To automatically write metadata to file during capture, open the Metadata window from **Tool Windows > Metadata >  RIFF** tab **> Edit** and enter the following values:

| Code | Name | Value |
| :--- | :--- | :--- |
| IENG | Engineer | Name |
| ISFT | Originator Software | @WaveLabAndVersion@ |
| ICRD | Date | @Date12@T@Time3@Z |

_Note - Date and time is formatted in SMPTE-25_

Commit the changes by clicking **Use as Default for New .wav Files**

<img src="{{ site.baseurl }}/assets/images/system_settings/1_embeded_metdata.PNG">

Embeded file metadata can be viewed at any time in the Metdata window.

## 3. File Preferences

Audio file preferences are set in the **File > Preference > Audio Files > File** tab, ensure the options are selected / deseleted according to the list below:

- [x] Support RF64 File Format
- [ ] Create Optimized Audio File Headers
- [ ] Write Markers in WAV File Header (RIFF Format)
- [ ] Write Markers in WAV File Header (BWF Format)
- [x] Write Markers in Seperate File
- [x] Create Peak Files in an Independent Folder
- [x] Create Peak Files When Writing Audio Files




