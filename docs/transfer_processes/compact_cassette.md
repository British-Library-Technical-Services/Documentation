---
layout: page
title: Compact Cassette
last_modified_date: "2024-11-15"
parent: Transfer Processes
nav_order: 2

---

# Compact Cassette

This page provides an overview of the workflow for transferring analogue Compact Cassette.

1. [Calibration and Alignment](#1-calibration-and-Alignment)
* [1.1. Equipment](#11-equipment)
* [1.2. Alignment Measurements](#12-alignment-measurements)
* [1.3. Cassette Calibration Tape](#13-cassette-calibration-tape)

## 1. Calibration and Alignment
This is a reference guide for calibrating Compact Cassette replay equipment.  Routine calibration and alignment of cassette decks ensures optimal playback performance. 

Engineers should calibrate their machines:
* Once a week during operation
* When a new deck is installed
* At the start of a preservation project

### 1.1. Equipment List

* Tascam 122 MK3 with adjustable azimuth
* Azimuth screwdriver
* Prism Titan ADC
* _Cassette Calibration Tape_
* Phase Scope
* PPM Level Meter

### 1.2. Alignment Measurements

Play the calibration cassette in the chosen machine and align to the target levels:

| Measurement | Frequency | Nominal Level | Target Level | Measurement Tool |
| :-- | :-- | :-- | :-- |
| Azimuth | 3.15kHz | 0dBu | Phase convergence at 0° | Phase scope |
| Level | 400Hz | 0dBu | -20dBFS | PPM meter |
| Level | 1kHz | 0dBu | -20dBFS | PPM meter |
| HF Response | 10kHz | -10dBu | -30dBFS | PPM meter |
| HF Response | 15kHz | -20dBu | -40dBFS | PPM meter |

_Note - If calibration values cannot be achieved, refer to Sound and Audiovisual Electronics Engineer._

### 1.3. Cassette Calibration Tape
For reference, the full list of line up tones and their time markers on the calibration cassette (also printed on the front of the case):

| Time | Freq | Nom. Level | Actual L | Actual R | Meter L | Meter R |
| :-- | :-- | :-- | :-- | :-- | :-- | :-- |
| 00:00:00 | 3.15kHz | 0dBu | 0dBu | 1.5dBu | 0dBu | 1.5dBu |
| 00:07:30 | 400Hz | 0dBu | 0.7dBu | 0.7dBu | 1.0dB | 1.0dB |
| 00:15:00 | 1kHz | 0dBu | 1.0dBu | 1.0dBu | 1.0dB | 1.0dB |
| 00:22:30 | 10kHz | -10dBu | -10.5dBu | -10.5dBu | -10dBu | -10dBu |
| 00:30:00 | 12kHz | -12dBu | -12dBu | -12dBu | -12dB | -12dB |
| 00:37:30 | 15kHz | -20dBu | -19dBu | -19dBu | -20dB | -20dB |
| 00:45:00 | End | | | | | |

