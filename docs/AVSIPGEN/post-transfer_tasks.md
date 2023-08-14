---
layout: page
title: Post-Transfer Tasks
last_modified_date: "2022-08-11"
parent: AV SIP Generator
nav_order: 5
---

<!---
1. file select page
2. check path
3. deselect files
4. rename files
5. delete old checksums
6. file select page
7. reselect files
8. analysis, transcode
9. recreate physical structure
10. save, step complete, continue
--->

# Post-Transfer Tasks

## 1. How to Swap Sides

In certain circumstances it will be necessary to change the existing Physical Structure in a SIP.  The following guide outlines the steps to download, rename, re-add and reassign the files in the Physical Structure.

Before making any changes **download backup copies** of the WAV files from the Summary Page in case you need to revert back to the original files.  Details on downloading files from the AV SIP Generator can be found at [Downloading Files](downloading_files.md)

1. Search the item Shelfmark in the **Pickup SIP** search box

    <img src="{{ site.baseurl }}/assets/images/post-transfer_tasks/1_swap_sides/1_pickup_sip.png">

2. Click on the Stage 2 **Select Files** button

    <img src="{{ site.baseurl }}/assets/images/post-transfer_tasks/1_swap_sides/2_select_files.png">

3. This will take you to the Select Source Files page, where you can view all the files attached to the SIP

    <img src="{{ site.baseurl }}/assets/images/post-transfer_tasks/1_swap_sides/3_select_files.png">

4. Take note of the source \\server\directory as this is the location the files will be returned to. To remove the files from the SIP, click the minus (-) symbol next to each file listed under the Selected Audio Files section. 

    <img src="{{ site.baseurl }}/assets/images/post-transfer_tasks/1_swap_sides/4_deselect_files.png">

    _Note: if the source directory has since been deleted an error will appear stating the location no longer exists.  To overcome this, recreate the original directory structure on the server so the files can be moved back to their source location_


5. After deselecting the files, click **Save** to record the change

    <img src="{{ site.baseurl }}/assets/images/post-transfer_tasks/1_swap_sides/5_deselect_files.png">

6. Leave the SIP tool and use Windows File Explorer to navigate to the source directory where the files are now stored
7. Delete the .md5 file checksums
8. Rename the files to match the new ordering. For example s1_f01_v1 => s2_f01_v1

    <img src="{{ site.baseurl }}/assets/images/post-transfer_tasks/1_swap_sides/6_file_rename.png">

    _Details on the Library's file naming schema for audio files can be found at [How to Name a File](../filenaming_schema/how_to_name_a_file.md)_

9. Return to the Select Source Files page and click **Get directories and files**. _Note: the source path to the files should be saved from the original selection_

    <img src="{{ site.baseurl }}/assets/images/post-transfer_tasks/1_swap_sides/7_get_files.png">

10. A file list will appear, select the files to re-attach to the SIP by pressing the plus (+) symbol next to each one
11. The selected files will be listed below in the Selected Audio Files section

    <img src="{{ site.baseurl }}/assets/images/post-transfer_tasks/1_swap_sides/8_file_list.png">

11. Once complete, press **Save**
12. To move to the next Step tick the **Step Complete** box and press **Continue >>**

    <img src="{{ site.baseurl }}/assets/images/post-transfer_tasks/1_swap_sides/save_sc_c.png">

13. This will take you to Step 4: File Analysis, Validation, and Transformation
14. Click the **Copy All Files (Overwrite)** button

    <img src="{{ site.baseurl }}/assets/images/post-transfer_tasks/1_swap_sides/9_file_analysis.png">

15. The files will be copied from their source location to the hold area for analysis

    <img src="{{ site.baseurl }}/assets/images/post-transfer_tasks/1_swap_sides/10_file_analysis.png">

16. After successful verification the files will be passed to the transformation servers

    <img src="{{ site.baseurl }}/assets/images/post-transfer_tasks/1_swap_sides/11_file_transformation.png">

17. Once all processing is complete, press **Save**
18. To move to the next Step tick the **Step Complete** box and press **Continue >>**
19. This will take you to Step 5: Physical Structure, where the existing, empty Physical Structure will be visible

    <img src="{{ site.baseurl }}/assets/images/post-transfer_tasks/1_swap_sides/12_physical_structure.png">

21. Click on **Select file...** drop-down list and assign the renamed files to their respective Node(s) and Sides

    <img src="{{ site.baseurl }}/assets/images/post-transfer_tasks/1_swap_sides/13_physical_structure.png">

22. Once complete, press **Save**
23. To move to the next Step tick the **Step Complete** box and press **Continue >>**

    <img src="{{ site.baseurl }}/assets/images/post-transfer_tasks/1_swap_sides/save_sc_c.png">

24. Press **Step Complete** and **Continue** on all subsequent Steps, this will re-save the existing data in each Step, without altering it
