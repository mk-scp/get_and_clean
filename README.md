---
title: "README"
author: "MK"
date: "2023-05-15"
output: html_document
---
This repository contains two R-files to perform the necessary steps to create the two clean data sets "full_data.csv and "summarized_data.csv":

	- run_analysis.R
	- course_project_functions.R

course_project_functions.R contains functions that are called from run_analysis.R. 

The read_data function performs the reading and preprocessing steps. The data is cleaned from additional spaces, the data is read line by line and a data frame is created. In addition, the feature/variable names are loaded from the features.txt file. 

In a next step, all the data frames are combined in one data frame and then only columns containing mean or standard deviations of the measured signals are kept. The labels names are merged into the data frame to obtain the correct name of the activities in the data frame as well as the subject identifiers.

The full_data.csv is written to csv after these steps.

For summarized_data.csv the data frame is grouped by the subject and activity column and the average of each feature column is inclueded for each group.

Finally, the grouped data frame is written to csv. 