### Data Source:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip which can be found at the University of California (Irvine) - Machine learning repository website:
https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Reference, citation, affiliation: 
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory. DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy.
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living. Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws

### Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Attribute Information:

For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment. 

### Feature Selection:
(`features_info.txt`)

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in `'features.txt'`

### Tidy and final data variables (alphabetically ordered, same variables for both files): 
`final_data`, `tidy_data.txt`.

180 observations of 88 variables, taken in 6 different positions in 30 different volunteers as explained above:

1                                            activity   
2   Angle.TimeBodyAccelerometerJerkMean..GravityMean.    
3            Angle.TimeBodyAccelerometerMean.Gravity.    
4        Angle.TimeBodyGyroscopeJerkMean.GravityMean.    
5            Angle.TimeBodyGyroscopeMean.GravityMean.    
6                                Angle.X.GravityMean.    
7                                Angle.Y.GravityMean.    
8                                Angle.Z.GravityMean.    
9                 FrequencyBodyAccelerometer.mean...X    
10                FrequencyBodyAccelerometer.mean...Y    
11                FrequencyBodyAccelerometer.mean...Z    
12            FrequencyBodyAccelerometer.meanFreq...X    
13            FrequencyBodyAccelerometer.meanFreq...Y    
14            FrequencyBodyAccelerometer.meanFreq...Z    
15                 FrequencyBodyAccelerometer.std...X    
16                 FrequencyBodyAccelerometer.std...Y    
17                 FrequencyBodyAccelerometer.std...Z    
18            FrequencyBodyAccelerometerJerk.mean...X    
19            FrequencyBodyAccelerometerJerk.mean...Y    
20            FrequencyBodyAccelerometerJerk.mean...Z    
21        FrequencyBodyAccelerometerJerk.meanFreq...X    
22        FrequencyBodyAccelerometerJerk.meanFreq...Y    
23        FrequencyBodyAccelerometerJerk.meanFreq...Z    
24             FrequencyBodyAccelerometerJerk.std...X    
25             FrequencyBodyAccelerometerJerk.std...Y    
26             FrequencyBodyAccelerometerJerk.std...Z    
27     FrequencyBodyAccelerometerJerkMagnitude.mean..    
28 FrequencyBodyAccelerometerJerkMagnitude.meanFreq..    
29      FrequencyBodyAccelerometerJerkMagnitude.std..    
30         FrequencyBodyAccelerometerMagnitude.mean..    
31     FrequencyBodyAccelerometerMagnitude.meanFreq..    
32          FrequencyBodyAccelerometerMagnitude.std..    
33                    FrequencyBodyGyroscope.mean...X    
34                    FrequencyBodyGyroscope.mean...Y    
35                    FrequencyBodyGyroscope.mean...Z    
36                FrequencyBodyGyroscope.meanFreq...X    
37                FrequencyBodyGyroscope.meanFreq...Y    
38                FrequencyBodyGyroscope.meanFreq...Z    
39                     FrequencyBodyGyroscope.std...X    
40                     FrequencyBodyGyroscope.std...Y    
41                     FrequencyBodyGyroscope.std...Z    
42         FrequencyBodyGyroscopeJerkMagnitude.mean..    
43     FrequencyBodyGyroscopeJerkMagnitude.meanFreq..    
44          FrequencyBodyGyroscopeJerkMagnitude.std..    
45             FrequencyBodyGyroscopeMagnitude.mean..    
46         FrequencyBodyGyroscopeMagnitude.meanFreq..    
47              FrequencyBodyGyroscopeMagnitude.std..    
48                                            subject    
49                     TimeBodyAccelerometer.mean...X    
50                     TimeBodyAccelerometer.mean...Y    
51                     TimeBodyAccelerometer.mean...Z    
52                      TimeBodyAccelerometer.std...X    
53                      TimeBodyAccelerometer.std...Y    
54                      TimeBodyAccelerometer.std...Z    
55                 TimeBodyAccelerometerJerk.mean...X    
56                 TimeBodyAccelerometerJerk.mean...Y    
57                 TimeBodyAccelerometerJerk.mean...Z    
58                  TimeBodyAccelerometerJerk.std...X    
59                  TimeBodyAccelerometerJerk.std...Y    
60                  TimeBodyAccelerometerJerk.std...Z    
61          TimeBodyAccelerometerJerkMagnitude.mean..    
62           TimeBodyAccelerometerJerkMagnitude.std..    
63              TimeBodyAccelerometerMagnitude.mean..    
64               TimeBodyAccelerometerMagnitude.std..    
65                         TimeBodyGyroscope.mean...X    
66                         TimeBodyGyroscope.mean...Y    
67                         TimeBodyGyroscope.mean...Z    
68                          TimeBodyGyroscope.std...X    
69                          TimeBodyGyroscope.std...Y    
70                          TimeBodyGyroscope.std...Z    
71                     TimeBodyGyroscopeJerk.mean...X    
72                     TimeBodyGyroscopeJerk.mean...Y    
73                     TimeBodyGyroscopeJerk.mean...Z    
74                      TimeBodyGyroscopeJerk.std...X    
75                      TimeBodyGyroscopeJerk.std...Y    
76                      TimeBodyGyroscopeJerk.std...Z    
77              TimeBodyGyroscopeJerkMagnitude.mean..    
78               TimeBodyGyroscopeJerkMagnitude.std..    
79                  TimeBodyGyroscopeMagnitude.mean..    
80                   TimeBodyGyroscopeMagnitude.std..    
81                  TimeGravityAccelerometer.mean...X    
82                  TimeGravityAccelerometer.mean...Y    
83                  TimeGravityAccelerometer.mean...Z    
84                   TimeGravityAccelerometer.std...X    
85                   TimeGravityAccelerometer.std...Y    
86                   TimeGravityAccelerometer.std...Z    
87           TimeGravityAccelerometerMagnitude.mean..    
88            TimeGravityAccelerometerMagnitude.std..    
