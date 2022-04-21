---
layout: page
title: Excel Batch Upload
last_modified_date: "2022-04-14"
parent: AV SIP Generator
nav_order: 2
---

<img src="{{ site.baseurl }}/assets/images/2_choose_file.png">

# Excel Batch Upload

The Excel Batch Upload option in the AV SIP Generator automates the creation of multiple Submission Information Packages (SIP) up to and including Stage 5.

## Excel Spreadsheet

The data used to create the SIPs is taken from the template Excel spreadsheet.
<!--- attach spreadsheet --->

The spreadsheet headings indicate the required data and the stages it is used to populate.

| 1. SAMI Search | 2. Select Source Files || 4. Physical Structure | 5. Process Metadata ||||| Options ||
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---:
| Shelfmark | Filename / Grouping | Directory | Item Type | Date | Reference SIP | Speed | Equalisation Standard | Noise Reduction | Duplicate pSIP | File Naming Schema |

### 1. SAMI Search
#### 1.1. Shelfmark
The item's Shelfmark as it appears on the physical item and the Tracking Database.  For example:

* C433/81
* C797/01/05

**Grouped items** should match the SAMI record. For example:

* C1186/314-C1186/315
* C604/63; C604/588; C604/587

### 2. Select Source files
#### 2.1. Filename / Grouping
If the audio files are created from a single Shelfmark and use the current file naming schema, this row can be left BLANK and the files will automatically be picked-up for processing.

However, if the Shelfmark is a grouped item or does not use the current file naming schema, then the files need to be listed this column, in the order they intend to be added to Stage 4 Physical Structure.

#### 2.2. Directory
Enter the location of the directory the files are stored.  This is limited to the select repositories allowed by the AV SIP Generator, these are listed in the spreadsheet as dropdowns in the spreadsheet row.

The full network address is required - \\\server\drive\directory

### 4. Physical Structure
#### 4.1. Item Type
Set the type of carrier the audio files were transferred from.
* Cylinder
* Disc
* Sheet
* Solid State
* Tape

For the Item Types definitions see [Physical Item Types](/link/)
<!--- write page and set link --->

### 5. Process Metadata
#### 5.1. Date
Manually enter the date the item(s) were transferred or use the dropdown to extract the information from the file's metadata.

#### 5.2. Reference SIP
Enter the ID of the SIP the Process Metadata will be copied from.

For information on how to find a SIP ID, see [How to get a SIP ID](/link/)
<!-- write page and set link --->

#### 5.3. Speed
Select a replay speed from the dropdown list, leave BLANK if it matches the speed in the reference SIP's Process Metadata.

#### 5.4. Equalisation Standard
Select the Equalisation Standard used on the replay device, leave BLANK if it matches the equlaisation in the reference SIP's Process Metadata.

#### 5.5. Noise Reduction
Select the type of Noise Reduction used on the replay device, leave BLANK if it matches the data in the reference SIP's Process Metadata.

### Options
#### Duplicate pSIP
Select **YES** from the dropdown if a SIP already exists under the same Shelmark.  
#### File Naming Schema
Select **FALSE** if the filenames do not conform to the current schema.  If set to FALSE, only basic illegal character checks are made on the filenames and all files are assigned to a single Node and Side in the Physical Structure.  The files also need to be listed in the _Filename / Grouping_ row (see 2.1.).

## Workflow
### 1. New Excel Batch Upload
Log in to the AV SIP Generator.

From the Create New menu on the main page, click the **New Excel Batch Upload >>** button.

![image new excel batch upload](/assets/images/1_new_batch_excel_upload.png)

From the Create New Batch from Excel page, click **Choose File** under the Select Your Excel file heading.

![image choose file](/assets/images/2_choose_file.png)

Navigate to your Excel Batch spreadsheet.
The batch will then be added to the Batch Preprocessing queue.  

![image batches preprocessing](/assets/images/3_batches_preprocessing.png)

Preprocessing validation checks for each row of the batch will begin, click the **View** button to see their progress.

![image preprocessing](/assets/images/4_preprocessing.png)

If the preprocessing completes with no errors the queued batch will turn green and Status set to **Valid**.

If any of the rows fail, the batch will change red and the Status set to **Failed**.  Click the **View** button to see the listed Error(s) for each row.    

After the batch validates successfully, a **Make SIPs** button will appear in the Continue column.  Click this to submit the batch and build the SIPs.

![image make sips](/assets/images/5_make_sips.png)

### 2. My Excel Batch Uploads
To view the progress of the batch, click the **View My Batch Uploads >>** button from the Create New menu on the home page.

This will navigate to the SIP Batches - Excel page where you can view the progress of your batch.

The Status column will list the overall progress of the batch:

* **Awaiting**: batch is queued for processing
* **In progress**: SIPs are in the process of being built
* **Valid**: All SIPs have successfully completed up to and including Stage 5

![image batches processing](/assets/images/6_batches_processing.png)

To see the Status of the individual SIPs in the batch, click the **View >>** button.  On the SIP Batch page you will see each SIP in the batch listed and a traffic light system, indicating the current status of each step.  

![image sips processing](/assets/images/7_sips_processing.png)

A SIP is complete when the Status indicates **Processed**.

![image sips processed](/assets/images/8_sips_processed.png)

The 5 Steps of the SIP can be accessed and amended by clicking on the individual step buttons or picked-up from Stage 5 using the **Resume >>** button.  
