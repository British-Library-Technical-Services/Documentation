---
layout: page
title: Raspberry Pi Audio Capture
last_modified_date: "2023-02-02"
parent: Transfer Processes
nav_order: 2
# page compiled from information supplied by Karl Jenkins
---

# Raspberry Pi Audio Capture
The Raspberry Pi is a low-cost solution for audio digitisation. 

The [Raspberry Pi 5](https://www.raspberrypi.com/documentation/computers/raspberry-pi-5.html) (8GB RAM), running on [Raspberry Pi OS](https://www.raspberrypi.com/software/), is connected to the Prism Titan ADC via USB.  The audio signal is captured and edited using [Cockos' Reaper](https://www.reaper.fm) Digital Audio Workstation (DAW).

[1. Prism Titan ADC, USB Mode](#1-prism-titan-adc-usb-mode)

[2. Reaper](#2-reaper)
* [2.1. Capture Settings](#21-capture-settings)
* [2.2. Editing and Exporting Files](#22-editing-and-exporting-files)
* [2.3. Additional Settings](#23-additonal-settings)


## 1. Prism Titan ADC, USB Mode
To set the Prism Titan to USB Mode, connect it to one of the Raspberry Pi's USB ports and press and hold the large volume nob on the front panel until the light flashes.  The Prism Control Panel does not run natively on Linux so the ADC settings (clock, channel inputs etc.) must be set in Reaper.

<img src="{{ site.baseurl }}/assets/images/system_settings/3_raspberry_pi_usb.png">

Prism's Verifile is compatible with USB mode and runs on the Pi using the [Wine](https://www.winehq.org) compatibility layer.  Audio files should be verified in Verifile after each transfer to ensure they have no drop-outs.  See [Section 2. Verfile](#2-verifile) for details.

## 2. Reaper
Cockos' Reaper is an affordable, fully-featured DAW that runs natively on Linux.  

### 2.1. Capture Settings
##### Hardware
Open **Options > Preferences > Audio > Device** and set the following settings for the Titan:

| Audio System | ALSA |
| Input Device | "hw:Titan ; USB-Audio - Titan" |
| Output Device | "hw:Titan ; USB-Audio - Titan" |
| Samplerate | 96000 |
| Blocksize | 2048 |
| Bit Depth | 24 |

<img src="{{ site.baseurl }}/assets/images/system_settings/4_reaper_audio_device_settings.png">

#### File Settings
Open **Options > Preferences > Audio > Recording**

Set "Recorded Filenames" so each file is named according to the name set in the corresponding Track in the Timeline:

| Recorded Filenames | $track |

Ensure "Start new files every 1024 megabytes" is **unchecked**

<img src="{{ site.baseurl }}/assets/images/system_settings/5_reaper_recording_preferences.png">

Due to the limited onboard stoage allocated to the Pi, files are recorded directly onto External SSD drives, connected via high-speed USB 3.

To set the file save location, open **File > Project Settings > Media**

Click "Browse..." under "Path to Save Media" and navigate to the attached SSD storage under "/mount/{username}/{drive tag number}"

Set the following under the Recording settings:

| Audio format for new recordings | WAV |
| WAV bit depth | 24 bit PCM |
| Large files | Auto WAV/RF64 |
| Write BWF ('bext) chunk | &#x2705; |

<img src="{{ site.baseurl }}/assets/images/system_settings/6_reaper_project_settings.png">

### 2.2. Editing and Exporting Files
Reaper uses a non-destrcutive editing system, so files trimed in the timeline after recording muct be exported as new files.  There are several ways to do this but the simplist it to use the Consolidate/Eport Tracks function.

Open **File > Consolidate/Export Tracks** from the top menu and set the following Consolidation Settings:

Set the following in the Consolidation Settings:

| Time selection | &#x2705; |
| Tracks > Selected |  &#x2705; |
| Consolidate to | WAV |
| WAV bit depth | 24 bit PCM* |
| Large files | Auto WAV/RF64 | 
| Write BWF ('bext) chunk | &#x2705; |

_*Note - update as required to match source file_

Ensure "Ignore silence shorter than:" is **unchecked**

<img src="{{ site.baseurl }}/assets/images/system_settings/7_reaper_consolidate_export.png">

To edit and Consolidate/Export files in the Timeline:

1. Select the audio file for edit in the Timeline
2. Select the IN point for edit and press "s" on the keyboard, this will split the file, repeat for the OUT point
3. Select the edited file
4. Right click on the Timeline's, top Time Ruler and select "Set Selection to items" from the menu
5. Right click the edited file and select **File > Consolidate/Export Tracks** from the menu
6. set the export path under the Output settings
7. Press Process

### 2.3. Additonal Settings

1. Turn off copying files when imported into Reaper.  

Open **File > Project Settings > Media** and set:

| On import of media to project | Do not copy media to project path |