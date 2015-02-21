
#Code Book
##Author: Jennifer Mollon
##Date: 21 February 2015


###Study Design

The original source data came from activity recognition data captured by smartphone (see description below in section called "Source Data", copied directly from source). Repeated measurements of 561 data points were collected on 30 subjects while performming one of six activities. 

The tidy data set created for this project is called "tidy_averages.txt." The data consists of a subject ID (first column), activity name (second column), and the means grouped by subject and activity for all variables that are means or standard deviations in the source data set. Please see table below for details of all variables in the tidy data set. There are no units given for the measurement data, as these are standardised data so units cancel out.

This data set was created by reading in original source data and transformming as follows:

1. Read in test data - subject IDs, X data (predictors - all measurements taken during activity) and Y data (number indicating activity type).
2. Repeat step 1 for all training data.
3. Read in meta-data - feature (measurement) names and activity names
4. Use 561 feature labels to name the 561 columns of x data, for training and test data
5. Convert Y data (test and training) to factor and use activity names as labels
6. Merge all test data together by columns
7. Merge all training data together by columns
8. Merge test and training data together by rows
9. Extract all measurements that contain 'mean' or 'std' in the name (ignoring case)
10. Calculate averages for each subject for each activity, for all activities in the data created in step 9
11. Write this data out to file, excluding row names and supressing quotes for text



###Source Data

Description of original source data (taken from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones):

PLEASE NOTE - this is copied directly from source (website given above)

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

PLEASE NOTE - this is the end of the section quoted from the website.


###Code Book

<TABLE>
<TH>column_number  </TH>
<TH>variable_name</TH>
<TH>variable_class  </TH>
<TH>variable_description</TH>
<TR>
<TD>1</TD>
<TD>subject</TD>
<TD>integer</TD>
<TD>Unique subject identifier</TD>
<TR>
<TD>2</TD>
<TD>activity</TD>
<TD>factor w/6 levels</TD>
<TD>Name of activity</TD>
<TR>
<TD>3</TD>
<TD>tBodyAcc.mean...X</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>4</TD>
<TD>tBodyAcc.mean...Y</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>5</TD>
<TD>tBodyAcc.mean...Z</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>6</TD>
<TD>tGravityAcc.mean...X</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>7</TD>
<TD>tGravityAcc.mean...Y</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>8</TD>
<TD>tGravityAcc.mean...Z</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>9</TD>
<TD>tBodyAccJerk.mean...X</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>10</TD>
<TD>tBodyAccJerk.mean...Y</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>11</TD>
<TD>tBodyAccJerk.mean...Z</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>12</TD>
<TD>tBodyGyro.mean...X</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>13</TD>
<TD>tBodyGyro.mean...Y</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>14</TD>
<TD>tBodyGyro.mean...Z</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>15</TD>
<TD>tBodyGyroJerk.mean...X</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>16</TD>
<TD>tBodyGyroJerk.mean...Y</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>17</TD>
<TD>tBodyGyroJerk.mean...Z</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>18</TD>
<TD>tBodyAccMag.mean..</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>19</TD>
<TD>tGravityAccMag.mean..</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>20</TD>
<TD>tBodyAccJerkMag.mean..</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>21</TD>
<TD>tBodyGyroMag.mean..</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>22</TD>
<TD>tBodyGyroJerkMag.mean..</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>23</TD>
<TD>fBodyAcc.mean...X</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>24</TD>
<TD>fBodyAcc.mean...Y</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>25</TD>
<TD>fBodyAcc.mean...Z</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>26</TD>
<TD>fBodyAcc.meanFreq...X</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>27</TD>
<TD>fBodyAcc.meanFreq...Y</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>28</TD>
<TD>fBodyAcc.meanFreq...Z</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>29</TD>
<TD>fBodyAccJerk.mean...X</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>30</TD>
<TD>fBodyAccJerk.mean...Y</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>31</TD>
<TD>fBodyAccJerk.mean...Z</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>32</TD>
<TD>fBodyAccJerk.meanFreq...X</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>33</TD>
<TD>fBodyAccJerk.meanFreq...Y</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>34</TD>
<TD>fBodyAccJerk.meanFreq...Z</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>35</TD>
<TD>fBodyGyro.mean...X</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>36</TD>
<TD>fBodyGyro.mean...Y</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>37</TD>
<TD>fBodyGyro.mean...Z</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>38</TD>
<TD>fBodyGyro.meanFreq...X</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>39</TD>
<TD>fBodyGyro.meanFreq...Y</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>40</TD>
<TD>fBodyGyro.meanFreq...Z</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>41</TD>
<TD>fBodyAccMag.mean..</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>42</TD>
<TD>fBodyAccMag.meanFreq..</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>43</TD>
<TD>fBodyBodyAccJerkMag.mean..</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>44</TD>
<TD>fBodyBodyAccJerkMag.meanFreq..</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>45</TD>
<TD>fBodyBodyGyroMag.mean..</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>46</TD>
<TD>fBodyBodyGyroMag.meanFreq..</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>47</TD>
<TD>fBodyBodyGyroJerkMag.mean..</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>48</TD>
<TD>fBodyBodyGyroJerkMag.meanFreq..</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>49</TD>
<TD>angle.tBodyAccMean.gravity.</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>50</TD>
<TD>angle.tBodyAccJerkMean..gravityMean.</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>51</TD>
<TD>angle.tBodyGyroMean.gravityMean.</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>52</TD>
<TD>angle.tBodyGyroJerkMean.gravityMean.</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>53</TD>
<TD>angle.X.gravityMean.</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>54</TD>
<TD>angle.Y.gravityMean.  </TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>55</TD>
<TD>angle.Z.gravityMean.  </TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>56</TD>
<TD>tBodyAcc.std...X</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>57</TD>
<TD>tBodyAcc.std...Y</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>58</TD>
<TD>tBodyAcc.std...Z</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>59</TD>
<TD>tGravityAcc.std...X</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>60</TD>
<TD>tGravityAcc.std...Y</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>61</TD>
<TD>tGravityAcc.std...Z</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>62</TD>
<TD>tBodyAccJerk.std...X</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>63</TD>
<TD>tBodyAccJerk.std...Y</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>64</TD>
<TD>tBodyAccJerk.std...Z</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>65</TD>
<TD>tBodyGyro.std...X</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>66</TD>
<TD>tBodyGyro.std...Y</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>67</TD>
<TD>tBodyGyro.std...Z</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>68</TD>
<TD>tBodyGyroJerk.std...X</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>69</TD>
<TD>tBodyGyroJerk.std...Y</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>70</TD>
<TD>tBodyGyroJerk.std...Z</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>71</TD>
<TD>tBodyAccMag.std..</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>72</TD>
<TD>tGravityAccMag.std..</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>73</TD>
<TD>tBodyAccJerkMag.std..</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>74</TD>
<TD>tBodyGyroMag.std..</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>75</TD>
<TD>tBodyGyroJerkMag.std..</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>76</TD>
<TD>fBodyAcc.std...X</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>77</TD>
<TD>fBodyAcc.std...Y</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>78</TD>
<TD>fBodyAcc.std...Z</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>79</TD>
<TD>fBodyAccJerk.std...X</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>80</TD>
<TD>fBodyAccJerk.std...Y</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>81</TD>
<TD>fBodyAccJerk.std...Z</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>82</TD>
<TD>fBodyGyro.std...X</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>83</TD>
<TD>fBodyGyro.std...Y</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>84</TD>
<TD>fBodyGyro.std...Z</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>85</TD>
<TD>fBodyAccMag.std..</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>86</TD>
<TD>fBodyBodyAccJerkMag.std..</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>87</TD>
<TD>fBodyBodyGyroMag.std..</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
<TD>88</TD>
<TD>fBodyBodyGyroJerkMag.std..</TD>
<TD>numeric</TD>
<TD>measurement</TD>
<TR>
</TABLE>











