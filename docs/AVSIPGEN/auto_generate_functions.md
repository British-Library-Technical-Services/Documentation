---
layout: page
title: Auto-Generate Functions
last_modified_date: "2023-08-14"
parent: AV SIP Generator
nav_order: 3
---

# Auto-Generate Functions

Version 5.1 of the AV SIP Generator introduced "one-click" auto-complete functions for generating the Physcial Structure of an item (or items) and when certain conditions are met, the Logical Structure on the Timecodes and Rights page.  See the [changelog](changelog#5184x-2023-04-18) for more details.

## 1. Physical Structure

To automatically generate the Physical Structure: 

1. Select the item Physical Type from the **Select type...** drop-down menu
2. Press the **Auto generate** button

An exisiting structure can be removed by clicking the **Clear structure** button.

<img src="{{ site.baseurl }}/assets/images/auto_generate_functions/1_physical_structure_generate.png">

### Notes
* This functionalty is only compatible with the Library's current filenameing schema.
* Only a single Physical Type can be set.  If a grouped set exists across multiple formats, the first Physical Type should be set and the structure generated, after which each item's Physical Type can be manually edited.


## 2. Logical Structure

The Logical Structure can be automatically generated with maximised timecodes.  This function is only available where the number of files is equal to the number of Parent Recording entries.  The condition is visible when you first load the page and the number of files & Records are listed:

_Recordings with no files:_

_* RECORD 1_

_* RECORD 2_

_Files unused:_

_* FILE 1_

_* FILE 2_

When the conditon is met the auto-generate buttons will become available.  To generate the Logical Structure:

1. Press the **Auto generate** button
2. A pop up will apear showing a table mapping each file to a Record.  This will match the order the files were added to the SIP.
3. To proceed with the mapping select **Yes**

<img src="{{ site.baseurl }}/assets/images/auto_generate_functions/2_logical_structure_generate.png">

If the file order is out of sequence with the Records the **Auto generate (alpha sort files)** can be used to re-sort the files in an alpha-numeric sequence.

The alpha sorting of files is not always desirable as grouped items can often be out of logical order.  Ensure the file and Record mapping matches the group order.

<img src="{{ site.baseurl }}/assets/images/auto_generate_functions/3_logical_structure_generate.png">

An exisiting structure can be removed by clicking the **Clear structure** button.

Unset Time Ranges can be automatically maximised by clicking the **Maximise all unset timecodes**.  All timecodes without existing Ranges will be maximised, exisiting Time Ranges will not be altered.  This function can be used without any condition on the number of files or Records. 

### Notes
* Auto-generate is not available where the number of files is not equal to the number of Records
* Auto-generate is not available where the Records are Child Recordings