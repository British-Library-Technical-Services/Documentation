---
layout: page
title: Changelog
last_modified_date: "2023-04-18"
parent: AV SIP Generator
nav_order: 1
---

# Changelog

All major changes and version updates to AV SIP Generator will be listed here.

## 5.1.84x (2023-04-18)

### Added
* **Maintenance Mode**: warn users when testing & deployment is being undertaken.  The option is set via a toggle in the web.config
* **Auto-build the Physical Structure**: select a physical object type (e.g., tape) and click the 'Auto-generate' button to automatically build the complete Physical Structure. The structure and ordering of the files is determined from the Library's filenaming schema.
* **Auto-complete the Logical Structure**: when the number of files is equal to the number of SAMI recordings, the option to 'auto-generate' the Logical Structure will be available, allowing for automatic completion of the Logical Structure. Files can be added to the SAMI records in the order in which they were uploaded to the SIP, or they can be sorted alphabetically. Timecodes for all associated files and records will be maximized.
* **Automatically maximise unset timecodes** in the Logical Structure: timecodes can be automatically maximised in one-click for all SAMI Records where files have been assigned, but no timecode has been set
* **A new 'Insert Process' button** has been added to allow new processes to be inserted into an existing Process History.


### Changed
* Renamed SAMI Recordings page > SAMI Recordings and Logical Structure
* Renamed Logical Structure page > Timecodes and Rights
* Process Metadata page pop-up now only warns users when files with custom metadata will be overwritten upon saving 

### Fixed
* Users are now prevented from adding files with whitespace in the filename to the SIP. This previously caused an error when submitting SIPs for ingest
* Users are now prevented from saving Process Metadata where a Migration process is not present.  This previously caused an error when submitting SIPs for ingest
* Excel Batch Upload: the initial SAMI shelfmark search no longer fails if the SAMI Record returns a large amount of data in the {505} _Content Note_ field. This allows users to use the Batch Excel for collections with a lot of descriptive metadata in the {505} field
* Excel Batch Upload: a Reference SIP with a RIFF date value embedded in it’s Process Metadata no longer overwrites the Date value set in the spreadsheet
* Excel Batch Upload: whitespace in empty spreadsheet cells will no longer fail pre-processing

