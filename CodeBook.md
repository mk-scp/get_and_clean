---
title: "CodeBook"
author: "MK"
date: "2023-05-15"
output: html_document
---

## CourseProject - Human Activity Recognition Using Smartphones Dataset

This CodeBook describes the data contained in two data sets.

### Full Data

The "full data" set is built from the "Human Activity Recognition Using Smartphones Dataset"^[Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012] that contains data from experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz  have been captured. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record it is provided:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 79-feature vector with time and frequency domain variables (Features are normalized and bounded within [-1,1]). 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

Only mean and standard deviation of the measured signals are provided in the feature vector (the original data set contained more measures - 561 features in total). All the data (train/test data, activity and subject labels) have been combined into one data frame. 

The data set contains the following feature columns:

1. tBodyAcc-mean()-X 
2. tBodyAcc-mean()-Y 
3. tBodyAcc-mean()-Z 
4. tBodyAcc-std()-X 
5. tBodyAcc-std()-Y 
6. tBodyAcc-std()-Z 
7. tGravityAcc-mean()-X 
8. tGravityAcc-mean()-Y 
9. tGravityAcc-mean()-Z 
10. tGravityAcc-std()-X 
11. tGravityAcc-std()-Y 
12. tGravityAcc-std()-Z 
13. tBodyAccJerk-mean()-X 
14. tBodyAccJerk-mean()-Y 
15. tBodyAccJerk-mean()-Z 
16. tBodyAccJerk-std()-X 
17. tBodyAccJerk-std()-Y 
18. tBodyAccJerk-std()-Z 
19. tBodyGyro-mean()-X 
20. tBodyGyro-mean()-Y 
21. tBodyGyro-mean()-Z 
22. tBodyGyro-std()-X 
23. tBodyGyro-std()-Y 
24. tBodyGyro-std()-Z 
25. tBodyGyroJerk-mean()-X 
26. tBodyGyroJerk-mean()-Y 
27. tBodyGyroJerk-mean()-Z 
28. tBodyGyroJerk-std()-X 
29. tBodyGyroJerk-std()-Y 
30. tBodyGyroJerk-std()-Z 
31. tBodyAccMag-mean() 
32. tBodyAccMag-std() 
33. tGravityAccMag-mean() 
34. tGravityAccMag-std() 
35. tBodyAccJerkMag-mean() 
36. tBodyAccJerkMag-std() 
37. tBodyGyroMag-mean() 
38. tBodyGyroMag-std() 
39. tBodyGyroJerkMag-mean() 
40. tBodyGyroJerkMag-std() 
41. fBodyAcc-mean()-X 
42. fBodyAcc-mean()-Y 
43. fBodyAcc-mean()-Z 
44. fBodyAcc-std()-X 
45. fBodyAcc-std()-Y 
46. fBodyAcc-std()-Z 
47. fBodyAcc-meanFreq()-X 
48. fBodyAcc-meanFreq()-Y 
49. fBodyAcc-meanFreq()-Z 
50. fBodyAccJerk-mean()-X 
51. fBodyAccJerk-mean()-Y 
52. fBodyAccJerk-mean()-Z 
53. fBodyAccJerk-std()-X 
54. fBodyAccJerk-std()-Y 
55. fBodyAccJerk-std()-Z 
56. fBodyAccJerk-meanFreq()-X 
57. fBodyAccJerk-meanFreq()-Y 
58. fBodyAccJerk-meanFreq()-Z 
59. fBodyGyro-mean()-X 
60. fBodyGyro-mean()-Y 
61. fBodyGyro-mean()-Z 
62. fBodyGyro-std()-X 
63. fBodyGyro-std()-Y 
64. fBodyGyro-std()-Z 
65. fBodyGyro-meanFreq()-X 
66. fBodyGyro-meanFreq()-Y 
67. fBodyGyro-meanFreq()-Z 
68. fBodyAccMag-mean() 
69. fBodyAccMag-std() 
70. fBodyAccMag-meanFreq() 
71. fBodyBodyAccJerkMag-mean() 
72. fBodyBodyAccJerkMag-std() 
73. fBodyBodyAccJerkMag-meanFreq() 
74. fBodyBodyGyroMag-mean() 
75. fBodyBodyGyroMag-std() 
76. fBodyBodyGyroMag-meanFreq() 
77. fBodyBodyGyroJerkMag-mean() 
78. fBodyBodyGyroJerkMag-std() 
79. fBodyBodyGyroJerkMag-meanFreq() 


### Summarized data

The "Summarized data" data set is built from the "Full data" data set described above. It contains the average of each variable for each activity and each subject. Thus, the columns of Summarized data frame are the same as for the fUll data set but contain the average of each feature for each group. 

