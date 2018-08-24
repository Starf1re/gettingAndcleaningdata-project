# Code Book for course project: *Getting & Cleaning Data*
The R script *run_analysis.R* and the downloaded data folder *"UCI HAR Dataset"* should be in the same working directory. The R package *reshape2* should also be installed to successfully run this script. The result of this script is located in the tidy_data.txt file that is in this repository.

See the `README.md` file of this repository for background information on this data set.

The structure of the data set is described in the [Data](#data) section, its variables are listed in the [Variables](#variables) section, and the transformations that were carried out to obtain the data set based on the source data are presented in the [Transformations](#transformations) section.

## Data 

The `tidy_data.txt` data file is a text file, containing space-separated values.

The first row contains the names of the variables, which are listed and described in the [Variables](#variables) section, and the following rows contain the values of these variables. 

## Variables 

Each row contains, for a given subject and activity, 79 averaged signal measurements.

### Identifiers 

- subject

	Subject identifier, integer.

- activity

	Activity identifier, string with 6 possible values: 
	- `WALKING`: subject was walking
	- `WALKING_UPSTAIRS`: subject was walking upstairs
	- `WALKING_DOWNSTAIRS`: subject was walking downstairs
	- `SITTING`: subject was sitting
	- `STANDING`: subject was standing
	- `LAYING`: subject was laying

### Measurements

All measurements are floating-point values and are classified in two domains:

- Time-domain signals - all related variables are prefixed by `TimeDomain` - recorded from the raw signals of the Acceleration and gyroscope.

- Frequency-domain signals - all related variables are prefixed by `FrequencyDomain`, this is obtained by applying Fast Fourier Transform to the time-domain signals.
- 
#### Time-domain signals

- Average time-domain body acceleration in the X, Y and Z directions:

    - TimeDomainBodyAcceleration.MeanX                     
    - TimeDomainBodyAcceleration.MeanY                              
    - TimeDomainBodyAcceleration.MeanZ 


- Standard deviation of the time-domain body acceleration in the X, Y and Z directions:

    - TimeDomainBodyAcceleration.StandardDeviationX                 
    - TimeDomainBodyAcceleration.StandardDeviationY                 
    - TimeDomainBodyAcceleration.StandardDeviationZ


- Average time-domain gravity acceleration in the X, Y and Z directions:

    - TimeDomainGravityAcceleration.MeanX                           
    - TimeDomainGravityAcceleration.MeanY                           
    - TimeDomainGravityAcceleration.MeanZ  
    
- Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:

    - TimeDomainGravityAcceleration.StandardDeviationX              
    - TimeDomainGravityAcceleration.StandardDeviationY              
    - TimeDomainGravityAcceleration.StandardDeviationZ 

- Average time-domain body acceleration jerk in the X, Y and Z directions:

    - TimeDomainBodyAccelerationJerk.MeanX                          
    - TimeDomainBodyAccelerationJerk.MeanY                          
    - TimeDomainBodyAccelerationJerk.MeanZ 

- Standard deviation of the time-domain body acceleration jerk in the X, Y and Z directions:

    - TimeDomainBodyAccelerationJerk.StandardDeviationX             
    - TimeDomainBodyAccelerationJerk.StandardDeviationY             
    - TimeDomainBodyAccelerationJerk.StandardDeviationZ       

- Average time-domain body angular velocity in the X, Y and Z directions:

    - TimeDomainBodyGyroscope.MeanX                                  
    - TimeDomainBodyGyroscope.MeanY                                  
    - TimeDomainBodyGyroscope.MeanZ

- Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:

    - TimeDomainBodyGyroscope.StandardDeviationX                     
    - TimeDomainBodyGyroscope.StandardDeviationY                     
    - TimeDomainBodyGyroscope.StandardDeviationZ 

- Average time-domain body angular velocity jerk in the X, Y and Z directions:

    - TimeDomainBodyGyroscopeJerk.MeanX                              
    - TimeDomainBodyGyroscopeJerk.MeanY                              
    - TimeDomainBodyGyroscopeJerk.MeanZ 

- Standard deviation of the time-domain body angular velocity jerk in the X, Y and Z directions:

    - TimeDomainBodyGyroscopeJerk.StandardDeviationX                 
    - TimeDomainBodyGyroscopeJerk.StandardDeviationY                 
    - TimeDomainBodyGyroscopeJerk.StandardDeviationZ 

- Average and standard deviation of the time-domain magnitude of body acceleration:

    - TimeDomainBodyAccelerationMagnitude.Mean                      
    - TimeDomainBodyAccelerationMagnitude.StandardDeviation 

- Average and standard deviation of the time-domain magnitude of gravity acceleration:

    - TimeDomainGravityAccelerationMagnitude.Mean                   
    - TimeDomainGravityAccelerationMagnitude.StandardDeviation   

- Average and standard deviation of the time-domain magnitude of body acceleration jerk:

    - TimeDomainBodyAccelerationJerkMagnitude.Mean                  
    - TimeDomainBodyAccelerationJerkMagnitude.StandardDeviation 

- Average and standard deviation of the time-domain magnitude of body angular velocity:

    - TimeDomainBodyGyroscopeMagnitude.Mean                          
    - TimeDomainBodyGyroscopeMagnitude.StandardDeviation 

- Average and standard deviation of the time-domain magnitude of body angular velocity jerk:

    - TimeDomainBodyGyroscopeJerkMagnitude.Mean                      
    - TimeDomainBodyGyroscopeJerkMagnitude.StandardDeviation  

#### Frequency-domain signals

- Average frequency-domain body acceleration in the X, Y and Z directions:

    - FrequencyDomainBodyAcceleration.MeanX                         
    - FrequencyDomainBodyAcceleration.MeanY                         
    - FrequencyDomainBodyAcceleration.MeanZ 

- Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:

    - FrequencyDomainBodyAcceleration.StandardDeviationX            
    - FrequencyDomainBodyAcceleration.StandardDeviationY            
    - FrequencyDomainBodyAcceleration.StandardDeviationZ 

- Average frequency-domain body acceleration jerk in the X, Y and Z directions:

    - FrequencyDomainBodyAccelerationJerk.StandardDeviationX        
    - FrequencyDomainBodyAccelerationJerk.StandardDeviationY        
    - FrequencyDomainBodyAccelerationJerk.StandardDeviationZ  

- Standard deviation of the frequency-domain body acceleration jerk  in the X, Y and Z directions:

    - FrequencyDomainBodyAccelerationJerk.StandardDeviationX      
    - FrequencyDomainBodyAccelerationJerk.StandardDeviationY        
    - FrequencyDomainBodyAccelerationJerk.StandardDeviationZ

- Average frequency-domain body angular velocity in the X, Y and Z directions:

    - FrequencyDomainBodyGyroscope.MeanX                            
    - FrequencyDomainBodyGyroscope.MeanY                             
    - FrequencyDomainBodyGyroscope.MeanZ                             
    
- Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:

    - FrequencyDomainBodyGyroscope.StandardDeviationX                
    - FrequencyDomainBodyGyroscope.StandardDeviationY                
    - FrequencyDomainBodyGyroscope.StandardDeviationZ                


- Average and standard deviation of the frequency components of the frequency-domain magnitude of body acceleration:

    - FrequencyDomainBodyAccelerationMagnitude.Mean                 
    - FrequencyDomainBodyAccelerationMagnitude.StandardDeviation   


- Average and standard deviation of the frequency components of the frequency-domain magnitude of body acceleration jerk:

    - FrequencyDomainBodyAccelerationJerkMagnitude.Mean           
    - FrequencyDomainBodyAccelerationJerkMagnitude.StandardDeviation

- Average and standard deviation of the frequency components of the frequency-domain magnitude of body angular velocity:

    - FrequencyDomainBodyGyroscopeMagnitude.Mean                 
    - FrequencyDomainBodyGyroscopeMagnitude.StandardDeviation

- Average and standard deviation of the frequency components of the frequency-domain magnitude of body angular velocity jerk :

    - FrequencyDomainBodyGyroscopeJerkMagnitude.Mean            
    - FrequencyDomainBodyGyroscopeJerkMagnitude.StandardDeviation

## Transformations 

The zip file containing the source data is located at [Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The following transformations were applied to the source data in order to achieve the *`tidy_data.txt`*:

1. The training and test sets were merged to create one data set.
2. The measurements on the mean and standard deviation (i.e. all those variables containing the strings `mean` and `std`) were extracted for each measurement, while all the others were discarded in accordance with the project instructions.
3. The activity identifiers that were originally coded as integers between 1 and 6, were replaced with descriptive activity names.
4. The variable names were replaced with descriptive variable names to make them self-explanatory (e.g. `fBodyAcc-mean()-X` was expanded to `FrequencyDomainBodyAcceleration.MeanX`). This was done using the following set of rules:
		- The initial `f` and `t` were expanded to `frequencyDomain` and `timeDomain` respectively.
	-  `Freq`,  `Gyro`, `Mag`, `Acc`, `BodyBody`, `mean`, and `std` were replaced with `Frequency`, `Gyroscope`, `Magnitude`, `Acceleration, `Body` `.Mean`, and `.StandardDeviation` respectively.
	- Special characters (i.e. `(`, `)`, and `-`) were removed.
5. From the data set that was creared in step 4, the final data set was created that contained the average of each variable for each activity and each subject.
6. The data set was then written into `tidy_data.txt`.




   
