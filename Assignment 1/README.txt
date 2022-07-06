CS685A: Data Mining - Assignment 1

This assignment is done by Himanshu Lal - 21111403 - himanshul21@iitk.ac.in

Libraries used: Numpy, Pandas, Json, Math, Datetime
Files are stored in : Jupyter Notebook (.ipynb)


Dataset Use:
1.DISTRICT CASE DATA : https://data.covid19india.org/csv/latest/districts.csv
2.VACCINE DATA : http://data.covid19india.org/csv/latest/cowin_vaccine_data_districtwise
3.CENSUS DATA: http://censusindia.gov.in/pca/DDW_PCA0000_2011_Indiastatedist.xlsx.
4.NEIGHBOUR DATA : neighbor-districts.json

In order to execute the entire assignment, run the command bash assign1.sh

All Question are Linked to other questions in a way i.e., Files generated in Question 5 may be used in other other questions.

Dependency : Question_1.ipynb --> Question_2.ipynb. This means Fisrt execute Question_1 then Question_2 otherwise it will show error files not found.

Dataset Folder has 3 Folder:
1. Input Files : It store all the 4 Input Files (mentioned above).
2. Output Files : It store all the output file generated from question and required as final result of the question (24 Files).
3. Additional Files : It stores all the file which are generated from one question for being used in other question (10 Files).

All jupyter notebooks are well commented for proper understanding of methods used.

Question_1.ipynb:
To execute Question_1.ipynb run command bash neighbor-districts-modified.sh.
Input Files : neighbor-districts.json, districts.csv, cowin_vaccine_data_districtwise.csv
Output Files : neighbor-districts-modified.json
Additional Files created for Future use: change_json.json, state_to_code_dict.json.

Question_2.ipynb
Dependency : Question_1 --> Question_2
To execute Question_2.ipynb run command bash edge-generator.sh.
Input Files : neighbor-districts-modified.json(From Question_1)
Output Files : edge-graph.csv

Question_3.ipynb
Dependency : Question_1 --> Question_3
To execute Question_1.ipynb run command bash case-generator.sh.
Input Files : state_to_code_dict.json(From Question_1), districts.csv
Output Files : cases-week.csv, cases-monthly.csv, cases-overall.csv
Additional Files created for future use : cases-week-overlaped-district.csv, cases-week-overlap-state.csv, cases-month-state.csv,cases-week-overlap-overall.csv, cases-month-overall.csv.

Question_4.ipynb
Dependency : Question_1 --> Question_3 --> Question_4
To execute Question_1.ipynb run command bash peaks-generator.sh.
Input Files : cases-week-overlaped-district.csv, cases-monthly.csv , cases-week-overlap-state.csv, cases-month-state.csv, cases-week-overlap-overall.csv", cases-month-overall.csv (All From Question_3)
Output Files : district-peaks.csv, state-peaks.csv, country-peaks.csv

Question_5.ipynb
To execute Question_1.ipynb run command bash vaccinated-count-generator.sh.
Input Files : cowin_vaccine_data_districtwise.csv
Output Files district-vaccinated-count-week.csv, district-vaccinated-count-month.csv, district-vaccinated-count-overall.csv, state-vaccinated-count-week.csv, state-vaccinated-count-month.csv, state-vaccinated-count-overall.csv.
Additional Files created for future use : mod_cowin_vaccine_data_districtwise.csv.

Question_6.ipynb
Dependency : Question-1 --> Question_5 --> Question_6
To execute Question_1.ipynb run command bash vaccination-population-ratio-generator.sh.
Input Files : mod_cowin_vaccine_data_districtwise.csv(From Question_5), DDW_PCA0000_2011_Indiastatedist.xlsx, change_json.json(From Question_1).
Output Files district-vaccination-population-ratio.csv, state-vaccination-population-ratio.csv, overall-vaccination-population-ratio.csv.
Additional Files created for future use : modified census.csv, uni_dis_vac_cen.csv.

Question_7.ipynb
Dependency : Question_5 --> Question_7
To execute Question_1.ipynb run command bash vaccine-type-ratio-generator.sh.
Input Files : mod_cowin_vaccine_data_districtwise.csv(from Question_5)
Output Files : district-vaccine-type-ratio.csv, state-vaccine-type-ratio.csv, overall-vaccine-type-ratio.csv.

Question_8.ipynb
Dependency : Question-1 --> Question_5 --> Question_6 --> Question_8
To execute Question_1.ipynb run command bash vaccinated-ratio-generator.sh.
Input Files : mod_cowin_vaccine_data_districtwise.csv(from Question_5), modified census.csv(from Question_6), uni_dis_vac_cen.csv(from Question_5).
Output Files : district-vaccinated-dose-ratio.csv, state-vaccinated-dose-ratio.csv, overall-vaccinated-dose-ratio.csv

Question_9.ipynb
Dependency : Question-1 --> Question_5 --> Question_6 --> Question_9
To execute Question_9.ipynb run command bash complete-vaccination-generator.sh.
Input Files : mod_cowin_vaccine_data_districtwise.csv(from Question_5), modified census.csv(from Question_6), uni_dis_vac_cen.csv(from Question_5).
Output Files : state-complete-vaccination.csv


