# Data-Cleaning-Project

##Data Description

Data Taken from:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

The raw data was obtained from a Samsung Galaxy II worn on the waist of 30 volunteers. A more technical description of the data is located in the codebook.

The raw data was in the form as follows:

activity_labels.txt-Labels of activities (6 X 2)-Activity Labels

features.txt (561 X 2)-List of variables obtained in the study

X_test.txt (2947 X 563)-Test Data

y_test.txt (2947 X 561)-Activity Identifier

subject_test.txt (2947 X1)-Subject Identifier

subject_train.txt (7352 X 1)-Subject Identifier

X_train.txt (7352 X 561)-Train Data

Y_train.txt (7352 X 1)-Activity Indentifier

##Data Cleaning
The data was tidied as follows in the code run_analysis.R:

The data was read in and stored in data frames.

The subject_test, X_test, and y_test were merged to form a 2947 X 563 data frame.

The subject_train, X_train, and y_train were merged to form a 2947 X 563 data frame.

The test and train data were then merged to from a 10299 X 563 data frame.

This combined data frame was then searched for mean and standard deviation variables, which were extracted to form a 10299 X 68 data frame.

Variable names were then changed to be more descripive and readable.

The data was then averaged per subject per activity to form a tidy dataset of 180 X 68 data frame.

The resultant data frame has the subject identifier in the first columne, the activity tested in the second column, and all subsequent columns have the data found in the Codebook.

##Please set working directory to a folder containing all files above.













