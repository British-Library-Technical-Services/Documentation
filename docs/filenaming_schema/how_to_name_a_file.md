---
layout: page
title: How to Name a File
last_modified_date: "2022-02-11"
parent: Filenaming Schema
nav_order: 2
---
# How to Name a File

## Introduction
This filenaming schema is to inform Audio Engineers how to name the files they are creating. It will also help cataloguers, curators and other staff working to locate and identify audio files they are accessing.

### Outline
A filename extends to the separator before the file extension (‘.wav’ for WAVE files).

Filenames for sound files must be comprised of five fields (with an optional sixth of ‘item number’):


| 1 | | 2 | | OPTION | | 3 | | 4 | | 5 |
| :---: | :---: | :---: | :---:| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| Originator | _ | Shelf Mark | _ | Item Number | _ | Side Number | _ | File Number | _ | Version Number |



### Rules
* Fields may not be omitted with exception of ‘item numbers’
* Fields are separated by an underscore ('_')
* No whitespace allowed (' ')
* Do not pad with zeros

### 1. Originator
A record of where the digital file was digitised, typically the institution.

| Description | Example |
| :--- | :--- |
| British Library, London | BL_ |


### 2. Shelf Mark
The shelf mark of the physical item from which the digital file was created.  

Replace any existing separators in your shelf mark (e.g. ‘/’, ‘.’, ‘ ‘, &c.) with a hyphen (‘-‘) as necessary

| Description | Example |
| :--- | :--- |
| C182/4 | BL_C182-4_ |

### 3. Side Number
Record the Side of the physical item from which the file was made.

A Side is defined as a change in a recorded sequence’s direction, relative to the other recorded sequences or the physical action needed to play the other sequences on the tape (i.e. turning a tape over).

For born-digital files use ‘s0’.

| Description | Example |
| :--- | :--- |
| First side of a cassette | BL_C182-4_s1 |
| Second side of a cassette | BL_C182-4_s2 |

### 4. File Number
Record the order of each file in relation to its side.

All files should start at '1'. Files numbered 1-9 should be should preceded with a zero (e.g. 'f01').

| Description | Example |
| :--- | :--- |
| Fourth track from a CD-R | BL_C1298-110_s1_f04 |


### 5. Version Number
Record the version number of the file.

In the vast majority of cases, only one version of a file will be created. In cases where subjective choices have been made (alternate stylus choice, playback speed &c.) requiring multiple files, identify the files using incrementing version numbers, preceded by a ‘v’ character (v2, v3, etc.).

| Description | Example |
| :--- | :--- |
| Second version of the fourth file from the second side of BL item C182/4 | BL_C182-4_s2_f04_v2 |
