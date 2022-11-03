---
layout: page
title: Audio Capture Settings
last_modified_date: "2022-11-03"
parent: Transfer Processes
nav_order: 1
---
# Audio Capture Settings

This page outlines the signal flow and settings to capture audio in the Library's sound studios.  Signal is captured from analogue sources at a sample rate of **96kHz** and a word-length of **24 bits**.  The target preservation file format is **Lossless PCM WAVE** file.

Engineers should ensure their equipment settings match those listed below and routinely verify they are correct before undertaking transfer work.

1. [Analogue to Digital Converters](#1-analogue-to-digital-converters)
* [1.1 RME Hammerfall DSP](#11-rme-hammerfall-dsp)
* [1.2 Prism Dream ADA-8XR](#12-prism-dream-ada-8xr)
* [1.3 Apogee Rosetta 800](#13-apogee-rosetta-800)

2. [WaveLab](#2wavelab)
* [2.1 Capture](#21-capture)
* [2.2 Metadata](#22-metadata)
* [2.3 File Preferences](#23-file-preferences)

## 1. Analogue to Digital Converters
The audio preservation studios are equipped with two 8-channel Analogue-to-Digital converters (ADC), either the [Prism Sound Dream ADA-XR](https://beta.prismsound.com/products/ada-8xr/) or the [Apogee Rosetta 800](https://apogeedigital.com/pdf/rosetta800_usersguide.pdf), connected over AES3 to an internal 16-channel [RME Hammerfall DSP](/link/) PCI-E card.

<img src="{{ site.baseurl }}/assets/images/system_settings/1_ADC_diagram.png">

_Standard signal flow between converters_

### 1.1 RME Hammerfall DSP

The RME Hammerfall is set as the Master clock for the external ADAs to sync to.  

To access the RME Hammerfall Control Panel go to the Windows Taskbar and open the application labelled **DSP**.  In the **AES(1)** tab set the clock Source to Internal.

| Clock Mode | -- |
| Sample Rate | 96000Hz |
| Source | Internal |

**Ensure the settings are correct at the start of each day before transfer**.  The input status will list Sync for each channel and the sample rate, if any of these values are different or do not remain static, the clock is not syncing and must be corrected.

| Input Status | -- | -- |
| AES 1 | Sync | 96kHz |
| AES 2 | Sync | 96kHz |
| AES 3 | Sync | 96kHz |
| AES 4 | Sync | 96kHz |

### 1.2 Prism Dream ADA-8XR

The **first Prism Dream ADA-8XR** in the stack is set to capture audio inputs 1 - 8.  

The ADA-8XR has two signal paths, Path 1 encodes analogue input and sends it to the RME Hammerfall.  The settings for each path are accessed on the front panel of the interface.

#### 1.2.1 ADC 1, Path 1

| Source | Decode | Process | Dither / Encode | Sync Source | Sample Rate | Dest | 
| Analogue | 24b | Bypass | Flat | DI1 | 48k | DI1 |
| | | | 24b | | x2 | |

Path 2 is set to monitor audio back from Wavelab:

#### 1.2.2 ADC 1, Path 2

| Source | Decode | Process | Dither / Encode | Sync Source | Sample Rate | Dest | 
| DI1 | 24b | Bypass | Flat | DI1 | 48k | Analogue |
| | | | 24b | | x2 | |
| | | | | | Ext | |

The **second ADA-8XR** in the stack captures inputs 9 - 16 and is set to sync its clock to the first ADA-8XR, which is then sync'd to the RME Hammerfall Master clock. 

Path 1 should be set to the following:

#### 1.2.3 ADC 2, Path 1

| Source | Decode | Process | Dither / Encode | Sync Source | Sample Rate | Dest | 
| Analogue | 24b | Bypass | Flat | DI2 | 48k | DI1 |
| | | | 24b | | x2 | DI2 |

### 1.3 Apogee Rosetta 800

The **first Apogee Rosetta 800** in the stack is set to capture audio inputs 1 - 8.  The **second Rosetta 800** is set to capture audio inputs 9 - 16.

The front panel settings for both interfaces are set to the following values: 

| SAMPLE RATE | (WC I/O) SYNC | LOCK | SOURCE TO DIGITAL OUTS | OUTPUT RESOLUTION |
| 96 | EXT | WIDE NARROW | ANALOGUE | 24-BIT |
| | AES | | | |

## 2. WaveLab

The primary Digitial Audio Workstation (DAW) used for audio capture and editing is [Steinberg's WaveLab Pro](https://www.steinberg.net/wavelab/).  

The following file capture and edit settings should be applied when first setting up Wavelab and routinely verfied.

### 2.1 Capture

Open the Recording Dialog from the Main Audio Editor by clicking the **Record** button in the Transport control, click the blue audio format text to open the Audio File Format window and set the file capture settings:

| Type | Wave (Microsoft) |
| File Extension | wav |
| Audio Format | PCM (uncompressed) |
| Channels | Multi Stereo |
| Sample Rate | 96 000 Hz |
| Bit Depth | 24 |
| Meta-Data | -> Inherit from Source File |

Click **Okay** to save the settings.

### 2.2 Metadata

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

<img src="{{ site.baseurl }}/assets/images/system_settings/2_embeded_metdata.PNG">

Embeded file metadata can be viewed at any time in the Metdata window.

### 2.3 File Preferences

Audio file preferences are set in the **File > Preference > Audio Files > File** tab, ensure the options are selected / deseleted according to the list below:

- [x] Support RF64 File Format
- [ ] Create Optimized Audio File Headers
- [ ] Write Markers in WAV File Header (RIFF Format)
- [ ] Write Markers in WAV File Header (BWF Format)
- [x] Write Markers in Seperate File
- [x] Create Peak Files in an Independent Folder
- [x] Create Peak Files When Writing Audio Files




