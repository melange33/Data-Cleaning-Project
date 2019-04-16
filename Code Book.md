#Codebook
=================


##Data Description
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data [1]. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

##There are two types of signals in this data:

##1. Time Body Signals
The features selected for this database come from the accelerometer and gyroscope 3-axial raw (Time Body) signals. 
These time domain signals were captured at a constant rate of 50 Hz.
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm [1].

##2. Frequency Body Signals
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing Frequency Body signals [1].

The standard deviation and mean for each signal were obtained. These data were averaged per subject per activity to produce the final data.

Abbreviations and Variable meanings:

SubjectID-Identifier of the subject (i.e. 1,2,...)

Activity-activity performed when taking measurements (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

Time_Body-Time body signals obtained by above

Freq_Body-Frequency body signals obttained by above

Acceleration-Signals obtained from the accelerometer

Gravity_Acceleration-Gravity Acceleration measured by the accelerometer

Jerk-Linear acceleration and angular velocity measurement

Mag-Magnitude of signal using Euclidean norm

mean-Mean value

std-Standard deviation

X-Measurement in the x-axis

Y-Measurement in the y-axis

Z-Measurement in the z-axis

XYZ-Measurement in all three axis (magnitude)


##The complete list of 66 variables is shown below.

SubjectID
Activity 
Time_Body_Acceleration_mean_X
Time_Body_Acceleration_mean_Y
Time_Body_Acceleration_mean_Z
Time_Body_Acceleration_std_X
Time_Body_Acceleration_std_Y
Time_Body_Acceleration_std_Z
Time_Gravity_Acceleration_mean_X
Time_Gravity_Acceleration_mean_Y
Time_Gravity_Acceleration_mean_Z
Time_Gravity_Acceleration_std_X
Time_Gravity_Acceleration_std_Y
Time_Gravity_Acceleration_std_Z
Time_Body_Acceleration_Jerk_mean_X
Time_Body_Acceleration_Jerk_mean_Y
Time_Body_Acceleration_Jerk_mean_Z
Time_Body_Acceleration_Jerk_std_X
Time_Body_Acceleration_Jerk_std_Y
Time_Body_Acceleration_Jerk_std_Z
Time_Body_Gyro_mean_X
Time_Body_Gyro_mean_Y
Time_Body_Gyro_mean_Z
Time_Body_Gyro_std_X
Time_Body_Gyro_std_Y
Time_Body_Gyro_std_Z
Time_Body_Gyro_Jerk_mean_X
Time_Body_Gyro_Jerk_mean_Y
Time_Body_Gyro_Jerk_mean_Z
Time_Body_Gyro_Jerk_std_X
Time_Body_Gyro_Jerk_std_Y
Time_Body_Gyro_Jerk_std_Z
Time_Body_Acceleration_Mag_mean
Time_Body_Acceleration_Mag_std
Time_Gravity_Acceleration_Mag_mean
Time_Gravity_Acceleration_Mag_std
Time_Body_Acceleration_Jerk_Mag_mean
Time_Body_Acceleration_Jerk_Mag_std
Time_Body_Gyro_Mag_mean
Time_Body_Gyro_Mag_std
Time_Body_Gyro_Jerk_Mag_mean
Time_Body_Gyro_Jerk_Mag_std
Freq_Body_Acceleration_mean_X
Freq_Body_Acceleration_mean_Y
Freq_Body_Acceleration_mean_Z
Freq_Body_Acceleration_std_X
Freq_Body_Acceleration_std_Y
Freq_Body_Acceleration_std_Z
Freq_Body_Acceleration_Jerk_mean_X
Freq_Body_Acceleration_Jerk_mean_Y
Freq_Body_Acceleration_Jerk_mean_Z
Freq_Body_Acceleration_Jerk_std_X
Freq_Body_Acceleration_Jerk_std_Y
Freq_Body_Acceleration_Jerk_std_Z
Freq_Body_Gyro_mean_X
Freq_Body_Gyro_mean_Y
Freq_Body_Gyro_mean_Z
Freq_Body_Gyro_std_X
Freq_Body_Gyro_std_Y
Freq_Body_Gyro_std_Z
Freq_Body_Acceleration_Mag_mean
Freq_Body_Acceleration_Mag_std
Freq_Body_Acceleration_Jerk_Mag_mean
Freq_Body_Acceleration_Jerk_Mag_std
Freq_Body_Gyro_Mag_mean
Freq_Body_Gyro_Mag_std
Freq_Body_Gyro_Jerk_Mag_mean
Freq_Body_Gyro_Jerk_Mag_std


##[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
