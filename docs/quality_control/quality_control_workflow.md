---
layout: page
title: Quality Control Workflow
last_modified_date: "2022-03-09"
parent: Quality Control
nav_order: 2
#permalink: /transfer/cassette/
---

# Audio Quality Control

Quality Control (QC) is the final stage of the digitisation workflow.

An engineer will assess a percentage of their colleagues transfer work to ensure all necessary standards are met.  The work is completed by assessing the quality of the technical transfer and the accompanying metadata.

The following checks should be made:

## Digital File
* Filename is correct and adheres to the Library's schema
* Correct metadata is stored in the file's RIFF Header
* One second of silence before the start of the signal modulation
* One second of silence at the end of the signal modulation
* Signal does not peak at 0dB (analogue source)
* There are no sample drop outs visible via the spectrum view
* Blank audio channels have been removed

## Transfer
* The content matches the original item
* Replay speed is correct
* The azimuth is correctly aligned
* Replay parameters (such as Noise Reduction / de-emphasis) are applied where appropriate

## pSIP
* Stages 1-5 are complete
* Correct files are uploaded
Physical Strucuture
  * Each Shelfmark and Item are attahced to a Node
  * Each Side is attched to its numbered Side
  * Each File is attched to the corresponding Side
* Process History
  * Engineer's details are correct
  * A Migration Process is present
  * All relevant Processes are present and in order (Preparation, Migration, Capture, Editing)
  * All transfer equipment is listed and attached to the relevant Process
  * All equipment replay parameters are correct (Speed, Equalisation etc.)
  * Serials numbers are listed and correct
  * The Input-Outputs between equipment are correct across the signal chain

## Tracking Database
Once the files, content and pSIP are checked the Tracking Database should be updated to reflect the QC status, the following fields need completing:

* QC Date: DD/MM/YY
* QC Status: Pass, Fail, Not Required
* QC Enigineer: Name
* QC Notes: Any relevant notes



Quality checking can either be done at 100% so that every item is checked or a random sampling throughout a collection at a rate low enough to catch a significant number issue but not so high in that it eats into time available for transfer. At the British Library, QC is at 10%, with the sampling of items weighted towards the beginning of a collection (the idea being that more mistakes will be apparent at the beginning of a new collection). For collections that require a greatly different transfer process than what the engineer is used to (for example switching from oral history to wild life reels), it’s recommended to QC at a much higher rate (say 50%) until the engineer
