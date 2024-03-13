---
layout: page
title: Timecoding Ranges
last_modified_date: "2023-03-13"
parent: Metadata
nav_order: 1
---

# Timcoding Ranges
This page outlines the software and processes for defining audio timecode ranges as part of Stage 2 Cataloguing.

Timecode ranges are required to be recorded in [SMPTE25](https://en.wikipedia.org/wiki/SMPTE_timecode) so they are interoparable with the [AV SIP Generator](https://british-library-technical-services.github.io/Documentation/docs/AVSIPGEN/#av-sip-generator).

1. [Reaper](#1-reaper)
* [1.1. Timecode Settings](#11-timecode-settings)
* [1.2. Import Audio](#12-import-audio)
* [1.3. Regions](#13-regions)
* [1.4 Export Timecodes](#14-export-time-ranges)

## 1. Reaper
[Cockos Reaper](https://www.reaper.fm) is an affordable, fully-featured DAW that runs natively on Windows, Mac and Linux. 

### 1.1. Timecode Settings
To set the project timecode to SMPTE25:

* In the main project window, right-click on the Timeline at the top

<img src="{{ site.baseurl }}/assets/images/timecoding/1_default_timeline.png">

* Select **Hours:Minutes:Seconds:Frames** from the drop-down menu

<img src="{{ site.baseurl }}/assets/images/timecoding/2_hr-min-sec-frame.png">

* Open **File > Project settings...** from the top menu bar
* Select the Video tab
* Set **Frame** to **25**
* Click **Save as default project settings** to retain the SMPTE timecode or future sessions

<img src="{{ site.baseurl }}/assets/images/timecoding/3_frame.png">

### 1.2. Import Audio

* Select **Insert > Media file...** from the top menu bar (shortcut: INSERT)
* In the dialog window that opens, navigate to a directory and select the file(s) for import
* Click Open to import the file

<img src="{{ site.baseurl }}/assets/images/timecoding/4_insert_file.png">

_Note - files can also be dragged & dropped directly onto the project timeline_

### 1.3. Regions

#### 1.3.1. Region/Marker Manager
The Region/Marker Manager allows you to view and edit the list of created time ranges, as well as export the list to a csv file.

**Important Note** _the timecode ranges created in Reaper are attached to the project timecode and not the audio file (as with Wavelab).  Ensure the audio file is aligned at 00:00:00:00 on the Timeline before creating any time ranges.  Press the HOME key before importing any files as this will zero the cursor position_

* To open the Region/Manager Manager window, select **View > Region/Marker Manger** from the top menu bar.  

<img src="{{ site.baseurl }}/assets/images/timecoding/5_open_region_manager.png">

#### 1.3.2. Selecting Timecode Ranges

* To create a time range, click and drag the two anchor points on the Timeline to highlight a selected range

<img src="{{ site.baseurl }}/assets/images/timecoding/6_select_range.png">

* Right-click the Timeline and select **Create region from selection** (shortcut: SHIFT + R)
* A new numbered Region will be created above the Timeline

<img src="{{ site.baseurl }}/assets/images/timecoding/7_create_region.png">

* The created time range will also appear in the Region/Marker list where it can be named and edited

<img src="{{ site.baseurl }}/assets/images/timecoding/8_region_marker_list.png">

### 1.4. Export Time Ranges

Timecode ranges can be exported to a csv file.  To export the the created regions:

* Open the Region/Marker Manager
* Click the **Options** button
* Select **Export regions/markers...** in the menu
* A dialog will open, name the csv file and select a save location
