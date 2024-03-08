---
layout: page
title: File Backup Service
last_modified_date: "2024-03-07"
parent: Transfer Processes
nav_order: 3

---

# File Backup Service

This page outlines the workflow and requirements for backing up audio preservation files and metadata to the department's offline storage solution.

The backup service is written in Python and the code is accessible [here](/link).

1. [Workflow](1-workflow)
2. [Requirements and Data Formatting](#2-requirements-and-data-formatting)
3. [Preprocessing Checks](#3-preprocessing-checks)
4. [Copying Files from Local Drive](#4-copying-files-from-local-drive)
5. [Postprocessing and Backup Storage](#5-postprocessing-and-backup-storage)

## 1. Workflow

Outline of the File Backup Service operations.

<!-- [image] -->
<img src="{{ site.baseurl }}/assets/images/system_settings/9_backupservice_workflow.png">


## 2. Requirements and Data Formatting

The following data is required to run the backup service.

* Audio files
* MD5 Checksum files
* Tracking spreasheet
* Excel Batch SIP spreadsheet

All files need to be saved in a source directory named with the engineer's name (First Surname) and organised in flat structure with no subdirectories.

| Directory | Files |
| :--- | :--- |
| /Engineer Name | 
| | *.wav |
| | *.md5 |
| | EnigneerName_Date_BatchNo_TrackingSpreadsheet.xlsx |
| | EnigneerName__Date_BatchNo_ExcelBatchUpload.xlsx |

The Tracking and Batch SIP spreadsheets are required and all data listed within must match against the audio files in the directory.

The spreadsheets should be named according to the filename template:

| Template | Example |
| :--- | :--- |
| EnigneerName_Date_BatchNo_TrackingSpreadsheet  | CarloKrahmer_240307_1_TrackingSpreadheet |
| EnigneerName_Date_BatchNo_ExcelBatchUpload  | CarloKrahmer_240307_1_ExcelBatchUpload |

The batch number represents the number of total backups made by an engineer and should increment with each new backup.  It does not reset with new collections or date changes.

| Backup Number | Batch Number | Tracking Sheet Filename | Batch SIP filename |
| :--- | :--- | :--- |
| 1 | 1 | CarloKrahmer_240307_1_TrackingSpreadsheet | CarloKrahmer_240307_1_ExcelBatchUpload |
| 2 | 2 | CarloKrahmer_240410_2_TrackingSpreadsheet | CarloKrahmer_240410_2_ExcelBatchUpload |
| 3 | 3 | CarloKrahmer_240503_3_TrackingSpreadsheet | CarloKrahmer_240503_3_ExcelBatchUpload |

As a requirement to complete the backup, the Tracking and Excel Batch SIP spreadsheet batch numbers and the dates should always match.

## 3. Preprocessing Checks
When the service begins, the backup requirements outlined in [2. Requirements and Data Formatting](#2-requirements-and-data-formatting) will be checked and if any of the conditions are not met, the service will reject the backup and exit.

Therefore, ensure all conditions are met before attempting a backup.

## 4. Copying Files from Local Drive

To copy files from your drive to the backup storage

1. Double click on the BackupService executable on the desktop
2. Read the welcome message and ensure all checks are made 
3. Connect your drive as requested and hit Enter to continue
4. Select the source directory and follow the onscreen instructions
5. The data on the attached drive will copy over to the **_staging_area** directory
6. Once the copy has completed and the file checksums verified, you will be asked to eject the drive
7. Eject the drive as requested and hit Enter

## 5. Postprocessing and Backup Storage

Once the intial copy to the staging area is complete and the drive ejected, a series of postprocesses will begin.  You do not need to be present for this and can leave the service to complete without supervision.

1. Existing checksums will be deleted
2. Embedded BWF metadata will be rewritten to the RIFF INFO chunk
3. New checksum files will be generated
4. Access files will be generated and saved to the **_MSO_audio** directory
5. The Tracking spreadsheet will be emailed to the Workflow Support Officer
6. The files will be then be moved from **_staging_area** to **_backup_storage**,
and saved to the Engineer's named directory and a batch-number-date named directory created



