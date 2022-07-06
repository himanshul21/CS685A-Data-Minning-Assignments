CS685A: Data Mining - Assignment 2

This assignment is done by Himanshu Lal - 21111403 - himanshul21@iitk.ac.in
 
========================================================================================================================================================================

Libraries used: 
numpy version : 1.20.1, 
pandas version : 1.2.4, 
scipy :  1.6.2,
jupyter 1.0.0

========================================================================================================================================================================

Files are stored in : Jupyter Notebook (.ipynb)

1. Folder-Code : This folder contain all the ipynb file.
2. Folder-Dataset : This folder contain two sub folder 
			1. Input_Dataset : This folder contain all the dataset which are given for the assignment.
			2. Output_Dataset : This folder conatain all the dataset which are generated as a result.
3. Folder-Shell Script : This folder contain all the shell script to run the assignment.


Every Code and Jupyter Notebook is properly commented for better understanding.

========================================================================================================================================================================

To run the complete assignment run "bash assign2.sh"

========================================================================================================================================================================
Question 1 : 

-run "bash percent-india.sh" command to execure question 1
-code file : Question_1.ipynb
-input dataset : DDW-C18-0000.xlsx, DDW_PCA0000_2011_Indiastatedist.xlsx
-Output Dataset: percent-india.csv

-Calculate the exact number of population speaking exactly one, two, and three language using C18 and census dataset
-Then find the percentage of population exactly speaking one, two and three lang for every state and UT.

========================================================================================================================================================================
Question 2 :
 
-run "bash gender-india.sh" command to execure question 2
-code file : Question_2.ipynb
-input dataset : DDW-C18-0000.xlsx, DDW_PCA0000_2011_Indiastatedist.xlsx
-Output Dataset: gender-india-a.csv, gender-india-b.csv, gender-india-c.csv

-Repeated the same process from question 1 but male and female populaiton
-For calculation of p-value I am using stats.ttest_1samp
-Null hypothesis : there is no significant difference between male to female
-Alternate hypothesis : there is significant difference between male to female
-thresold = 0.05
-if pvalue < thresold ==> reject null hypothesis 
-We checked for all state and union teritories and found no state which has pvalue less than 0.05
-all state and union teritories accept the null hypothesis

========================================================================================================================================================================
Question 3 : 

-run "bash geography-india.sh" command to execure question 3 
-code file : Question_3.ipynb
-input dataset : DDW-C18-0000.xlsx, DDW_PCA0000_2011_Indiastatedist.xlsx
-Output Dataset: geography-india-a.csv, geography-india-b.csv, geography-india-c.csv

-Repeated the same process from question 1 but urban and rural populaiton
-For calculation of p-value I am using stats.ttest_1samp
-Null hypothesis : there is no significant difference between urban to rural
-Alternate hypothesis : there is significant difference between urban to rural
-thresold = 0.05
-if pvalue < thresold ==> reject null hypothesis 
-We checked for all state and union teritories and found no state which has pvalue less than 0.05
-all state and union teritories accept the null hypothesis

========================================================================================================================================================================
Question 4 : 

-run "bash 3-to-2-ratio.sh" command to execure question 4a 	and 	run "bash 2-to-1-ratio.sh" command to execure question 4b
-Code for this this question is written in two files Question_1_a.ipynb and Question_4_b.ipynb
-input dataset : DDW-C18-0000.xlsx, DDW_PCA0000_2011_Indiastatedist.xlsx
-Output Dataset: 3-to-2-ratio.csv, 2-to-1-ratio.csv

-Use same process for calculation of percentage of population speaking exactly one, two and three lang.
-In the first part we find the ratio for exactly 3 lang speaking populaiton to exactly 2 lang speaking populaiton.
-In the first part we find the ratio for exactly 2 lang speaking populaiton to exactly 1 lang speaking populaiton.
-Then find the top 3 and worst 3 state for both problem according to their ratio.

========================================================================================================================================================================
Question 5 : 

-run "bash age-india.sh" command to execure question 5
-code file : Question_5.ipynb
-input dataset : DDW-C18-0000.xlsx, DDW-0000C-14.xls-
-Output Dataset: age-india.csv

-First we calculated the population for age groups which are not present in C14 dataset(aggregation).
-Then find the age group for every state and UT which has highest number of population speaking exactly three lang.

========================================================================================================================================================================
Question 6 : 

-run "bash literacy-india.sh" command to execure question 6
-code file : Question_6.ipynb
-input dataset : DDW-C19-0000.xlsx, DDW-0000C-08.xlsx
-Output Dataset: literacy-india.csv

-First we calculated the exact number of population for each literacy group using C08 dataset.
-Then find the literacy group which has highest number of population speaking exactly three lang for every state and UT.

========================================================================================================================================================================
Question 7 : 

-run "bash region-india.sh" command to execure question 7
-code file : Question_7.ipynb
-input dataset : DDW-C17-{0100 - 3500}.XLSX
-Output Dataset: region-india-a.csv, region-india-b.csv

-We merged the 36 dataset into one dataset for ease
-In first part we have calculated the most speaking mother language in all region of India.
-In the second part we have calculated the most speaking(more then one) language in all region of India. 


========================================================================================================================================================================
Question 8 : 

-run "bash age-gender.sh" command to execure question 8
-code file : Question_8.ipynb
-input dataset : DDW-C18-0000.xlsx, DDW-0000C-14.xls
-Output Dataset: age-gender-a.csv, age-gender-b.csv, age-gender-c.csv

-First we calculated the population of male and female for each age groups which are not present in C14 dataset.
-Then find the percentage of population of male and female for each age-group in every state and UT for exactly one, two and three speakking lang.
-Then report the most speaking population of male and female for each age-group for each state and UT. 

========================================================================================================================================================================
Question 9 : 

-run "bash literacy-gender.sh" command to execure question 9
-code file : Question_9.ipynb
-input dataset : DDW-C19-0000.xlsx, DDW-0000C-08.xlsx
-Output Dataset: literacy-gender-a.csv, literacy-gender-b.csv, literacy-gender-c.csv

-First we calculated the exact number of population of male and female for each literacy group using C08 dataset.
-Then find the percentage of population of male and female for each literacy group in every state and UT for exactly one, two and three speakking lang.
-Then find the literacy group which has highest number of population of speaking exactly one, two and three lang for each state and UT seperatly for male and female.

========================================================================================================================================================================
