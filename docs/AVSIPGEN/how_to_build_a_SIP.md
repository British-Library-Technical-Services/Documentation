---
layout: page
title: How to Build a SIP
last_modified_date: "2022-08-11"
parent: AV SIP Generator
nav_order: 2
---

# How to Build a SIP

This guide describes the required steps to build a Submission Information Package (SIP) using the British Library's AV SIP Generator.

1. [Step 1: Search SAMI](#step-1-search-sami)
2. [Step 2: Select Source Files](#step-2-select-source-files)
3. [Step 3: File Analysis, Validation, and Transformation](#step-3-file-analysis-validation-and-transformation)
4. [Step 4: Physical Structure](#step-4-physical-structure)
5. [Step 5: Process History](#step-5-process-history)

## Create a new SIP

1. Under the **Create New** menu select **New SIP >>**

<img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/1_new_sip.png">

## Step 1: Search SAMI

Assign the SIP to the Sound and Moving Image (SAMI) catalogue record

1. Enter the item Shelfmark in the search bar

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/2_search_sami.png">

2. Select the SAMI Product Record the SIP will be assigned to

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/3_search_sami.png">

3. The selected SAMI Product will display some basic record information
4. Select **Create pSIP** to assign the SIP to the Record

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/4_search_sami.png">

5. When created, _pSIP created_ will appear in green below the button

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/5_search_sami.png">

6. Once complete, press **Save**
7. To move to the next Step tick the **Step Complete** box and press **Continue >>**

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/save_sc_c.png">

## Step 2: Select Source Files

Add files to the SIP

1. Select the server where the files are located from the **Select source path** drop-down menu
2. Populate the **Navigate to source files directory to add files** dialog with the directory address where the files are stored

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/6_select_source_files.png">

3. Click the **Get directories and files** button to list the files and directories stored in that location

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/7_select_source_files.png">

4. Select the files you would like to upload to the SIP from the file list by clicking the plus (+) icon next to the filename

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/8_select_source_files.png">

5. The selected files will be listed in the **Selected Audio Files:** section

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/9_select_source_files.png">

6. Confirm the files are correct and listed in sequential order
7. Once complete, press **Save**
8. To move to the next Step tick the **Step Complete** box and press **Continue >>**

## Step 3: File Analysis, Validation, and Transformation

Analyse the files for conformity and generate access files.

1. Click the **Copy All Files (Overwrite)** button

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/10_file_analysis.png">

2. The files will be copied from their current location to a hold area 

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/11_file_analysis.png">

3. The files then will go through a series anaylsis and verifcation checks to ensure they are correctly formed

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/12_file_analysis.png">

4. If the verification and analysis checks complete successfully, the files will be passed to transformation servers to create mp4 Access files

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/13_file_analysis.png">

5. After successful transformation the status bar will turn green and state **All Files Transformed**

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/14_file_analysis.png">

6. Once complete, press **Save**
7. To move to the next Step tick the **Step Complete** box and press **Continue >>**

## Step 4: Physical Structure

Build a Physical Structure that accurately defines the relationship between the files and the physical item(s) they were transferred from

_Note: this page has [Auto-Generate Functions](auto_generate_functions#1-physical-structure) available_

1. By default an undefined Physical Type will be in-place

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/15_physical_structure.png">

2. Click the **Select type...** and select the transferred items Physical Type from the drop-down list of options
3. A description of each Physical Type can be found here: [Physical Type](\\link)

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/16_physical_structure.png">

4. After selecting the Physical Type, an object type and side will be created e.g. Tape 1 Side 1

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/17_physical_structure.png">

5. Select the file for that Node and Side from the **Select file...** drop-down

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/18_physical_structure.png">

6. To add another side, click the **Add Side** button
7. To add another physical object, click the **Add Node** button
8. Using the necessary Nodes and Sides, build the complete Physical Structure for all transferred items and their files

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/19_physical_structure.png">

9. Once complete, press **Save**
10. To move to the next Step tick the **Step Complete** box and press **Continue >>**

## Step 5: Process History

Describe the full transfer history of the item(s) including all processing and equipment used

<img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/20_process_metadata.png">

1. In the Worker List, fill in the details of any persons involved in the transfer of the item(s). Additional people can be added to the to the list by clicking the **Add Worker** button

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/21_process_metadata.png">

2. By default there will be an undefined Process Type in the Process History
3. Select the first Process from the **Process Type** drop-down list:

    * Preparation
    * Migration
    * Capture
    * Editing
    * Processing
    * QC

4. Press the **Add Process** button under Process History to add a new process
5. Details on each Process can be found here: [Process Type Definitions](\\link)

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/22_process_metadata.png">

6. Enter the date of the Process in the date box

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/23_process_metadata.png">

7. Add each piece of equipment used in the transfer by selecting the Device Type in Device menu

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/24_process_metadata.png">

8. Populate all the drop-down options to accurately describe the model, make of each device and any replay parameters

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/25_process_metadata.png">

9. Include the serial number for each device, when available

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/26_process_metadata.png">

10. Add all the neccessary Input and Output connections between equipment
11. Ensure the numbered Inputs and Outputs of the equipment match the real world signal chain

    <img src="{{ site.baseurl }}/assets/images/how_to_build_a_sip/27_process_metadata.png">

12. Once the Process History is fully detailed, press **Save**
13. To move to the next Step tick the **Step Complete** box and press **Continue >>**

### Notes:
* A typical Process History will consist of a Migration, Capture and Editing stage
* As a minimum the Process History requires a **Migration** stage
* Common Process History examples can be viewed here: [Example Process History](\\link)



