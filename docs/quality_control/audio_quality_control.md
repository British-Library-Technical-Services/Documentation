---
layout: page
title: Audio Quality Control
last_modified_date: "2022-03-11"
author: Tom Ruane
parent: Quality Control
nav_order: 1
permalink: /quality_control/audio_quality_control/
---

# Audio Quality Control

The following Quality Control (QC) checks should be completed on the digital file, transfer methodology, Submission Information Package (SIP) and Tracking Database.

QC is undertaken by comparing the original item to the preservation audio files; it cannot typically be completed against the files alone.

## Digital File
* The filename is correct and adheres to the Library's schema
* There is no whitespace or illegal characters in the filename
* The correct metadata is stored in the file's RIFF Header
* The file has been edited with one second of silence before the start of the signal modulation
* The file has been edited with one second of silence at the end of the signal modulation
* The signal does not peak at 0dB (analogue source)
* There are no sample-clock errors or drop outs visible (see [Spectrum Analysis](quality_control_spectrum_analysis.md))
* Any blank audio channels have been removed

## Transfer Methodology
* The content matches the original item
* The replay speed is correct
* The azimuth on tape/cassette transfers is correctly aligned
* All correct replay parameters are applied where appropriate (Noise Reduction etc.)

## SIP
* Stages 1-5 are complete
* All the correct files are attached

__Stage 4: Physical Structure:__
  * Each individual Shelfmark and Item are attached to a Node
  * Each Side is attached to its numbered Side
  * Each File is attached to the corresponding Side

__Stage 5: Process History:__
  * The Engineer's details are correct
  * A Migration Process is present
  * All relevant Processes are present and in order (Preparation, Migration, Capture, Editing etc.)
  * All transfer equipment is listed and attached to the relevant Process
  * All replay parameters are correct (speed, equalisation etc.)
  * Equipment serial numbers are listed and correct
  * The Input-Outputs are correct across the signal chain

## Tracking Database


__Transfer (File-based)__

| Field | Value |
|:---|:---|
Transferred from | Source Item (e.g. Original) |
| Transfer Date | DD/MM/YY |
| Engineer | Name |
| Equipment | List of replay equipment |

__P-SIP__

| Field | Value |
|:---|:---|
| P-SIP Date | DD/MM/YY |
| P-SIP Engineer | Name |

__Technical Notes__

| Field | Value |
|:---|:---|
| Speed {310} | 9.5cm/s, 19 cm/s etc. |
| Track Config. {310} | Mono, Stereo etc. |
| Item Notes {502} | Any relevant details about the physical item's condition |
| Sound Quality Notes {522} | General comments about the quality of the recorded audio that cannot be rectified in transfer |

On completion the QC Status should be recorded in the Tracking Database.  For more information see:
[Quality Control Status](quality_control_status.md)
