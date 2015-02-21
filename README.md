---
title: "README.md"
author: "Jennifer Mollon"
date: "21 February 2015"
---

All of the analysis carried out for the "Getting and Cleaning Data" project is contained in the single script file "run_analysis.R". This script file reads in the training and test data and label and variable IDs. It labels all activities and names the measured variables, and creates a single merged data frame.

Variables measuring means and standard deviations are extracted, and these are themselves summarised by taking the mean, grouped by subjects and activities. The final, tidy data set contains a mean for every variable, for each subject and activity. This data set is called "tidy_averages.txt". It is a space-delimited file with no row names, and no quotes for text.

A complete code book with the study description and variable descriptions is in CodeBook.md. To view the formatted text and tables in this document, convert it to HTML, for example using R's knitr package.