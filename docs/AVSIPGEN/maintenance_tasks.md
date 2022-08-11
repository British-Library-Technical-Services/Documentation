---
layout: page
title: Maintenance Tasks
last_modified_date: "2022-07-11"
parent: AV SIP Generator
nav_order: 4
permalink: /AVSIPGEN/maintenance_tasks/
---
# Maintenance Tasks

## 1. Abandoned SIPs

Abandoned SIPs are SIPs that have been left incomplete in the AV SIP Generator tool, with no clear intention to be completed.  This definition does not include SIPs that are part of collections awaiting Stage 2 Cataloguing.

The following instructions describe the process of identifying incomplete SIPs and if required, fully deleting them.

### SIP Status
The first step is to scan a range of SIP IDs to identify their current status.  

* Open the [sip_status.py](https://github.com/British-Library-Technical-Services/AV-Scripts/blob/6667c5af1ffcf327fc790e947062e360663f4c37/AVSIPGEN/sip_status.py) Python script in a text editor
* Define the range of SIP IDs you would like to search
* Run the script from the command line interface
* The script will cycle through the defined range of IDs and record all SIPs completed up to Stage 7 (Logical Structure)
* The list will be recorded to a __sip_status.txt__ text file in the following format

| Output Format | Example
|---|---|
| step; sipid; shelfmark | 5;10088;C602/450 |

The Shelf Marks can then be exported and compared against a list of completed collections, to confirm if they are abandoned and can be deleted.

## 2. Archived SIPs
Archived SIPs are SIPs that have been 'deleted' by a user in the Tool using the Remove button.  This function does not actually delete a SIP but removes in from the search index and marks it as Archived in the JSON.

* Open the [sip_archived.py](https://github.com/British-Library-Technical-Services/AV-Scripts/blob/6667c5af1ffcf327fc790e947062e360663f4c37/AVSIPGEN/sip_archived.py) Python script in a text editor
* Define the range of SIP IDs you would like to search
* Run the script from the command line interface
*
*

## 3. Deleting SIPs
The following method describes how to fully delete a SIP.

WARNING: this will fully delete all traces of the SIP and remove any files associated with it, the process cannot be reversed.

* List each SIP ID in __SIPstoDelete.txt__ file
* Run the [sip_delete.py](https://github.com/British-Library-Technical-Services/AV-Scripts/blob/6667c5af1ffcf327fc790e947062e360663f4c37/AVSIPGEN/sip_delete.py) Python script from the command line interface
* The script will run through the list and fully delete the SIPs, including all associated files

_Note the above scripts reuire the __config.py__ file to function_
