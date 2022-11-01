---
layout: page
title: 4-Track and Quarter-Track Filenames
last_modified_date: "2022-09-09"
parent: Naming Files
nav_order: 2
# permalink: /filenaming_schema/
---

# 4-Track and Quater-Track Filenames

This guide outlines how to name audio files transferred from 4-Track and Quarter-Track tape.  The three examples described below are the most common scenarios, other configurations exist but these examples will provide the neccessary logic to manage exceptions.

1. [Four Mono Recordings](#1-four-mono-recordings)
2. [Two Stereo Recordings](#2-two-stereo-recordings)
3. [Multiple Recording Configurations](#3-multiple-recording-configurations)

_Note: This guide only covers the Side and File sections of the filename for illustration.  A complete guide to the Library's filenaming schema can be found here at [How to Name a File](how_to_name_a_file.md)_

## 1. Four Mono Recordings

A standard 4-Track configuration. Four mono recordings, one on each channel, each lasting the full duration of the tape.  The recordings can run in either direction.  While a tape can only have two physical sides each channel of a 4-Track tape is considered it's own Side.

| Tape Channel | Filename Side |
| :---: | :---: |
| 1 | s1 |
| 2 | s2 |
| 3 | s3 |
| 4 | s4 |

<img src="{{ site.baseurl }}/assets/images/filenaming_schema/1_how_to_name_quarter_track_files.png">

## 2. Two Stereo Recordings

A standard Quarter-Track configuration. Two stereo recordings, each recorded on channels 1,3 and channels 2,4, in opposite directions, as stereo pairs.

<!-- | Channel | Recording | Direction | Filename |
| :---: | :---: | :---: | :---: |
| **1** | **1** | **>** | **s01_f01** |
| 2 | 2 | < | s02_f01 |
| **3** | **1** | **>** | **s01_f01** |
| 4 | 2 | < | s02_f01 | -->

<img src="{{ site.baseurl }}/assets/images/filenaming_schema/2_how_to_name_quarter_track_files.png">

## 3. Multiple Recording Configurations

A mixed configuration of mono and stereo recordings, across all of the four channels.

<!-- | | | | | |
| :---: | :---: | :---: | :---:| :---:|
| 1 | s1_f01 |  |  |  |
|  | > | | | |
| 2 | s2_f03 | | s2_f02 | s02_f01 |
|  | < | | < | < |
| 3 | s3_f01 |  |  | s1_f01 |
|  | > | | | > |
| 4 | s4_f02 | | s2_f02 | s04_f01 |
| | < |  | < | > | -->

<!-- | | | | | |
| :---: | :---: | :---: | :---:| :---:|
| 1 | **> s1_f01 >** | | | |
| 2 | < s2_f03 < | | **< s2_f02 <** | < s02_f01 < |
| 3 | > s3_f01 > |  |  | **> s1_f01 >** |
| 4 | < s4_f02 < | | **< s2_f02 <** | < s04_f01 < | -->


<img src="{{ site.baseurl }}/assets/images/filenaming_schema/3_how_to_name_quarter_track_files.png">

