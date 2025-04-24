---
layout: page
title: Compact Disc
last_modified_date: "2025-04-23"
parent: Transfer Processes
nav_order: 3
# page compiled from information supplied by Gosha Shtasel
---
# Compact Disc

This guide describes the required steps to transfer an Audio CD using [dBpoweramp CD Ripper](https://www.dbpoweramp.com/cd-ripper.htm)

[1.Identification](#1-identification)

[2. Disc Assessment](#2-disc-assessment)
* [2.1. Label Side](#21-label-side)
* [2.2. Reflective Side](#22-reflective-side)

[3. Choose the Drive](#3-choose-the-drive)
* [3.1. C2 Error Detection Support](#31-c2-error-detection-support)

## 1. Identification

<!-- Add definitions for 
* Audio CD 
* CD-R
-->

## 2. Disc Assessment

It can be difficult to assess the CD condition before ripping. While some of the issues (such as scratches or marks) might be visible, the issues related to material deterioration over time can more difficult to spot. A pressed Audio CD is expected to be more durable than CD-Rs (especially off-brand) and damage to the label side can also have a significant impact on the data layer.

<!-- add a note of the quality/condition of the writing device -->

### 2.1. Label Side  

The physical condition of a disc will heavily impact an optical drive’s ability to accurately extract data from it. So it is important that any preparation work does not potentially compromise the disc – if there is no shelfmark or labling on the disc’s surface, do not stick labels to or write on the surface of a disc, as the glue/ink can affect the chemical stability of the carrier and a poorly affixed label will also cause imbalances and affect a drive’s ability to read the data accurately.

If a disc already has a label affixed to the surface, then it should not be removed as any remedial action on the label side has the potential to damage the disc further.  

### 2.2. Reflective Side 

The reflective side of the disc should be cleaned of any stains or marks (finger prints etc.) using a microfiber cloth - wiping the disc’s surface radially, from the centre to outer edge. Avoid wiping around the disc in a circular motion, as this follows the data track and is likely to damage a contiguous number of bits (resulting in a large number of errors), if something gets under the cloth.  

<!-- If the disc fails ripping securely and there are visible surface defects, the disc’s surface can be polished down using the VMI Hybrid. -->

## 3. Optical Disc Drive

CD error detection and correction takes place inside the CD drive. Some drives are able to report uncorrectable errors (known as C2 errors) to CD ripping software. This way the integrity of the data can be verified. Therefore, it is necessary to use a CD drive that supports this feature.  

### 3.1. C2 Error Detection Support

To confirm the drive you are using is able to detect C2 errors, draw a triangle with a black permanent marker pen onto the reflective side of a sacrificial, non-collection item CD.  

<!-- add step-by-step instructions for the C2 detection test
Place this CD in the drive 

File > settings etc. 

Click “Detect C2 Support” 

The software will run a test rip and abort the rip when a C2 error is detected to confirm compatibility. 

-->

### 3.2. Consider CD drive accuracy  

The reliability of the disc transfer will largely depend on the CD drive used. The accuracy of the drive is usually not published and is very difficult to measure. Moreover, drive accuracy will likely deteriorate with heavy use. In addition, some drives might perform better with specific media. Thus, it is good practice to use two or more different CD drives for ripping.  

For reference - dBpoweramp publishes anonymous drive accuracy data collected from [AccurateRip](https://forum.dBpoweramp.com/showthread.php?48320-CD-Drive-Accuracy-2022).

## 4. Setup dBpoweramp profiles 

 dBpoweramp allows to define multiple settings profiles and switch between them. We recommend creating 3 different profiles.  

Use a “Secure rip” profile whenever possible and switch to the “Insecure rip” and “Burst mode” profiles when transferring damaged discs.  

### 4.1. Secure rip  

<!-- list the step of what a secure rip does

* Abort if C2 error encountered
* logs corrected errors

-->

This profile will confirm the disc has been ripped error free. It will produce a log confirming that no C2 errors were detected. The rip process will be aborted if an uncorrectable C2 error is detected.  

<!-- step-by-step guide to creating the profile, along with images 

* File > menu etc. 

-->

### 4.2. Insecure rip  

<!--
* skip over uncorrectable errors and log them 
* interpolates uncorrectable errors 
* logs errors 

-->

This profile will attempt to interpolate uncorrectable C2 errors and will produce a detailed log of the errors encountered. As this process might be lengthy, insecure profile limits the rip time to 3 minutes per track.  

### 4.3. Burst mode  

<!--
* interpolates 
* one pass 

-->

If both secure and insecure rips have failed, the burst ripping method might be the only option to recover the audio.  

## 4. Disable online metadata retreival  

dBpoweramp uses online databases such as Discogs, MusicBrainz and others in order to source metadata for commercial CD releases. While this could sometimes be a very useful feature, the process would slow down the ripping process and embed metadata in ways that are not supported by British Library. Therefore it is recommended to turn this feature off. 1. Go to Menu → Retreive Metadata From and untick all metadata sources 2. Go to Menu → Active Providers and untick all metadata sources 5. Use dynamic Filenaming dBpoweramp supports Dynamic Filenaming. For example: When ripping CD with call number C56/128: 1. Set Artist to 56 2. Set Album to 128 3. Set Filename to BL_C[artist]-[album]_s1_f[track]_v1 6. Ripping workflow 6.1 Insert CD 6.2 Set secure profile, Rip to Wave format, Ripping path and Dynamic filename 6.3 Press RIP to start the process 6.4 If the system encounters errors and the ripping process is aborted change the profile to Insecure and start again 6.5 If the ripping process fails again change the profile to Boost and start again 